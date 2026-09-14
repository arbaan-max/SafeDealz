import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/data/services/evidence_capture_adapter.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({
    super.key,
    required this.deviceId,
    required this.purpose,
    this.adapter,
  });
  final String deviceId;
  final String purpose;
  final EvidenceCaptureAdapter? adapter;

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  String? _error;
  bool _busy = false;
  bool _captured = false;

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
      if (!mounted) return;
      setState(() {
        _captured = true;
        _busy = false;
      });
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
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppTheme.selected,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(widget.purpose.contains('rotation') ? Icons.videocam_outlined : Icons.photo_camera_outlined, size: 36, color: AppTheme.skyBlue),
                  const SizedBox(height: 12),
                  Text(widget.purpose, style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 8),
                  const Text('Position the device inside the camera view.', textAlign: TextAlign.center, style: TextStyle(color: AppTheme.muted)),
                  const SizedBox(height: 8),
                  const Text('SIMULATED CAMERA / CLIENT DEMO', style: TextStyle(fontSize: 11, color: AppTheme.muted)),
                  if (_captured) ...[
                    const SizedBox(height: 12),
                    const Text('Preview ready'),
                  ],
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          if (_error != null)
            Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          const SdNotice('This demo simulates a live capture. No camera or file upload is required.'),
          FilledButton(
            onPressed: _busy ? null : _capture,
            child: Text(_captured ? 'Retake' : 'Capture'),
          ),
        ],
      ),
    );
  }
}
