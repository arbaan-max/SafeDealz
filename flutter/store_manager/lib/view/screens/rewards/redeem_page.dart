import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/customer_rewards.dart';
import 'package:safedealz_store_manager/data/api/models/redemption_write.dart';
import 'package:safedealz_store_manager/data/repositories/reward_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';

class RedeemPage extends StatefulWidget {
  const RedeemPage({super.key, required this.phone});
  final String phone;

  @override
  State<RedeemPage> createState() => _RedeemPageState();
}

class _RedeemPageState extends State<RedeemPage> {
  final _invoice = TextEditingController();
  final _bill = TextEditingController();
  final _discount = TextEditingController();
  String _category = 'accessories';
  CustomerRewards? _record;
  bool _busy = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final rewards = context.read<RewardRepository>();
      try {
        final record = await rewards.lookup(widget.phone);
        if (mounted) setState(() => _record = record);
      } catch (error) {
        if (mounted) setState(() => _error = apiErrorMessage(error));
      }
    });
  }

  @override
  void dispose() {
    _invoice.dispose();
    _bill.dispose();
    _discount.dispose();
    super.dispose();
  }

  Future<void> _continue() async {
    final rewards = context.read<RewardRepository>();
    final billPaise = ((double.tryParse(_bill.text) ?? 0) * 100).round();
    final discountPaise = ((double.tryParse(_discount.text) ?? 0) * 100).round();
    setState(() { _busy = true; _error = null; });
    try {
      final started = await rewards.start(RedemptionWrite(
        customerPhone: widget.phone,
        invoiceNumber: _invoice.text.trim(),
        category: _category,
        billAmountPaise: billPaise,
        discountPaise: discountPaise,
      ));
      if (!mounted) return;
      context.goNamed(redeemOtpRoute, pathParameters: {'id': started.id ?? ''});
    } catch (error) {
      if (!mounted) return;
      setState(() { _busy = false; _error = apiErrorMessage(error); });
    }
  }

  @override
  Widget build(BuildContext context) {
    final balance = _record?.balances?.isNotEmpty == true ? _record!.balances!.first : null;
    final discountPaise = ((double.tryParse(_discount.text) ?? 0) * 100).round();
    final points = discountPaise <= 0 ? 0 : discountPaise ~/ 50;
    return AppPageScaffold(
      title: 'Redeem rewards',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          Text('Available ${balance?.pointsBalance ?? 0} pts'),
          TextField(controller: _invoice, decoration: const InputDecoration(labelText: 'Invoice number')),
          DropdownButtonFormField<String>(
            initialValue: _category,
            decoration: const InputDecoration(labelText: 'Eligible category'),
            items: const [
              DropdownMenuItem(value: 'accessories', child: Text('Accessories')),
              DropdownMenuItem(value: 'value_added_services', child: Text('Value-added services')),
            ],
            onChanged: (value) => setState(() => _category = value ?? 'accessories'),
          ),
          TextField(controller: _bill, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Bill amount (₹)'), onChanged: (_) => setState(() {})),
          TextField(controller: _discount, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Discount amount (₹)'), onChanged: (_) => setState(() {})),
          Text('Uses $points pts. Remaining ${(balance?.pointsBalance ?? 0) - points} pts.'),
          const SizedBox(height: 16),
          FilledButton(onPressed: _busy ? null : _continue, child: Text(_busy ? 'Saving…' : 'Continue')),
          TextButton(onPressed: () => context.goNamed(redemptionsRoute), child: const Text('Back to all redemptions')),
        ],
      ),
    );
  }
}
