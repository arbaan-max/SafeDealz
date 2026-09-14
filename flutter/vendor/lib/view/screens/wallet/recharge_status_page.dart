import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/api/models/wallet_recharge.dart';
import 'package:safedealz_vendor/data/api/models/wallet_recharge_status.dart';
import 'package:safedealz_vendor/data/repositories/wallet_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_vendor/view/widgets/html_kit.dart';

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
    final heading = switch (status) {
      WalletRechargeStatus.confirmed => 'Money added',
      WalletRechargeStatus.failed => 'Recharge failed',
      _ => 'Recharge pending',
    };
    final label = switch (status) {
      WalletRechargeStatus.confirmed => 'Confirmed',
      WalletRechargeStatus.failed => 'Failed',
      _ => 'Pending',
    };
    return AppPageScaffold(
      title: 'Recharge status',
      onBack: () => GoRouter.maybeOf(context)?.goNamed(walletRoute),
      actionBar: status == WalletRechargeStatus.confirmed
          ? FilledButton(onPressed: () => context.goNamed(walletRoute), child: const Text('Done'))
          : status == WalletRechargeStatus.failed
              ? FilledButton(onPressed: () => context.goNamed(walletRechargeRoute), child: const Text('Try again'))
              : FilledButton(onPressed: _load, child: const Text('Refresh')),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SdScrollBody(
              children: [
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (recharge != null) ...[
                  SdStatusOrb(
                    icon: status == WalletRechargeStatus.confirmed ? Icons.check_circle_outlined : Icons.account_balance_outlined,
                    tone: status == WalletRechargeStatus.confirmed
                        ? 'green'
                        : status == WalletRechargeStatus.failed
                            ? 'amber'
                            : 'sky',
                  ),
                  Text(heading, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineMedium),
                  Text(label, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 10),
                  Text(
                    status == WalletRechargeStatus.confirmed
                        ? 'Your available balance has been updated.'
                        : 'Waiting for the payment provider confirmation.',
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: AppTheme.muted),
                  ),
                  const SizedBox(height: 22),
                  SdCard(
                    child: Column(
                      children: [
                        const Text('Recharge amount', style: TextStyle(fontSize: 12, color: AppTheme.muted)),
                        Text(formatPaise(recharge.amountPaise), style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
                        const Divider(height: 24),
                        SdDetailRow('Reference', recharge.orderId),
                        Text('Order ${recharge.orderId}'),
                        if ((recharge.paymentId ?? '').isNotEmpty) Text('Payment ${recharge.paymentId}'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  if (status == WalletRechargeStatus.pending) const SdNotice('Pending money cannot be used to bid.'),
                  const Text('Usable balance does not change until the provider confirms.'),
                ],
              ],
            ),
    );
  }
}
