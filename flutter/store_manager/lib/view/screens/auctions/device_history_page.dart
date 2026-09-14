import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round.dart';
import 'package:safedealz_store_manager/data/api/models/device.dart';
import 'package:safedealz_store_manager/data/repositories/auction_repository.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/view/screens/auctions/money.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';

class DeviceHistoryPage extends StatefulWidget {
  const DeviceHistoryPage({super.key, required this.deviceId});
  final String deviceId;

  @override
  State<DeviceHistoryPage> createState() => _DeviceHistoryPageState();
}

class _DeviceHistoryPageState extends State<DeviceHistoryPage> {
  Device? _device;
  List<AuctionRound> _rounds = const [];
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final devices = context.read<DeviceRepository>();
      final auctions = context.read<AuctionRepository>();
      try {
        final device = await devices.getDevice(widget.deviceId);
        final rounds = await auctions.listAuctions(deviceId: widget.deviceId);
        if (!mounted) return;
        setState(() { _device = device; _rounds = rounds; _loading = false; });
      } catch (error) {
        if (!mounted) return;
        setState(() { _error = apiErrorMessage(error); _loading = false; });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Device history',
      actionBar: OutlinedButton(
        onPressed: () => Navigator.maybeOf(context)?.maybePop(),
        child: const Text('Back to devices'),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (_device != null) ...[
                  Row(
                    children: [
                      Expanded(child: Text('Device record', style: Theme.of(context).textTheme.titleLarge)),
                      SdStatusBadge('Round ${_rounds.length}'),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SdCard(
                    child: Column(
                      children: [
                        SdDetailRow('Model', _device!.model),
                        SdDetailRow('Storage', _device!.storage),
                        SdDetailRow('IMEI 1', _device!.imei1),
                        SdDetailRow('IMEI 2', _device!.imei2),
                      ],
                    ),
                  ),
                  Text('${_device!.model} / ${_device!.storage}', style: Theme.of(context).textTheme.titleLarge),
                  Text(_device!.status),
                  const SizedBox(height: 16),
                  const Text('Auction rounds'),
                  if (_rounds.isEmpty) const Text('No rounds yet.'),
                  for (final round in _rounds)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: SdCard(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Round ${round.roundNumber}', style: const TextStyle(fontWeight: FontWeight.w800)),
                                const Spacer(),
                                SdStatusBadge(round.status.json ?? round.status.name),
                              ],
                            ),
                            SdDetailRow('Highest offer', formatPaise(round.highestAmountPaise)),
                            Text('Round ${round.roundNumber} · ${round.status.json ?? round.status.name}'),
                            Text(formatPaise(round.highestAmountPaise)),
                          ],
                        ),
                      ),
                    ),
                ],
              ],
            ),
    );
  }
}
