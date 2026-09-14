import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/catalog.dart';
import 'package:safedealz_store_manager/data/api/models/deal.dart';
import 'package:safedealz_store_manager/data/api/models/deal_status.dart';
import 'package:safedealz_store_manager/data/api/models/deal_verify_write.dart';
import 'package:safedealz_store_manager/data/api/models/purchased_device.dart';
import 'package:safedealz_store_manager/data/api/models/purchased_device_platform.dart';
import 'package:safedealz_store_manager/data/repositories/catalog_repository.dart';
import 'package:safedealz_store_manager/data/repositories/deal_repository.dart';
import 'package:safedealz_store_manager/data/services/imei_scan_adapter.dart';
import 'package:safedealz_store_manager/data/services/kyc_capture_adapter.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';

class CustomerVerificationPage extends StatefulWidget {
  const CustomerVerificationPage({
    super.key,
    required this.dealId,
    this.scanAdapter,
    this.captureAdapter,
  });
  final String dealId;
  final ImeiScanAdapter? scanAdapter;
  final KycCaptureAdapter? captureAdapter;

  @override
  State<CustomerVerificationPage> createState() => _CustomerVerificationPageState();
}

class _CustomerVerificationPageState extends State<CustomerVerificationPage> {
  final _name = TextEditingController();
  final _phone = TextEditingController();
  final _otp = TextEditingController();
  final _model = TextEditingController();
  final _imei1 = TextEditingController();
  final _imei2 = TextEditingController();
  PurchasedDevicePlatform _platform = PurchasedDevicePlatform.apple;
  String? _storage;
  String? _ram;
  Catalog? _catalog;
  Deal? _deal;
  bool _idCaptured = false;
  bool _portraitCaptured = false;
  bool _otpSent = false;
  bool _loading = true;
  bool _busy = false;
  String? _error;
  String? _done;

  ImeiScanAdapter get _scan => widget.scanAdapter ?? const DemoPurchasedImeiScanAdapter();
  KycCaptureAdapter get _capture => widget.captureAdapter ?? const DemoKycCaptureAdapter();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final deals = context.read<DealRepository>();
      final catalogs = context.read<CatalogRepository>();
      try {
        final deal = await deals.getDeal(widget.dealId);
        final catalog = await catalogs.load();
        if (!mounted) return;
        setState(() {
          _deal = deal;
          _catalog = catalog;
          _loading = false;
        });
      } catch (error) {
        if (!mounted) return;
        setState(() {
          _error = apiErrorMessage(error);
          _loading = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _name.dispose();
    _phone.dispose();
    _otp.dispose();
    _model.dispose();
    _imei1.dispose();
    _imei2.dispose();
    super.dispose();
  }

  Future<void> _sendOtp() async {
    try {
      await context.read<DealRepository>().sendOtp(widget.dealId);
      if (mounted) setState(() => _otpSent = true);
    } catch (error) {
      if (mounted) setState(() => _error = apiErrorMessage(error));
    }
  }

  Future<void> _submit() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final deal = await context.read<DealRepository>().verify(
            widget.dealId,
            DealVerifyWrite(
              customerName: _name.text.trim(),
              customerPhone: _phone.text.trim(),
              otp: _otp.text.trim(),
              idCaptured: _idCaptured,
              portraitCaptured: _portraitCaptured,
              purchasedDevice: PurchasedDevice(
                platform: _platform,
                model: _model.text.trim(),
                storage: _storage,
                ram: _platform == PurchasedDevicePlatform.android ? _ram : null,
                imei1: _imei1.text.trim(),
                imei2: _imei2.text.trim(),
              ),
            ),
          );
      if (!mounted) return;
      context.goNamed(paymentStatusRoute, pathParameters: {'id': deal.id});
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _busy = false;
        _error = apiErrorMessage(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final storages = _catalog?.storages ?? const <String>[];
    final rams = _catalog?.rams ?? const <String>[];
    final verified = _deal?.status == DealStatus.verified;
    return AppPageScaffold(
      title: 'Customer verification',
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (_done != null) Text(_done!),
                TextField(controller: _name, decoration: const InputDecoration(labelText: 'Customer name')),
                TextField(
                  controller: _phone,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(labelText: 'Phone'),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(controller: _otp, decoration: const InputDecoration(labelText: 'OTP')),
                    ),
                    TextButton(onPressed: _sendOtp, child: Text(_otpSent ? 'Resend OTP' : 'Send OTP')),
                  ],
                ),
                TextButton(
                  onPressed: () async {
                    final ok = await _capture.captureId();
                    if (mounted) setState(() => _idCaptured = ok);
                  },
                  child: Text(_idCaptured ? 'ID captured' : 'Capture ID'),
                ),
                TextButton(
                  onPressed: () async {
                    final ok = await _capture.capturePortrait();
                    if (mounted) setState(() => _portraitCaptured = ok);
                  },
                  child: Text(_portraitCaptured ? 'Portrait captured' : 'Capture portrait'),
                ),
                const SizedBox(height: 12),
                const Text('Purchased device'),
                SegmentedButton<PurchasedDevicePlatform>(
                  segments: const [
                    ButtonSegment(value: PurchasedDevicePlatform.apple, label: Text('Apple')),
                    ButtonSegment(value: PurchasedDevicePlatform.android, label: Text('Android')),
                  ],
                  selected: {_platform},
                  onSelectionChanged: (value) => setState(() {
                    _platform = value.first;
                    if (_platform == PurchasedDevicePlatform.apple) _ram = null;
                  }),
                ),
                TextField(controller: _model, decoration: const InputDecoration(labelText: 'Model')),
                DropdownButtonFormField<String>(
                  initialValue: storages.contains(_storage) ? _storage : null,
                  decoration: const InputDecoration(labelText: 'Storage'),
                  items: [
                    for (final value in storages) DropdownMenuItem(value: value, child: Text(value)),
                  ],
                  onChanged: (value) => setState(() => _storage = value),
                ),
                if (_platform == PurchasedDevicePlatform.android)
                  DropdownButtonFormField<String>(
                    initialValue: rams.contains(_ram) ? _ram : null,
                    decoration: const InputDecoration(labelText: 'RAM'),
                    items: [
                      for (final value in rams) DropdownMenuItem(value: value, child: Text(value)),
                    ],
                    onChanged: (value) => setState(() => _ram = value),
                  ),
                TextField(controller: _imei1, decoration: const InputDecoration(labelText: 'IMEI 1')),
                TextField(controller: _imei2, decoration: const InputDecoration(labelText: 'IMEI 2')),
                TextButton(
                  onPressed: () async {
                    final scanned = await _scan.scan();
                    if (scanned == null || !mounted) return;
                    setState(() {
                      _imei1.text = scanned.imei1;
                      _imei2.text = scanned.imei2;
                    });
                  },
                  child: const Text('Scan IMEIs'),
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: _busy || verified ? null : _submit,
                  child: Text(verified ? 'Verified' : _busy ? 'Submitting…' : 'Complete verification'),
                ),
              ],
            ),
    );
  }
}
