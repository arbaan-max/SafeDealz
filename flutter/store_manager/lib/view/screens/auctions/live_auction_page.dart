import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round_status.dart';
import 'package:safedealz_store_manager/data/repositories/auction_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';

class LiveAuctionPage extends StatefulWidget {
  const LiveAuctionPage({super.key, required this.auctionId});
  final String auctionId;

  @override
  State<LiveAuctionPage> createState() => _LiveAuctionPageState();
}

class _LiveAuctionPageState extends State<LiveAuctionPage> {
  AuctionRound? _round;
  String? _error;
  bool _loading = true;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> _load() async {
    final auctions = context.read<AuctionRepository>();
    try {
      final round = await auctions.getAuction(widget.auctionId);
      if (!mounted) return;
      setState(() {
        _round = round;
        _loading = false;
        _error = null;
      });
      _timer?.cancel();
      if (round.status == AuctionRoundStatus.live) {
        _timer = Timer.periodic(const Duration(seconds: 1), (_) {
          if (!mounted) return;
          if (DateTime.now().isAfter(round.closesAt)) {
            _close();
          } else {
            setState(() {});
          }
        });
      } else if (round.status == AuctionRoundStatus.awaitingAcceptance) {
        context.goNamed(offerRoute, pathParameters: {'id': round.id});
      } else if (round.status == AuctionRoundStatus.needsReauction) {
        context.goNamed(reauctionRoute, pathParameters: {'id': round.id});
      }
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _error = apiErrorMessage(error);
        _loading = false;
      });
    }
  }

  Future<void> _close() async {
    _timer?.cancel();
    final auctions = context.read<AuctionRepository>();
    try {
      final round = await auctions.tickAndReload(widget.auctionId);
      if (!mounted) return;
      if (round.status == AuctionRoundStatus.awaitingAcceptance) {
        context.goNamed(offerRoute, pathParameters: {'id': round.id});
      } else if (round.status == AuctionRoundStatus.needsReauction) {
        context.goNamed(reauctionRoute, pathParameters: {'id': round.id});
      } else {
        setState(() => _round = round);
      }
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = apiErrorMessage(error));
    }
  }

  Future<void> _cancel() async {
    final reason = TextEditingController();
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Cancel auction'),
        content: TextField(controller: reason, decoration: const InputDecoration(labelText: 'Reason')),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Back')),
          FilledButton(onPressed: () => Navigator.pop(context, true), child: const Text('Cancel auction')),
        ],
      ),
    );
    final text = reason.text.trim();
    reason.dispose();
    if (confirmed != true || text.isEmpty || !mounted) return;
    try {
      final round = await context.read<AuctionRepository>().cancelAuction(widget.auctionId, text);
      if (!mounted) return;
      setState(() => _round = round);
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = apiErrorMessage(error));
    }
  }

  @override
  Widget build(BuildContext context) {
    final round = _round;
    final remaining = round == null ? Duration.zero : round.closesAt.difference(DateTime.now());
    final live = round?.status == AuctionRoundStatus.live && remaining > Duration.zero;
    final mm = remaining.inMinutes.remainder(60).toString().padLeft(2, '0');
    final ss = remaining.inSeconds.remainder(60).toString().padLeft(2, '0');
    final device = round?.device is Map ? Map<String, dynamic>.from(round!.device as Map) : const <String, dynamic>{};
    return AppPageScaffold(
      title: 'Live auction',
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (round != null) ...[
                  Text(device['model']?.toString() ?? 'Device'),
                  Text('Round ${round.roundNumber}'),
                  const SizedBox(height: 12),
                  Text(
                    live ? 'Bidding ends in $mm:$ss' : 'Bidding ended',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text('${round.bidCount ?? 0} bids'),
                  Text(
                    (round.highestAmountPaise ?? 0) == 0
                        ? 'No bids yet'
                        : 'Highest current offer ₹${((round.highestAmountPaise ?? 0) / 100).toStringAsFixed(0)}',
                  ),
                  const SizedBox(height: 24),
                  if (live)
                    TextButton(
                      onPressed: _cancel,
                      child: const Text('Cancel auction'),
                    ),
                ],
              ],
            ),
    );
  }
}
