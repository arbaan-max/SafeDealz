import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/api/models/device.dart';
import 'package:safedealz_store_manager/data/api/models/catalog.dart';
import 'package:safedealz_store_manager/data/inspection_catalog.dart';
import 'package:safedealz_store_manager/data/repositories/catalog_repository.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/data/services/evidence_capture_adapter.dart';
import 'package:safedealz_store_manager/data/services/local_evidence_store.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';
import 'package:safedealz_store_manager/view/widgets/media_preview.dart';
import 'package:safedealz_store_manager/view/widgets/sd_icons.dart';

class EvidencePage extends StatefulWidget {
  const EvidencePage({super.key, required this.deviceId});
  final String deviceId;

  @override
  State<EvidencePage> createState() => _EvidencePageState();
}

class _EvidencePageState extends State<EvidencePage> {
  static const _store = LocalEvidenceStore();
  Device? _device;
  Catalog? _catalog;
  String? _error;
  bool _loading = true;
  bool _saving = false;
  String? _busyPurpose;
  final Set<String> _cleared = {};
  Map<String, File> _local = const {};

  Set<String> get _ready {
    final purposes = <String>{
      for (final item in _device?.media ?? const [])
        if (item.purpose != null) item.purpose!,
      ..._local.keys,
    };
    purposes.removeAll(_cleared);
    return purposes;
  }

  bool get _needsBill =>
      _device?.inspection?.billRequired == true ||
      ((_device?.inspection?.answers?['deviceAge'] ??
              _catalog?.billAgeExemptOption ??
              '11 months or older') !=
          (_catalog?.billAgeExemptOption ?? '11 months or older'));

  List<(String, String)> get _slots => [
        for (final slot in _catalog?.evidence ?? const [])
          if (slot.billOnly != true || _needsBill) (slot.purpose, slot.label),
      ];

