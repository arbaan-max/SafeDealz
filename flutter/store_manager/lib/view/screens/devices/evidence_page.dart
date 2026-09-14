import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/device.dart';
import 'package:safedealz_store_manager/data/api/models/catalog.dart';
import 'package:safedealz_store_manager/data/repositories/catalog_repository.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';

class EvidencePage extends StatefulWidget {
  const EvidencePage({super.key, required this.deviceId});
  final String deviceId;

  @override
  State<EvidencePage> createState() => _EvidencePageState();
}

class _EvidencePageState extends State<EvidencePage> {
  Device? _device;
  Catalog? _catalog;
  String? _error;
  bool _loading = true;
  bool _saving = false;

  Set<String> get _ready => {
        for (final item in _device?.media ?? const [])
          if (item.purpose != null) item.purpose!,
      };

  bool get _needsBill =>
      _device?.inspection?.billRequired == true ||
      ((_device?.inspection?.answers?['deviceAge'] ??
              _catalog?.billAgeExemptOption ??
              '11 months or older') !=
          (_catalog?.billAgeExemptOption ?? '11 months or older'));

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
      if (!mounted) return;
      setState(() {
        _catalog = catalog;
        _device = device;
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

  Future<void> _finish() async {
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
    final slots = [
      for (final slot in _catalog?.evidence ?? const [])
        if (slot.billOnly != true || _needsBill) (slot.purpose, slot.label),
    ];
    return AppPageScaffold(
      title: 'Capture device',
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                for (final slot in slots)
                  ListTile(
                    title: Text(slot.$2),
                    subtitle: Text(_ready.contains(slot.$1) ? 'Captured' : 'Tap to capture'),
                    trailing: Text(_ready.contains(slot.$1) ? 'Retake' : 'Capture'),
                    onTap: () => GoRouter.maybeOf(context)?.goNamed(
                      cameraRoute,
                      pathParameters: {'id': widget.deviceId, 'purpose': slot.$1},
                    ),
                  ),
                const SizedBox(height: 24),
                FilledButton(
                  onPressed: _saving ? null : _finish,
                  child: const Text('Continue'),
                ),
              ],
            ),
    );
  }
}
