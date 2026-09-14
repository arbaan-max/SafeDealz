import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/device.dart';
import 'package:safedealz_store_manager/data/api/models/device_platform.dart';
import 'package:safedealz_store_manager/data/repositories/auction_repository.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key, required this.deviceId});
  final String deviceId;

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  Device? _device;
  String? _error;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    try {
      final device = await context.read<DeviceRepository>().getDevice(widget.deviceId);
      if (!mounted) return;
      setState(() {
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

  Future<void> _startAuction() async {
    try {
      final round = await context.read<AuctionRepository>().startAuction(widget.deviceId);
      if (!mounted) return;
      context.goNamed(liveAuctionRoute, pathParameters: {'id': round.id});
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = apiErrorMessage(error));
    }
  }

  String _mask(String imei) => imei.length < 4 ? imei : '•••••••••••${imei.substring(imei.length - 4)}';

  @override
  Widget build(BuildContext context) {
    final device = _device;
    final apple = device?.platform == DevicePlatform.apple;
    final imported = device?.status == 'ready_for_auction';
    final needsDiagnostic = device != null && !apple && !imported;
    return AppPageScaffold(
      title: 'Device summary',
      showBell: false,
      actionBar: device == null
          ? null
          : apple
              ? FilledButton(
                  onPressed: imported ? _startAuction : null,
                  child: const Text('Review and start auction'),
                )
              : !imported
                  ? FilledButton(
                      onPressed: () => context.goNamed(
                        diagnosticScanRoute,
                        pathParameters: {'id': widget.deviceId},
                      ),
                      child: const Text('Continue to diagnostics'),
                    )
                  : FilledButton(
                      onPressed: _startAuction,
                      child: const Text('Start auction'),
                    ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                const SdSteps(current: 5),
                Text('Review device', style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 8),
                const Text('Confirm the identity, condition and evidence before vendors set the price.', style: TextStyle(color: Color(0xFF526079))),
                const SizedBox(height: 18),
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (device != null) ...[
                  SdCard(
                    child: Column(
                      children: [
                        SdDetailRow('Model', device.model),
                        SdDetailRow('Storage', device.storage),
                        SdDetailRow('IMEI 1', _mask(device.imei1)),
                        SdDetailRow('IMEI 2', _mask(device.imei2)),
                        if (apple)
                          SdDetailRow('Battery health', '${device.batteryHealth ?? '—'}%')
                        else
                          SdDetailRow('RAM', device.ram ?? '—'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  SdCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Store manager inspection', style: TextStyle(fontWeight: FontWeight.w800)),
                        const SizedBox(height: 8),
                        Text(device.inspection?.complete == true ? 'Complete' : 'In progress'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  SdCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Device Diagnostics report', style: TextStyle(fontWeight: FontWeight.w800)),
                        const SizedBox(height: 8),
                        Text(apple ? 'Not applicable' : imported ? 'Imported' : 'Pending'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  SdCard(
                    child: Column(
                      children: [
                        SdDetailRow('Device media', '${device.media?.length ?? 0}/7 items'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  SdNotice(
                    apple
                        ? 'Customer details are collected only after an offer is accepted.'
                        : needsDiagnostic
                            ? 'The separate Android Diagnostics report will be imported before auction. Your manual inspection answers are retained.'
                            : 'No store price is generated. Vendors submit one immutable bid; you then accept the highest offer.',
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => context.goNamed(deviceEditRoute, pathParameters: {'id': device.id}),
                          child: const Text('Edit identity'),
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
    );
  }
}
