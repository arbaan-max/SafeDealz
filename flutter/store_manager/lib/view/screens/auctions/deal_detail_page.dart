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
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';

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
      title: 'Deal detail',
      actionBar: picked
          ? FilledButton(onPressed: () => context.goNamed(devicesRoute), child: const Text('Back to devices'))
          : awaiting
              ? FilledButton(
                  onPressed: () => context.goNamed(pickupRoute, pathParameters: {'id': deal!.id}),
                  child: const Text('Mark picked up'),
                )
              : null,
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (deal != null) ...[
                  SdDeviceCard(
                    title: 'Trade-in device',
                    subtitle: deal.branch is Map ? ((deal.branch as Map)['name']?.toString() ?? '') : '',
                    status: picked ? 'Picked up' : awaiting ? 'Awaiting pickup' : deal.status.json ?? deal.status.name,
                    footerLabel: 'Paid amount',
                    footerValue: formatPaise(deal.amountPaise),
                    onTap: () => context.goNamed(deviceHistoryRoute, pathParameters: {'id': deal.deviceId}),
                  ),
                  Text(picked ? 'Picked up' : awaiting ? 'Awaiting pickup' : deal.status.json ?? deal.status.name, style: Theme.of(context).textTheme.headlineSmall),
                  Text('Paid amount ${formatPaise(deal.amountPaise)}'),
                  Text(deal.branch is Map ? ((deal.branch as Map)['name']?.toString() ?? '') : ''),
                  const SizedBox(height: 12),
                  SdCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SdSectionHead('Pickup location'),
                        Text(deal.branch is Map ? ((deal.branch as Map)['name']?.toString() ?? '') : '', style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
                        SdDetailRow('Pickup status', picked ? 'Picked up' : 'Awaiting pickup'),
                        SdDetailRow('Payment', deal.paymentInstruction?.status?.json ?? 'Paid'),
                      ],
                    ),
                  ),
                  SdNotice(picked ? 'Physical handover confirmed.' : 'There is no pickup deadline. Mark complete only after the vendor collects the device.'),
                  OutlinedButton(
                    onPressed: () => context.goNamed(paymentStatusRoute, pathParameters: {'id': deal.id}),
                    child: const Text('Payment status'),
                  ),
                  OutlinedButton(
                    onPressed: () => context.goNamed(deviceHistoryRoute, pathParameters: {'id': deal.deviceId}),
                    child: const Text('Device history'),
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
