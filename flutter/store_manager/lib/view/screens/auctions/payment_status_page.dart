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
    return AppPageScaffold(
      title: 'Payment status',
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                Text(_statusLabel(payment?.status), style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 8),
                Text('Store amount ${formatPaise(payment?.amountPaise)}'),
                Text('Platform fee ${formatPaise(payment?.feePaise)}'),
                Text(payment?.beneficiaryName ?? ''),
                Text(payment?.accountNumberMasked ?? ''),
                Text(payment?.ifsc ?? ''),
                if ((payment?.providerTransferId ?? '').isNotEmpty)
                  Text('Provider ${payment!.providerTransferId}'),
                const SizedBox(height: 12),
                const Text('Payout starts automatically after verification. There is no approve-payout step.'),
                if (payment?.status == PaymentInstructionStatus.unknown)
                  const Text('Unknown provider outcome. Super Admin must reconcile before retry.'),
                const SizedBox(height: 24),
                OutlinedButton(onPressed: _busy ? null : _load, child: const Text('Refresh')),
                if (payment?.status == PaymentInstructionStatus.paid)
                  FilledButton(
                    onPressed: () => context.goNamed(dealDetailRoute, pathParameters: {'id': widget.dealId}),
                    child: const Text('View deal'),
                  ),
                if (canRetry)
                  FilledButton(
                    onPressed: _busy ? null : _retry,
                    child: Text(_busy ? 'Retrying…' : 'Retry payout'),
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
