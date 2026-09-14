import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/redemption.dart';
import 'package:safedealz_store_manager/data/repositories/reward_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';

class RedeemReceiptPage extends StatefulWidget {
  const RedeemReceiptPage({super.key, required this.id});
  final String id;

  @override
  State<RedeemReceiptPage> createState() => _RedeemReceiptPageState();
}

class _RedeemReceiptPageState extends State<RedeemReceiptPage> {
  Redemption? _row;
  String? _error;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final rewards = context.read<RewardRepository>();
      try {
        final row = await rewards.getRedemption(widget.id);
        if (mounted) setState(() => _row = row);
      } catch (error) {
        if (mounted) setState(() => _error = apiErrorMessage(error));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Redemption receipt',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          Text('${_row?.points ?? 0} pts · ₹${((_row?.discountPaise ?? 0) / 100).toStringAsFixed(0)} off'),
          Text('Invoice ${_row?.invoiceNumber ?? ''}'),
          Text('Remaining ${_row?.remainingPoints ?? 0} pts'),
          const SizedBox(height: 12),
          Text(_row?.reminder ?? 'Apply this discount in the store billing software. SafeDealz does not change the bill.'),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () => context.goNamed(redemptionsRoute),
            child: const Text('Done'),
          ),
        ],
      ),
    );
  }
}
