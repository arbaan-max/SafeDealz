import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round.dart';
import 'package:safedealz_store_manager/data/repositories/auction_repository.dart';
import 'package:safedealz_store_manager/data/repositories/deal_repository.dart';
import 'package:safedealz_store_manager/view/screens/auctions/money.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';
import 'package:safedealz_store_manager/view/widgets/sd_icons.dart';

class AcceptConfirmPage extends StatefulWidget {
  const AcceptConfirmPage({super.key, required this.auctionId});
  final String auctionId;

  @override
  State<AcceptConfirmPage> createState() => _AcceptConfirmPageState();
}

class _AcceptConfirmPageState extends State<AcceptConfirmPage> {
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

  Future<void> _confirm() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final deal = await context.read<DealRepository>().acceptAuction(widget.auctionId);
      if (!mounted) return;
      context.goNamed(customerVerifyRoute, pathParameters: {'id': deal.id});
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
    final vendor = round?.winnerVendor is Map
        ? Map<String, dynamic>.from(round!.winnerVendor as Map)
        : const <String, dynamic>{};
    return AppPageScaffold(
      title: 'Accept confirmation',
      showBell: false,
      onBack: () => context.goNamed(offerRoute, pathParameters: {'id': widget.auctionId}),
      actionBar: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FilledButton(
            onPressed: _busy ? null : _confirm,
            child: Text(_busy ? 'Submitting…' : 'Confirm'),
          ),
          const SizedBox(height: 8),
          OutlinedButton(
            onPressed: () => context.goNamed(offerRoute, pathParameters: {'id': widget.auctionId}),
            child: const Text('Back to offer'),
          ),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                const SdStatusOrb(icon: SdIcons.bank),
                const Text('Accept this offer?', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
                const SizedBox(height: 8),
                const Text('Confirm the amount and store account.', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF526079))),
                const SizedBox(height: 16),
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (round != null) ...[
                  SdCard(
                    child: Column(
                      children: [
                        SdDetailRow('Final offer', formatPaise(round.winnerBid?.amountPaise ?? round.highestAmountPaise)),
                        SdDetailRow('Vendor', vendor['displayName']?.toString() ?? 'Winning vendor'),
                        SdDetailRow('Business account', round.branch is Map ? ((round.branch as Map)['name']?.toString() ?? '') : ''),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  const SdNotice('Acceptance commits the reserved funds and starts backend processing. Complete customer verification next to release the store payout. No admin approval is required. Payment uses the masked store business account. Confirm creates the payout instruction immediately. Customer verification follows.'),
                ],
              ],
            ),
    );
  }
}
