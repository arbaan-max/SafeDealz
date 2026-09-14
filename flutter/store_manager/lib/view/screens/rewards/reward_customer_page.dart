import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/customer_rewards.dart';
import 'package:safedealz_store_manager/data/repositories/reward_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';
import 'package:safedealz_store_manager/view/widgets/manager_bottom_nav.dart';

class RewardCustomerPage extends StatefulWidget {
  const RewardCustomerPage({super.key, required this.phone});
  final String phone;

  @override
  State<RewardCustomerPage> createState() => _RewardCustomerPageState();
}

class _RewardCustomerPageState extends State<RewardCustomerPage> {
  CustomerRewards? _record;
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
  Widget build(BuildContext context) {
    final balance = _record?.balances?.isNotEmpty == true ? _record!.balances!.first : null;
    return AppPageScaffold(
      title: _record?.customerName?.isNotEmpty == true ? _record!.customerName! : 'Customer rewards',
      onBack: () => context.goNamed(redemptionsRoute),
      bottomNavigationBar: const ManagerBottomNav(index: 2),
      actionBar: balance == null
          ? null
          : FilledButton(
              onPressed: () => context.goNamed(redeemRoute, pathParameters: {'phone': widget.phone}),
              child: const Text('Redeem rewards'),
            ),
      body: ListView(
        children: [
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          if (balance == null) const Text('No rewards at this branch.'),
          if (balance != null) ...[
            SdCard(
              tint: true,
              child: Column(
                children: [
                  Text('${balance.pointsBalance ?? 0} pts', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
                  Text('₹${((balance.outstandingValuePaise ?? 0) / 100).toStringAsFixed(0)} available'),
                  Text(balance.branchName ?? 'This branch'),
                ],
              ),
            ),
            Text('${balance.pointsBalance ?? 0} pts · ₹${((balance.outstandingValuePaise ?? 0) / 100).toStringAsFixed(0)}'),
            Text(balance.branchName ?? 'This branch'),
          ],
          SdListRow(
            icon: Icons.receipt_long_outlined,
            title: 'All redemptions',
            subtitle: 'Return to the branch list',
            onTap: () => context.goNamed(redemptionsRoute),
          ),
        ],
      ),
    );
  }
}
