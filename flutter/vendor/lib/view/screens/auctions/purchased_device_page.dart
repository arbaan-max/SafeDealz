import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/api/models/deal.dart';
import 'package:safedealz_vendor/data/repositories/deal_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

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
    final branch = deal?.branch is Map ? Map<String, dynamic>.from(deal!.branch as Map) : const <String, dynamic>{};
    return AppPageScaffold(
      title: 'Purchased device',
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (deal != null) ...[
                  Text(deal.status.json ?? deal.status.name, style: Theme.of(context).textTheme.headlineSmall),
                  Text('Paid ${formatPaise(deal.amountPaise)}'),
                  Text(branch['name']?.toString() ?? ''),
                  Text(branch['address']?.toString() ?? ''),
                  Text(branch['contactPhone']?.toString() ?? ''),
                  const SizedBox(height: 12),
                  const Text('The store marks pickup. Vendors cannot mark picked up.'),
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
