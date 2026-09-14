import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/redemption.dart';
import 'package:safedealz_store_manager/data/repositories/reward_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';
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
      onBack: () => context.goNamed(rewardsLookupRoute),
      bottomNavigationBar: const ManagerBottomNav(index: 2),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('All redemptions', style: Theme.of(context).textTheme.headlineMedium),
                    const Text('This branch', style: TextStyle(color: Color(0xFF526079))),
                  ],
                ),
              ),
              SdStatusBadge('${_rows.length} customers'),
            ],
          ),
          const SizedBox(height: 12),
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          if (_rows.isEmpty) const Text('No redemptions at this branch yet.'),
          for (final row in _rows)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: SdCard(
                onTap: row.customerPhone == null
                    ? null
                    : () => context.goNamed(rewardsCustomerRoute, pathParameters: {'phone': row.customerPhone!}),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(row.customerName?.isNotEmpty == true ? row.customerName! : (row.customerPhoneMasked ?? 'Customer'), style: const TextStyle(fontWeight: FontWeight.w800)),
                    Text('${row.customerPhoneMasked ?? ''} / ${row.points ?? 0} pts'),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Text('Last invoice', style: TextStyle(fontSize: 11, color: Color(0xFF526079))), Text(row.invoiceNumber ?? '', style: const TextStyle(fontWeight: FontWeight.w700))])),
                        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Text('Discount', style: TextStyle(fontSize: 11, color: Color(0xFF526079))), Text('₹${((row.discountPaise ?? 0) / 100).toStringAsFixed(0)}', style: const TextStyle(fontWeight: FontWeight.w700))])),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
