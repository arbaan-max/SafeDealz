import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/read_maybe.dart';
import 'package:safedealz_store_manager/data/repositories/reward_repository.dart';
import 'package:safedealz_store_manager/data/repositories/store_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';
import 'package:safedealz_store_manager/view/widgets/manager_bottom_nav.dart';
import 'package:safedealz_store_manager/view/widgets/sd_icons.dart';

class RewardsLookupPage extends StatefulWidget {
  const RewardsLookupPage({super.key});

  @override
  State<RewardsLookupPage> createState() => _RewardsLookupPageState();
}

class _RewardsLookupPageState extends State<RewardsLookupPage> {
  final _phone = TextEditingController();
  String? _error;
  String _branch = 'This branch';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        final stores = maybeRead<StoreRepository>(context);
        final branches = await stores?.listAssignedBranches() ?? const [];
        if (mounted && branches.isNotEmpty) setState(() => _branch = branchLabel(branches.first));
      } catch (_) {}
    });
  }

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
      title: 'Rewards lookup',
      bottomNavigationBar: const ManagerBottomNav(index: 2),
      actionBar: FilledButton.icon(
        onPressed: _find,
        icon: const Icon(SdIcons.search),
        label: const Text('Find customer'),
      ),
      body: ListView(
        children: [
          SdCard(
            tint: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(children: [Icon(SdIcons.gift), SizedBox(width: 8), Text('Customer rewards', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))]),
                const SizedBox(height: 9),
                const Text('Find and redeem points earned at your branch.', style: TextStyle(color: Color(0xFF526079))),
              ],
            ),
          ),
          const SizedBox(height: 12),
          SdStatusBadge(_branch),
          const SizedBox(height: 12),
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          TextField(
            controller: _phone,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(labelText: 'Customer mobile number', hintText: 'Enter registered mobile'),
          ),
          const SizedBox(height: 12),
          SdNotice('Only points earned at $_branch can be redeemed here. Points cannot be redeemed elsewhere.'),
          SdListRow(
            icon: SdIcons.receipt,
            title: 'All redemptions',
            subtitle: 'View every redemption at this branch',
            onTap: () => context.goNamed(redemptionsRoute),
          ),
        ],
      ),
    );
  }
}
