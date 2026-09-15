import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/deal.dart';
import 'package:safedealz_store_manager/data/api/models/payment_instruction_status.dart';
import 'package:safedealz_store_manager/data/repositories/deal_repository.dart';
import 'package:safedealz_store_manager/view/screens/auctions/money.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';
import 'package:safedealz_store_manager/view/widgets/sd_icons.dart';

class PaymentStatusPage extends StatefulWidget {
  const PaymentStatusPage({super.key, required this.dealId});
  final String dealId;

  @override
  State<PaymentStatusPage> createState() => _PaymentStatusPageState();
}

class _PaymentStatusPageState extends State<PaymentStatusPage> {
  Deal? _deal;
  bool _loading = true;
  bool _busy = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    final deals = context.read<DealRepository>();
    try {
      final deal = await deals.getDeal(widget.dealId);
      if (!mounted) return;
      setState(() {
        _deal = deal;
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

  Future<void> _retry() async {
    final paymentId = _deal?.paymentInstruction?.id;
    if (paymentId == null) return;
    final deals = context.read<DealRepository>();
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final payment = await deals.retryPayment(paymentId);
      if (!mounted) return;
      setState(() {
        _deal = _deal?.copyWith(paymentInstruction: payment);
        _busy = false;
      });
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
    final payment = _deal?.paymentInstruction;
    final canRetry = payment?.status == PaymentInstructionStatus.needsAttention;
    final heading = switch (payment?.status) {
      PaymentInstructionStatus.paid => 'Payment completed',
      PaymentInstructionStatus.needsAttention => 'Payment needs attention',
      PaymentInstructionStatus.awaitingCustomerVerification => 'Payment started',
      _ => 'Payment processing',
    };
    return AppPageScaffold(
      title: 'Payment status',
      actionBar: payment?.status == PaymentInstructionStatus.paid
          ? FilledButton(
              onPressed: () => context.goNamed(dealDetailRoute, pathParameters: {'id': widget.dealId}),
              child: const Text('View deal'),
            )
          : OutlinedButton(onPressed: _busy ? null : _load, child: const Text('Refresh')),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                SdStatusOrb(
                  icon: payment?.status == PaymentInstructionStatus.paid
                      ? SdIcons.check
                      : payment?.status == PaymentInstructionStatus.needsAttention
                          ? SdIcons.warning
                          : SdIcons.bank,
                  tone: payment?.status == PaymentInstructionStatus.paid
                      ? 'green'
                      : payment?.status == PaymentInstructionStatus.needsAttention
                          ? 'amber'
                          : 'sky',
                ),
                Text(heading, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineMedium),
                Text(_statusLabel(payment?.status), style: Theme.of(context).textTheme.headlineSmall, textAlign: TextAlign.center),
                const SizedBox(height: 8),
                SdCard(
                  child: Column(
                    children: [
                      const Text('Store payout', style: TextStyle(fontSize: 12, color: Color(0xFF526079))),
                      Text(formatPaise(payment?.amountPaise), style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
                      Text(payment?.beneficiaryName ?? ''),
                      Text(payment?.accountNumberMasked ?? ''),
                      Text(payment?.ifsc ?? ''),
                      Text('Store amount ${formatPaise(payment?.amountPaise)}'),
                      Text('Platform fee ${formatPaise(payment?.feePaise)}'),
                      if ((payment?.providerTransferId ?? '').isNotEmpty)
                        Text('Provider ${payment!.providerTransferId}'),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                const Text('Payout starts automatically after verification. There is no approve-payout step.'),
                if (payment?.status == PaymentInstructionStatus.unknown)
                  const Text('Unknown provider outcome. Super Admin must reconcile before retry.'),
                const SizedBox(height: 16),
                if (canRetry)
                  FilledButton(
                    onPressed: _busy ? null : _retry,
                    child: Text(_busy ? 'Retrying…' : 'Retry payout'),
                  ),
                OutlinedButton(
                  onPressed: () => context.goNamed(reportIssueRoute, queryParameters: {
                    'subjectType': 'deal',
                    'subjectId': widget.dealId,
                    'returnTo': '/payments/${widget.dealId}',
                  }),
                  child: const Text('Report issue'),
                ),
              ],
            ),
    );
  }
}

String _statusLabel(PaymentInstructionStatus? status) {
  return switch (status) {
    PaymentInstructionStatus.processing => 'Processing',
    PaymentInstructionStatus.paid => 'Paid',
    PaymentInstructionStatus.needsAttention => 'Needs attention',
    PaymentInstructionStatus.unknown => 'Unknown — reconcile required',
    PaymentInstructionStatus.readyForTransfer => 'Ready for transfer',
    PaymentInstructionStatus.awaitingCustomerVerification => 'Awaiting verification',
    _ => 'Payment',
  };
}
