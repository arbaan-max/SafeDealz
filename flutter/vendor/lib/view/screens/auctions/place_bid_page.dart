import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/api/models/bid_write.dart';
import 'package:safedealz_vendor/data/api/models/wallet_detail.dart';
import 'package:safedealz_vendor/data/repositories/auction_repository.dart';
import 'package:safedealz_vendor/data/repositories/wallet_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

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
  String? _error;
  bool _busy = false;

  int get _basePaise => ((num.tryParse(_base.text) ?? 0) * 100).round();
  int get _cosmeticPaise => ((num.tryParse(_cosmetic.text) ?? 0) * 100).round();
  int get _batteryPaise => ((num.tryParse(_battery.text) ?? 0) * 100).round();
  int get _finalPaise => _basePaise - _cosmeticPaise - _batteryPaise;
  int get _feePaise => _finalPaise > 0 ? platformFeePaise(_finalPaise) : 0;
  int get _totalPaise => _finalPaise + _feePaise;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        final wallet = await context.read<WalletRepository>().getMyWallet();
        if (mounted) setState(() => _wallet = wallet);
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
    return AppPageScaffold(
      title: 'Your bid',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Available to bid ${formatPaise(available)}'),
          TextField(
            controller: _base,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Base price', prefixText: '₹ '),
            onChanged: (_) => setState(() {}),
          ),
          TextField(
            controller: _cosmetic,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Cosmetic deduction', prefixText: '₹ '),
            onChanged: (_) => setState(() {}),
          ),
          TextField(
            controller: _battery,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Battery deduction', prefixText: '₹ '),
            onChanged: (_) => setState(() {}),
          ),
          const SizedBox(height: 12),
          Text('Final bid ${formatPaise(_finalPaise)}'),
          Text('Platform fee ${formatPaise(_feePaise)}'),
          Text('Total reservation ${formatPaise(_totalPaise)}'),
          Text('Available after this bid ${formatPaise(available - _totalPaise)}'),
          const Text('Funds stay reserved until the auction outcome. One bid, no edit.'),
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          const SizedBox(height: 16),
          if (_totalPaise > available)
            FilledButton(onPressed: () => context.goNamed(walletRechargeRoute), child: const Text('Add money'))
          else
            FilledButton(
              onPressed: _busy ? null : _submit,
              child: Text(_busy ? 'Submitting…' : 'Confirm bid'),
            ),
        ],
      ),
    );
  }
}
