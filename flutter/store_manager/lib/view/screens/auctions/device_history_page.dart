import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round.dart';
import 'package:safedealz_store_manager/data/api/models/device.dart';
import 'package:safedealz_store_manager/data/repositories/auction_repository.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/view/screens/auctions/money.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';

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
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (_device != null) ...[
                  Text('${_device!.model} / ${_device!.storage}', style: Theme.of(context).textTheme.titleLarge),
                  Text(_device!.status),
                  const SizedBox(height: 16),
                  const Text('Auction rounds'),
                  if (_rounds.isEmpty) const Text('No rounds yet.'),
                  for (final round in _rounds)
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Round ${round.roundNumber} · ${round.status.json ?? round.status.name}'),
                      subtitle: Text(formatPaise(round.highestAmountPaise)),
                    ),
                ],
              ],
            ),
    );
  }
}
