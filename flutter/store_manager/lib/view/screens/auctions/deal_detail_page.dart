import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/deal.dart';
import 'package:safedealz_store_manager/data/api/models/deal_status.dart';
import 'package:safedealz_store_manager/data/repositories/deal_repository.dart';
import 'package:safedealz_store_manager/view/screens/auctions/money.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';

class DealDetailPage extends StatefulWidget {
  const DealDetailPage({super.key, required this.dealId});
  final String dealId;

  @override
  State<DealDetailPage> createState() => _DealDetailPageState();
}

class _DealDetailPageState extends State<DealDetailPage> {
  Deal? _deal;
  bool _loading = true;
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
      setState(() { _deal = deal; _loading = false; _error = null; });
    } catch (error) {
      if (!mounted) return;
      setState(() { _error = apiErrorMessage(error); _loading = false; });
    }
  }

  @override
  Widget build(BuildContext context) {
    final deal = _deal;
    final awaiting = deal?.status == DealStatus.paid;
    final picked = deal?.status == DealStatus.pickedUp;
    return AppPageScaffold(
      title: 'Deal',
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (deal != null) ...[
                  Text(picked ? 'Picked up' : awaiting ? 'Awaiting pickup' : deal.status.json ?? deal.status.name,
                      style: Theme.of(context).textTheme.headlineSmall),
                  Text('Paid amount ${formatPaise(deal.amountPaise)}'),
                  Text(deal.branch is Map ? ((deal.branch as Map)['name']?.toString() ?? '') : ''),
                  const SizedBox(height: 16),
                  OutlinedButton(
                    onPressed: () => context.goNamed(paymentStatusRoute, pathParameters: {'id': deal.id}),
                    child: const Text('Payment status'),
                  ),
                  OutlinedButton(
                    onPressed: () => context.goNamed(deviceHistoryRoute, pathParameters: {'id': deal.deviceId}),
                    child: const Text('Device history'),
                  ),
                  if (awaiting)
                    FilledButton(
                      onPressed: () => context.goNamed(pickupRoute, pathParameters: {'id': deal.id}),
                      child: const Text('Mark picked up'),
                    ),
                  OutlinedButton(
                    onPressed: () => context.goNamed(reportIssueRoute, queryParameters: {
                      'subjectType': 'deal',
                      'subjectId': deal.id,
                      'returnTo': '/deals/${deal.id}',
                    }),
                    child: const Text('Report issue'),
                  ),
                ],
              ],
            ),
    );
  }
}
