import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/redemption.dart';
import 'package:safedealz_store_manager/data/repositories/reward_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/manager_bottom_nav.dart';

class RedemptionsPage extends StatefulWidget {
  const RedemptionsPage({super.key});

  @override
  State<RedemptionsPage> createState() => _RedemptionsPageState();
}

class _RedemptionsPageState extends State<RedemptionsPage> {
  List<Redemption> _rows = const [];
  String? _error;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final rewards = context.read<RewardRepository>();
      try {
        final rows = await rewards.listRedemptions();
        if (mounted) setState(() => _rows = rows);
      } catch (error) {
        if (mounted) setState(() => _error = apiErrorMessage(error));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'All redemptions',
      bottomNavigationBar: const ManagerBottomNav(index: 2),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          if (_rows.isEmpty) const Text('No redemptions at this branch yet.'),
          for (final row in _rows)
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(row.customerName?.isNotEmpty == true ? row.customerName! : (row.customerPhoneMasked ?? 'Customer')),
              subtitle: Text('${row.invoiceNumber ?? ''} · ${row.points ?? 0} pts'),
              onTap: row.customerPhone == null
                  ? null
                  : () => context.goNamed(rewardsCustomerRoute, pathParameters: {'phone': row.customerPhone!}),
            ),
        ],
      ),
    );
  }
}
