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

  @override
  Widget build(BuildContext context) {
    final device = _device;
    final apple = device?.platform == DevicePlatform.apple;
    final imported = device?.status == 'ready_for_auction';
    return AppPageScaffold(
      title: 'Device review',
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (device != null) ...[
                  Text('${device.model} · ${device.storage}'),
                  Text('IMEI 1: ${device.imei1}'),
                  Text('IMEI 2: ${device.imei2}'),
                  const SizedBox(height: 16),
                  const Text('Store manager inspection'),
                  Text(device.inspection?.complete == true ? 'Complete' : 'In progress'),
                  const SizedBox(height: 12),
                  const Text('Device Diagnostics report'),
                  Text(
                    apple
                        ? 'Not applicable'
                        : imported
                            ? 'Imported'
                            : 'Pending',
                  ),
                  const SizedBox(height: 24),
                  if (apple)
                    FilledButton(
                      onPressed: imported ? _startAuction : null,
                      child: const Text('Review and start auction'),
                    )
                  else if (!imported)
                    FilledButton(
                      onPressed: () => context.goNamed(
                        diagnosticScanRoute,
                        pathParameters: {'id': widget.deviceId},
                      ),
                      child: const Text('Continue to diagnostics'),
                    )
                  else
                    FilledButton(
                      onPressed: _startAuction,
                      child: const Text('Start auction'),
                    ),
                ],
              ],
            ),
    );
  }
}
