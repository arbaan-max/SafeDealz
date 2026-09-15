import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/data/services/evidence_capture_adapter.dart';
import 'package:safedealz_store_manager/data/services/local_evidence_store.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/media_preview.dart';
import 'package:safedealz_store_manager/view/widgets/sd_icons.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({
    super.key,
    required this.deviceId,
    required this.purpose,
    this.adapter,
    this.autoStart = false,
  });
  final String deviceId;
  final String purpose;
  final EvidenceCaptureAdapter? adapter;
  final bool autoStart;

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  static const _store = LocalEvidenceStore();
  String? _error;
  bool _busy = false;
  bool _captured = false;
  String? _filePath;

  bool get _video => widget.purpose.contains('rotation');

  @override
  void initState() {
    super.initState();
    if (widget.autoStart) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && !_captured && !_busy) _capture();
      });
    }
  }

  Future<void> _capture() async {
    final adapter = widget.adapter ?? context.read<EvidenceCaptureAdapter>();
    final repo = context.read<DeviceRepository>();
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final evidence = await adapter.capture(widget.purpose);
      await repo.uploadEvidence(widget.deviceId, evidence);
      if (evidence.filePath != null) {
        final saved = await _store.save(widget.deviceId, widget.purpose, evidence.filePath!);
        _filePath = saved.path;
      }
      if (!mounted) return;
      setState(() {
        _captured = true;
        _busy = false;
      });
    } on EvidenceCaptureCancelled {
      if (!mounted) return;
      setState(() => _busy = false);
    } on EvidencePermissionDenied {
      if (!mounted) return;
      setState(() {
        _error = 'Camera permission denied.';
        _busy = false;
      });
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _error = apiErrorMessage(error);
        _busy = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Camera and preview',
      showBell: false,
      onBack: () => GoRouter.maybeOf(context)?.goNamed(
        evidenceRoute,
        pathParameters: {'id': widget.deviceId},
      ),
      actionBar: FilledButton(
        onPressed: _captured
            ? () => GoRouter.maybeOf(context)?.goNamed(
                  evidenceRoute,
                  pathParameters: {'id': widget.deviceId},
                )
            : null,
        child: const Text('Use capture'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: DecoratedBox(
                decoration: const BoxDecoration(color: AppTheme.selected),
                child: _filePath != null
                    ? LocalMediaView(path: _filePath!, video: _video)
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(_video ? SdIcons.video : SdIcons.camera, size: 36, color: AppTheme.skyBlue),
                          const SizedBox(height: 12),
                          Text(widget.purpose, style: Theme.of(context).textTheme.titleLarge),
                          const SizedBox(height: 8),
                          const Text('Position the device inside the camera view.', textAlign: TextAlign.center, style: TextStyle(color: AppTheme.muted)),
                          if (_captured) ...[
                            const SizedBox(height: 12),
                            const Text('Preview ready'),
                          ],
                        ],
                      ),
              ),
            ),
          ),
          if (_filePath != null && _captured) ...[
            const SizedBox(height: 12),
            const Text('Preview ready', textAlign: TextAlign.center),
          ],
          const SizedBox(height: 16),
          if (_error != null)
            Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          FilledButton(
            onPressed: _busy ? null : _capture,
            child: Text(_captured ? 'Retake' : 'Capture'),
          ),
        ],
      ),
    );
  }
}
