import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/repositories/reward_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/manager_bottom_nav.dart';

class RewardsLookupPage extends StatefulWidget {
  const RewardsLookupPage({super.key});

  @override
  State<RewardsLookupPage> createState() => _RewardsLookupPageState();
}

class _RewardsLookupPageState extends State<RewardsLookupPage> {
  final _phone = TextEditingController();
  String? _error;

  @override
  void dispose() {
    _phone.dispose();
    super.dispose();
  }

  Future<void> _find() async {
    final rewards = context.read<RewardRepository>();
    final digits = _phone.text.replaceAll(RegExp(r'\D'), '');
    if (digits.length != 10) {
      setState(() => _error = 'Enter a 10-digit customer phone.');
      return;
    }
    setState(() => _error = null);
    try {
      await rewards.lookup(digits);
      if (!mounted) return;
      context.goNamed(rewardsCustomerRoute, pathParameters: {'phone': digits});
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = apiErrorMessage(error));
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Rewards',
      bottomNavigationBar: const ManagerBottomNav(index: 2),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Lookup a customer at this branch. Points cannot be redeemed elsewhere.'),
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          TextField(
            controller: _phone,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(labelText: 'Customer phone'),
          ),
          const SizedBox(height: 16),
          FilledButton(onPressed: _find, child: const Text('Find customer')),
          TextButton(
            onPressed: () => context.goNamed(redemptionsRoute),
            child: const Text('All redemptions'),
          ),
        ],
      ),
    );
  }
}
