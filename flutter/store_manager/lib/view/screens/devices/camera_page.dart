import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/data/services/evidence_capture_adapter.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';

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
      title: 'Camera',
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Capture ${widget.purpose}'),
            const SizedBox(height: 16),
            if (_error != null)
              Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
            if (_captured) const Text('Preview ready'),
            const Spacer(),
            FilledButton(
              onPressed: _busy ? null : _capture,
              child: Text(_captured ? 'Retake' : 'Capture'),
            ),
            TextButton(
              onPressed: () => GoRouter.maybeOf(context)?.goNamed(
                evidenceRoute,
                pathParameters: {'id': widget.deviceId},
              ),
              child: const Text('Use capture'),
            ),
          ],
        ),
      ),
    );
  }
}
