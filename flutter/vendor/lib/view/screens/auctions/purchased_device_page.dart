import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/api/models/deal.dart';
import 'package:safedealz_vendor/data/api/models/deal_status.dart';
import 'package:safedealz_vendor/data/repositories/deal_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_vendor/view/widgets/html_kit.dart';
import 'package:safedealz_vendor/view/widgets/vendor_format.dart';

class PurchasedDevicePage extends StatefulWidget {
  const PurchasedDevicePage({super.key, required this.dealId});
  final String dealId;

  @override
  State<PurchasedDevicePage> createState() => _PurchasedDevicePageState();
}

class _PurchasedDevicePageState extends State<PurchasedDevicePage> {
  Deal? _deal;
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        final deal = await context.read<DealRepository>().getDeal(widget.dealId);
        if (mounted) setState(() { _deal = deal; _loading = false; });
      } catch (error) {
        if (mounted) setState(() { _error = apiErrorMessage(error); _loading = false; });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final deal = _deal;
    final branch = asStringMap(deal?.branch);
    final name = branch['name']?.toString() ?? '';
    return AppPageScaffold(
      title: 'Purchased device',
      onBack: () => GoRouter.maybeOf(context)?.goNamed(myBidsRoute),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SdScrollBody(
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (deal != null) ...[
                  SdDeviceCard(
                    title: deal.purchasedDevice?.model ?? 'Won device',
                    subtitle: branchLine(deal.branch, fallback: name),
                    status: dealStatusLabel(deal.status),
                    footerLabel: 'Offer amount',
                    footerValue: formatPaise(deal.amountPaise),
                    onTap: () {},
                  ),
                  Text(deal.status.json ?? deal.status.name, style: Theme.of(context).textTheme.headlineSmall),
                  Text('Paid ${formatPaise(deal.amountPaise)}'),
                  const SizedBox(height: 16),
                  SdCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.location_on_outlined, color: AppTheme.skyBlue),
                            const SizedBox(width: 8),
                            Expanded(child: Text(name.isEmpty ? branchLine(deal.branch) : name, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16))),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          branch['address']?.toString() ?? '',
                          style: const TextStyle(color: AppTheme.muted),
                        ),
                        if ((branch['contactPhone']?.toString() ?? '').isNotEmpty)
                          Text(branch['contactPhone'].toString()),
                        SdDetailRow('Store contact', branch['contactName']?.toString() ?? 'Store manager'),
                        SdDetailRow('Payment', deal.status == DealStatus.paid || deal.status == DealStatus.pickedUp ? 'Paid' : 'Processing'),
                        SdDetailRow('Pickup', deal.status == DealStatus.pickedUp ? 'Picked up' : 'Awaiting pickup'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SdNotice('The store manager marks pickup after physical handover. No pickup deadline is set.'),
                  const Text('The store marks pickup. Vendors cannot mark picked up.'),
                  TextButton(
                    onPressed: () => context.goNamed(reportIssueRoute, queryParameters: {
                      'subjectType': 'deal',
                      'subjectId': deal.id,
                      'returnTo': '/deals/${deal.id}',
                    }),
                    child: const Text('Report an issue'),
                  ),
                ],
              ],
            ),
    );
  }
}
