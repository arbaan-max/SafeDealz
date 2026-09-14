import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round.dart';
import 'package:safedealz_store_manager/data/repositories/auction_repository.dart';
import 'package:safedealz_store_manager/view/screens/auctions/money.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';

class ReauctionPage extends StatefulWidget {
  const ReauctionPage({super.key, required this.auctionId});
  final String auctionId;

  @override
  State<ReauctionPage> createState() => _ReauctionPageState();
}

class _ReauctionPageState extends State<ReauctionPage> {
  AuctionRound? _round;
  String? _error;
  bool _loading = true;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final auctions = context.read<AuctionRepository>();
      try {
        final round = await auctions.getAuction(widget.auctionId);
        if (mounted) setState(() { _round = round; _loading = false; });
      } catch (error) {
        if (mounted) setState(() { _error = apiErrorMessage(error); _loading = false; });
      }
    });
  }

  Future<void> _restart() async {
    final round = _round;
    if (round == null) return;
    setState(() => _busy = true);
    try {
      final next = await context.read<AuctionRepository>().startAuction(round.deviceId);
      if (!mounted) return;
      context.goNamed(liveAuctionRoute, pathParameters: {'id': next.id});
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
    final round = _round;
    final device = round?.device is Map
        ? Map<String, dynamic>.from(round!.device as Map)
        : const <String, dynamic>{};
    return AppPageScaffold(
      title: 'Needs re-auction',
      actionBar: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FilledButton(
            onPressed: _busy ? null : _restart,
            child: Text(_busy ? 'Starting…' : 'Review & restart'),
          ),
          const SizedBox(height: 8),
          SdQuietButton(
            label: 'Cancel listing',
            onPressed: _busy
                ? null
                : () async {
                    final round = _round;
                    if (round == null) return;
                    try {
                      await context.read<AuctionRepository>().cancelAuction(round.id, 'Canceled from re-auction screen');
                      if (!mounted) return;
                      context.goNamed(devicesRoute);
                    } catch (error) {
                      if (mounted) setState(() => _error = apiErrorMessage(error));
                    }
                  },
          ),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                const SdStatusOrb(icon: Icons.autorenew, tone: 'amber'),
                const Text('Ready for another round', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
                const SizedBox(height: 8),
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (round != null) ...[
                  Text(device['model']?.toString() ?? 'Device', textAlign: TextAlign.center),
                  Text(round.declineReason?.isNotEmpty == true ? round.declineReason! : 'No bids received', textAlign: TextAlign.center),
                  SdCard(
                    child: Column(
                      children: [
                        SdDetailRow('Device', device['model']?.toString() ?? 'Device'),
                        SdDetailRow('Completed rounds', '${round.roundNumber}'),
                        SdDetailRow(
                          'Last highest offer',
                          (round.highestAmountPaise ?? 0) == 0
                              ? 'No bids received'
                              : formatPaise(round.highestAmountPaise),
                        ),
                      ],
                    ),
                  ),
                  Text('Round ${round.roundNumber}'),
                  Text(
                    (round.highestAmountPaise ?? 0) == 0
                        ? 'No bids received'
                        : 'Last highest offer ${formatPaise(round.highestAmountPaise)}',
                  ),
                  const Text('Device evidence is retained. The customer is not collected yet.'),
                  const SdNotice('Reuse device checks and evidence. Customer details are not required to restart. Every vendor may submit one new bid in the new round.'),
                  OutlinedButton(
                    onPressed: () => context.goNamed(deviceHistoryRoute, pathParameters: {'id': round.deviceId}),
                    child: const Text('View previous rounds'),
                  ),
                ],
              ],
            ),
    );
  }
}
