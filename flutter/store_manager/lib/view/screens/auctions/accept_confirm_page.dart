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
      title: 'Accept offer',
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (round != null) ...[
                  Text(formatPaise(round.winnerBid?.amountPaise ?? round.highestAmountPaise)),
                  Text(vendor['displayName']?.toString() ?? 'Winning vendor'),
                  Text(round.branch is Map ? ((round.branch as Map)['name']?.toString() ?? '') : ''),
                  const Text('Payment uses the masked store business account. Confirm creates the payout instruction immediately. Customer verification follows.'),
                  const SizedBox(height: 24),
                  FilledButton(
                    onPressed: _busy ? null : _confirm,
                    child: Text(_busy ? 'Submitting…' : 'Confirm'),
                  ),
                ],
              ],
            ),
    );
  }
}
