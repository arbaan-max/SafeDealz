import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/data/services/diagnostic_qr_scan_adapter.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';

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
      showBell: false,
      onBack: () => context.goNamed(reviewRoute, pathParameters: {'id': widget.deviceId}),
      actionBar: FilledButton(
        onPressed: _busy
            ? null
            : _imported
                ? () => context.goNamed(reviewRoute, pathParameters: {'id': widget.deviceId})
                : _scan,
        child: Text(_imported ? 'Start auction' : 'Scan completed result QR'),
      ),
      body: ListView(
        children: [
          const SdSteps(current: 6),
          Text(_imported ? 'Diagnostics received' : 'Scan diagnostic result', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 8),
          Text(
            _imported
                ? 'The independent Diagnostics report is ready for review.'
                : 'After testing finishes on the traded Android phone, scan the completed result QR shown in the Diagnostics app.',
            style: const TextStyle(color: AppTheme.muted),
          ),
          const SizedBox(height: 20),
          if (_error != null)
            Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          if (_imported) ...[
            const SdNotice('Report imported. Both IMEIs and the signed diagnostic data match this device.'),
            const Text('Imported'),
          ] else ...[
            Container(
              height: 220,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: AppTheme.selected, borderRadius: BorderRadius.circular(20)),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.qr_code_scanner, size: 36, color: AppTheme.skyBlue),
                  SizedBox(height: 12),
                  Text('Point at the Diagnostics QR', style: TextStyle(fontWeight: FontWeight.w800)),
                  SizedBox(height: 8),
                  Text('RESULT QR SCANNER / DEMO', style: TextStyle(fontSize: 11, color: AppTheme.muted)),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const SdNotice('A successful scan imports the diagnostic report. The manual M04 inspection remains unchanged.'),
            const Text('Scan the completed Diagnostics QR. This screen does not launch Diagnostics.'),
          ],
        ],
      ),
    );
  }
}
