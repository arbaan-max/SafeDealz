import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/api/models/wallet_recharge.dart';
import 'package:safedealz_vendor/data/api/models/wallet_recharge_status.dart';
import 'package:safedealz_vendor/data/repositories/wallet_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

class RechargeStatusPage extends StatefulWidget {
  const RechargeStatusPage({super.key, required this.rechargeId});
  final String rechargeId;

  @override
  State<RechargeStatusPage> createState() => _RechargeStatusPageState();
}

class _RechargeStatusPageState extends State<RechargeStatusPage> {
  WalletRecharge? _recharge;
  String? _error;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    try {
      final recharge = await context.read<WalletRepository>().getRecharge(widget.rechargeId);
      if (!mounted) return;
      setState(() {
        _recharge = recharge;
        _loading = false;
        _error = null;
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
    final recharge = _recharge;
    final status = recharge?.status;
    final label = switch (status) {
      WalletRechargeStatus.confirmed => 'Confirmed',
      WalletRechargeStatus.failed => 'Failed',
      _ => 'Pending',
    };
    return AppPageScaffold(
      title: 'Recharge status',
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (recharge != null) ...[
                  Text(label, style: Theme.of(context).textTheme.headlineSmall),
                  Text(formatPaise(recharge.amountPaise)),
                  Text('Order ${recharge.orderId}'),
                  if ((recharge.paymentId ?? '').isNotEmpty) Text('Payment ${recharge.paymentId}'),
                  const SizedBox(height: 12),
                  const Text('Usable balance does not change until the provider confirms.'),
                ],
                const SizedBox(height: 24),
                if (status == WalletRechargeStatus.confirmed)
                  FilledButton(
                    onPressed: () => context.goNamed(walletRoute),
                    child: const Text('Done'),
                  )
                else if (status == WalletRechargeStatus.failed)
                  FilledButton(
                    onPressed: () => context.goNamed(walletRechargeRoute),
                    child: const Text('Try again'),
                  )
                else
                  FilledButton(
                    onPressed: _load,
                    child: const Text('Refresh'),
                  ),
              ],
            ),
    );
  }
}