  bool get _allReady => _slots.every((slot) => _ready.contains(slot.$1));

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    final catalogs = context.read<CatalogRepository>();
    final devices = context.read<DeviceRepository>();
    try {
      final catalog = await catalogs.load();
      final device = await devices.getDevice(widget.deviceId);
      final local = await _store.list(widget.deviceId);
      if (!mounted) return;
      setState(() {
        _catalog = catalog;
        _device = device;
        _local = local;
        _loading = false;
      });
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _error = apiErrorMessage(error);
        _loading = false;
      });
    }
  }

  Future<void> _capture(String purpose) async {
    final adapter = context.read<EvidenceCaptureAdapter>();
    final repo = context.read<DeviceRepository>();
    setState(() {
      _busyPurpose = purpose;
      _error = null;
    });
    try {
      final evidence = await adapter.capture(purpose);
      await repo.uploadEvidence(widget.deviceId, evidence);
      if (evidence.filePath != null) {
        await _store.save(widget.deviceId, purpose, evidence.filePath!);
      }
      _cleared.remove(purpose);
      await _load();
    } on EvidenceCaptureCancelled {
      if (!mounted) return;
    } on EvidencePermissionDenied {
      if (!mounted) return;
      setState(() => _error = 'Camera permission denied.');
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = apiErrorMessage(error));
    } finally {
      if (mounted) setState(() => _busyPurpose = null);
    }
  }

  Future<void> _clear(String purpose) async {
    await _store.delete(widget.deviceId, purpose);
    if (!mounted) return;
    setState(() {
      _cleared.add(purpose);
      _local = Map.of(_local)..remove(purpose);
    });
  }

  Future<void> _openSlot(String purpose) async {
    if (_busyPurpose != null) return;
    if (_ready.contains(purpose)) {
      await _preview(purpose);
      return;
    }
    await _capture(purpose);
  }

  Future<void> _preview(String purpose) async {
    final path = _local[purpose]?.path;
    final video = purpose == 'rotation';
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppTheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(video ? 'Video preview' : 'Photo preview', style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: SizedBox(
                    height: 280,
                    child: path == null
                        ? ColoredBox(
                            color: AppTheme.selected,
                            child: Center(child: Icon(video ? SdIcons.video : SdIcons.camera, color: AppTheme.skyBlue, size: 36)),
                          )
                        : LocalMediaView(path: path, video: video),
                  ),
                ),
                const SizedBox(height: 16),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                    _clear(purpose);
                  },
                  icon: const Icon(SdIcons.trash),
                  label: const Text('Clear'),
                ),
                const SizedBox(height: 8),
                FilledButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                    _capture(purpose);
                  },
                  icon: Icon(video ? SdIcons.video : SdIcons.camera),
                  label: const Text('Capture again'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _finish() async {
    if (!_allReady) {
      setState(() => _error = 'Capture every required photo and the rotation video before continuing.');
      return;
    }
    setState(() => _saving = true);
    try {
      await context.read<DeviceRepository>().saveInspection(
            widget.deviceId,
            Map.of(_device?.inspection?.answers ?? {}),
            complete: true,
          );
      if (!mounted) return;
      GoRouter.maybeOf(context)?.goNamed(
        reviewRoute,
        pathParameters: {'id': widget.deviceId},
      );
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _error = apiErrorMessage(error);
        _saving = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final rotation = _slots.where((slot) => slot.$1 == 'rotation').toList();
    final photos = _slots.where((slot) => slot.$1 != 'rotation').toList();
    final total = _catalog == null ? 9 : tradeInFormTotalSteps(_catalog!);
    return AppPageScaffold(
      title: 'Capture device',
      showBell: false,
      onBack: () => GoRouter.maybeOf(context)?.goNamed(
        inspectionRoute,
        pathParameters: {'id': widget.deviceId},
      ),
      actionBar: FilledButton(
        onPressed: _saving || !_allReady ? null : _finish,
        child: const Text('Continue'),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                SdFlowProgress(
                  current: _catalog == null ? total : tradeInEvidenceStep(_catalog!),
                  total: total,
                  label: 'Capture device',
                ),
                Row(
                  children: [
                    Expanded(child: Text('Capture the device', style: Theme.of(context).textTheme.titleLarge)),
                    SdStatusBadge('${_ready.length}/${_slots.length} ready', tone: 'green'),
                  ],
                ),
                const SizedBox(height: 8),
                const Text('One rotation video and one photo per angle. Tap an empty slot to open the camera.', style: TextStyle(color: AppTheme.muted)),
                const SizedBox(height: 16),
                if (_error != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                  ),
                for (final slot in rotation)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: _CaptureTile(
                      label: slot.$2,
                      ready: _ready.contains(slot.$1),
                      busy: _busyPurpose == slot.$1,
                      video: true,
                      wide: true,
                      path: _local[slot.$1]?.path,
                      onTap: () => _openSlot(slot.$1),
                      onClear: _ready.contains(slot.$1) ? () => _clear(slot.$1) : null,
                    ),
                  ),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.92,
                  children: [
                    for (final slot in photos)
                      _CaptureTile(
                        label: slot.$2,
                        ready: _ready.contains(slot.$1),
                        busy: _busyPurpose == slot.$1,
                        video: false,
                        wide: false,
                        path: _local[slot.$1]?.path,
                        onTap: () => _openSlot(slot.$1),
                        onClear: _ready.contains(slot.$1) ? () => _clear(slot.$1) : null,
                      ),
                  ],
                ),
                const SizedBox(height: 12),
                const SdNotice('Use the camera on your phone. No gallery uploads. Front photo should show the screen on if it works.'),
              ],
            ),
    );
  }
}

class _CaptureTile extends StatelessWidget {
  const _CaptureTile({
    required this.label,
    required this.ready,
    required this.busy,
    required this.video,
    required this.wide,
    required this.onTap,
    this.path,
    this.onClear,
  });
  final String label;
  final bool ready;
  final bool busy;
  final bool video;
  final bool wide;
  final String? path;
  final VoidCallback onTap;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: busy ? null : onTap,
        borderRadius: BorderRadius.circular(16),
        child: Ink(
          height: wide ? 140 : null,
          decoration: BoxDecoration(
            color: ready ? const Color(0xFFEAF7EF) : AppTheme.surface,
            border: Border.all(color: ready ? const Color(0xFF86EFAC) : AppTheme.border),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: path != null
                      ? LocalMediaView(path: path!, video: video)
                      : Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(video ? SdIcons.video : SdIcons.camera, color: AppTheme.skyBlue),
                              const Spacer(),
                              Text(label, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 13)),
                              Text(
                                busy ? 'Opening camera…' : (ready ? 'Captured' : 'Tap to capture'),
                                style: const TextStyle(fontSize: 11, color: AppTheme.muted),
                              ),
                            ],
                          ),
                        ),
                ),
              ),
              if (path != null)
                Positioned(
                  left: 10,
                  right: 10,
                  bottom: 10,
                  child: Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      shadows: [Shadow(color: Color(0x88000000), blurRadius: 8)],
                    ),
                  ),
                ),
              if (busy)
                const Positioned.fill(
                  child: ColoredBox(
                    color: Color(0x66FFFFFF),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ),
              if (onClear != null)
                Positioned(
                  top: 4,
                  right: 4,
                  child: IconButton(
                    tooltip: 'Clear',
                    onPressed: onClear,
                    icon: const Icon(SdIcons.close, size: 18),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
