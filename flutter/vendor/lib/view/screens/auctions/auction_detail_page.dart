import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/api/models/auction_round.dart';
import 'package:safedealz_vendor/data/api/models/auction_round_status.dart';
import 'package:safedealz_vendor/data/repositories/auction_repository.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

class AuctionDetailPage extends StatefulWidget {
  const AuctionDetailPage({super.key, required this.auctionId});
  final String auctionId;

  @override
  State<AuctionDetailPage> createState() => _AuctionDetailPageState();
}

class _AuctionDetailPageState extends State<AuctionDetailPage> {
  AuctionRound? _round;
  String? _error;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    try {
      final round = await context.read<AuctionRepository>().getAuction(widget.auctionId);
      if (!mounted) return;
      setState(() {
        _round = round;
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

  @override
  Widget build(BuildContext context) {
    final round = _round;
    final device = round?.device is Map ? Map<String, dynamic>.from(round!.device as Map) : const <String, dynamic>{};
    final alreadyBid = round?.ownBid != null;
    return AppPageScaffold(
      title: 'Device',
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (round != null) ...[
                  Text(device['model']?.toString() ?? 'Device'),
                  Text('${device['storage'] ?? ''} · ${device['platform'] ?? ''}'),
                  const SizedBox(height: 8),
                  const Text('Store manager inspection'),
                  const Text('Complete'),
                  const SizedBox(height: 8),
                  const Text('Device Diagnostics report'),
                  Text(device['platform'] == 'apple' ? 'Not applicable' : 'Imported'),
                  const SizedBox(height: 24),
                  if (alreadyBid)
                    FilledButton(
                      onPressed: () => context.goNamed(bidDetailRoute, pathParameters: {'id': round.ownBid!.id}),
                      child: const Text('View bid'),
                    )
                  else if (round.status == AuctionRoundStatus.live)
                    FilledButton(
                      onPressed: () => context.goNamed(placeBidRoute, pathParameters: {'id': round.id}),
                      child: const Text('Place bid'),
                    ),
                ],
              ],
            ),
    );
  }
}
