import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/data/services/diagnostic_qr_scan_adapter.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';

class DiagnosticScanPage extends StatefulWidget {
  const DiagnosticScanPage({super.key, required this.deviceId, this.adapter});
  final String deviceId;
  final DiagnosticQrScanAdapter? adapter;

  @override
  State<DiagnosticScanPage> createState() => _DiagnosticScanPageState();
}

class _DiagnosticScanPageState extends State<DiagnosticScanPage> {
  String? _error;
  bool _busy = false;
  bool _imported = false;

  Future<void> _scan() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final adapter = widget.adapter ?? context.read<DiagnosticQrScanAdapter>();
      final devices = context.read<DeviceRepository>();
      final scanned = await adapter.scan();
      if (scanned == null) {
        if (!mounted) return;
        setState(() => _busy = false);
        return;
      }
      await devices.importDiagnostic(
        widget.deviceId,
        scanned.payload,
        scanned.signature,
      );
      if (!mounted) return;
      setState(() {
        _imported = true;
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
      title: 'Scan diagnostic result',
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Scan the completed Diagnostics QR. This screen does not launch Diagnostics.'),
            if (_error != null) ...[
              const SizedBox(height: 12),
              Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
            ],
            if (_imported) ...[
              const SizedBox(height: 12),
              const Text('Imported'),
            ],
            const Spacer(),
            FilledButton(
              onPressed: _busy ? null : _scan,
              child: const Text('Scan completed result QR'),
            ),
            if (_imported)
              TextButton(
                onPressed: () => context.goNamed(
                  reviewRoute,
                  pathParameters: {'id': widget.deviceId},
                ),
                child: const Text('Back to review'),
              ),
          ],
        ),
      ),
    );
  }
}
