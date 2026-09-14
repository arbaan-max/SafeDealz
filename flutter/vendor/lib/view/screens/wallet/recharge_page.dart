import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/repositories/wallet_repository.dart';
import 'package:safedealz_vendor/data/services/razorpay_checkout_adapter.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

class RechargePage extends StatefulWidget {
  const RechargePage({super.key});

  @override
  State<RechargePage> createState() => _RechargePageState();
}

class _RechargePageState extends State<RechargePage> {
  final _amount = TextEditingController();
  String? _error;
  bool _busy = false;

  @override
  void dispose() {
    _amount.dispose();
    super.dispose();
  }

  Future<void> _continue() async {
    final rupees = num.tryParse(_amount.text.trim());
    if (rupees == null || rupees < 1) {
      setState(() => _error = 'Enter an amount of at least ₹1.');
      return;
    }
    final amountPaise = (rupees * 100).round();
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final recharge = await context.read<WalletRepository>().createRecharge(
            amountPaise: amountPaise,
            idempotencyKey: 'rzp-${DateTime.now().microsecondsSinceEpoch}',
          );
      if (!mounted) return;
      final checkout = await context.read<RazorpayCheckoutAdapter>().open(
            RazorpayCheckoutRequest(
              keyId: recharge.keyId,
              orderId: recharge.orderId,
              amountPaise: recharge.amountPaise,
            ),
          );
      if (!mounted) return;
      if (!checkout.completed) {
        setState(() {
          _busy = false;
          _error = 'Checkout was canceled. No money was added.';
        });
        return;
      }
      await context.read<WalletRepository>().acknowledgeRecharge(recharge.id);
      if (!mounted) return;
      context.goNamed(walletRechargeStatusRoute, pathParameters: {'id': recharge.id});
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
    return AppPageScaffold(
      title: 'Add money',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            controller: _amount,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration: const InputDecoration(
              labelText: 'Amount',
              prefixText: '₹ ',
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Continue opens Razorpay Checkout. The wallet credits only after the provider confirms the payment. Checkout success never adds money by itself.',
          ),
          if (_error != null) ...[
            const SizedBox(height: 12),
            Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          ],
          const SizedBox(height: 24),
          FilledButton(
            onPressed: _busy ? null : _continue,
            child: Text(_busy ? 'Opening Razorpay…' : 'Continue'),
          ),
        ],
      ),
    );
  }
}
