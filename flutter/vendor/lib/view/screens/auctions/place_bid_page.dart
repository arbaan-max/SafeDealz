import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/api/models/auction_round.dart';
import 'package:safedealz_vendor/data/api/models/bid_write.dart';
import 'package:safedealz_vendor/data/api/models/wallet_detail.dart';
import 'package:safedealz_vendor/data/repositories/auction_repository.dart';
import 'package:safedealz_vendor/data/repositories/wallet_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_vendor/view/widgets/html_kit.dart';
import 'package:safedealz_vendor/view/widgets/vendor_format.dart';

class PlaceBidPage extends StatefulWidget {
  const PlaceBidPage({super.key, required this.auctionId});
  final String auctionId;

  @override
  State<PlaceBidPage> createState() => _PlaceBidPageState();
}

class _PlaceBidPageState extends State<PlaceBidPage> {
  final _base = TextEditingController();
  final _cosmetic = TextEditingController(text: '0');
  final _battery = TextEditingController(text: '0');
  WalletDetail? _wallet;
  AuctionRound? _round;
  String? _error;
  bool _busy = false;
  bool _reviewing = false;

  int get _basePaise => ((num.tryParse(_base.text) ?? 0) * 100).round();
  int get _cosmeticPaise => ((num.tryParse(_cosmetic.text) ?? 0) * 100).round();
  int get _batteryPaise => ((num.tryParse(_battery.text) ?? 0) * 100).round();
  int get _finalPaise => _basePaise - _cosmeticPaise - _batteryPaise;
  int get _feePaise => _finalPaise > 0 ? platformFeePaise(_finalPaise) : 0;
  int get _totalPaise => _finalPaise + _feePaise;
  int get _rate => _finalPaise > 3000000 ? 6 : _finalPaise > 2000000 ? 7 : 8;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final wallets = context.read<WalletRepository>();
      final auctions = context.read<AuctionRepository>();
      try {
        final wallet = await wallets.getMyWallet();
        final round = await auctions.getAuction(widget.auctionId);
        if (mounted) setState(() { _wallet = wallet; _round = round; });
      } catch (error) {
        if (mounted) setState(() => _error = apiErrorMessage(error));
      }
    });
  }

  @override
  void dispose() {
    _base.dispose();
    _cosmetic.dispose();
    _battery.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (_finalPaise <= 0) {
      setState(() => _error = 'Final bid must be greater than zero.');
      return;
    }
    final available = _wallet?.availablePaise ?? 0;
    if (_totalPaise > available) {
      setState(() => _error = 'Not enough balance. Required ${formatPaise(_totalPaise)}, available ${formatPaise(available)}.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final bid = await context.read<AuctionRepository>().placeBid(
            widget.auctionId,
            BidWrite(
              amountPaise: _finalPaise,
              idempotencyKey: 'bid-${DateTime.now().microsecondsSinceEpoch}',
              basePaise: _basePaise,
              cosmeticDeductionPaise: _cosmeticPaise,
              batteryDeductionPaise: _batteryPaise,
            ),
          );
      if (!mounted) return;
      context.goNamed(bidDetailRoute, pathParameters: {'id': bid.id});
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
    final available = _wallet?.availablePaise ?? 0;
    final short = _totalPaise > available;
    if (_reviewing) {
      return AppPageScaffold(
        title: 'Confirm your bid',
        onBack: () => setState(() => _reviewing = false),
        actionBar: FilledButton(
              onPressed: _busy ? null : _submit,
              child: Text(_busy ? 'Submitting…' : 'Submit final bid'),
            ),
        body: SdScrollBody(
          children: [
            const SdStatusOrb(icon: Icons.lock_outline),
            const Text('Confirm your bid', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
            const SizedBox(height: 9),
            const Text('Your offer cannot be edited or withdrawn.', textAlign: TextAlign.center, style: TextStyle(color: AppTheme.muted)),
            const SizedBox(height: 22),
            SdCard(
              tint: true,
              child: Column(
                children: [
                  const Text('Final bid', style: TextStyle(fontSize: 12, color: AppTheme.muted)),
                  Text(formatPaise(_finalPaise), style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
                  Text('Final bid ${formatPaise(_finalPaise)}', style: const TextStyle(fontSize: 12, color: AppTheme.muted)),
                  Text(
                    '${deviceModel(_round?.device)} / ${branchLine(_round?.branch)}',
                    style: const TextStyle(color: AppTheme.muted, fontSize: 12),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SdCard(
              child: Column(
                children: [
                  SdDetailRow('Platform charges ($_rate%)', formatPaise(_feePaise)),
                  Text('Platform fee ${formatPaise(_feePaise)}'),
                  SdDetailRow('Reserved immediately: bid + fee', formatPaise(_totalPaise)),
                  Text('Total reservation ${formatPaise(_totalPaise)}'),
                  SdDetailRow('Available after bid', formatPaise(available - _totalPaise)),
                  const SdDetailRow('Bid opportunity', 'Once per auction round'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const SdNotice(
              'Bid and fee are reserved now. Both are released if you lose, the offer expires, or the store declines or rebids. The platform fee is collected only on a completed deal.',
            ),
            TextButton(onPressed: () => setState(() => _reviewing = false), child: const Text('Back to review')),
            if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          ],
        ),
      );
    }
    return AppPageScaffold(
      title: 'Your offer',
      onBack: () => GoRouter.maybeOf(context)?.goNamed(auctionDetailRoute, pathParameters: {'id': widget.auctionId}),
      actionBar: short
          ? FilledButton(onPressed: () => context.goNamed(walletRechargeRoute), child: const Text('Add money'))
          : FilledButton(
              onPressed: _finalPaise <= 0
                  ? null
                  : () => setState(() {
                        _error = null;
                        _reviewing = true;
                      }),
              child: const Text('Review bid'),
            ),
      body: SdScrollBody(
        children: [
          Row(
            children: [
              const Expanded(child: Text('Your offer', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
              Row(
                children: [
                  const Icon(Icons.schedule, size: 16, color: AppTheme.skyBlue),
                  const SizedBox(width: 6),
                  Text(remainingClock(_round?.closesAt), style: const TextStyle(fontWeight: FontWeight.w800)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '${deviceModel(_round?.device)} / ${deviceStorage(_round?.device)}',
            style: const TextStyle(color: AppTheme.muted),
          ),
          const SizedBox(height: 18),
          SdCard(
            tint: true,
            child: SdDetailRow('Available to bid', formatPaise(available)),
          ),
          Text('Available to bid ${formatPaise(available)}'),
          const SizedBox(height: 16),
          TextField(
            controller: _base,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Base price', prefixText: '₹ '),
            onChanged: (_) => setState(() {}),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _cosmetic,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Cosmetic deduction', prefixText: '₹ '),
            onChanged: (_) => setState(() {}),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _battery,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Battery deduction', prefixText: '₹ '),
            onChanged: (_) => setState(() {}),
          ),
          const SizedBox(height: 12),
          SdCard(
            tint: true,
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(child: Text('Final bid', style: TextStyle(fontSize: 12, color: AppTheme.muted))),
                    Text(formatPaise(_finalPaise), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
                  ],
                ),
                Text('Final bid ${formatPaise(_finalPaise)}'),
                const Divider(height: 24),
                SdDetailRow('Platform charges', '${formatPaise(_feePaise)} ($_rate%)'),
                Text('Platform fee ${formatPaise(_feePaise)}'),
                SdDetailRow('Total wallet reservation', formatPaise(_totalPaise)),
                Text('Total reservation ${formatPaise(_totalPaise)}'),
                SdDetailRow('Available after bid', formatPaise(available - _totalPaise)),
                Text('Available after this bid ${formatPaise(available - _totalPaise)}'),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const SdNotice(
            'Platform charges: 8% up to ₹20,000; 7% above ₹20,000 to ₹30,000; 6% above ₹30,000. One immutable bid per round.',
          ),
          const Text('Funds stay reserved until the auction outcome. One bid, no edit.'),
          if (!short)
            TextButton(onPressed: () => context.goNamed(walletRechargeRoute), child: const Text('Add money')),
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
        ],
      ),
    );
  }
}
