import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/redemption.dart';
import 'package:safedealz_store_manager/data/repositories/reward_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';
import 'package:safedealz_store_manager/view/widgets/sd_icons.dart';

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
      showBell: false,
      actionBar: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FilledButton(
            onPressed: () => context.goNamed(redemptionsRoute),
            child: const Text('Done'),
          ),
          if (_row?.id != null)
            SdQuietButton(
              label: 'Report a billing issue',
              onPressed: () => context.goNamed(reportIssueRoute, queryParameters: {
                'subjectType': 'redemption',
                'subjectId': _row!.id!,
                'returnTo': '/rewards/redemptions/${_row!.id}',
              }),
            ),
        ],
      ),
      body: SdScrollBody(
        children: [
          const SdNotice('Apply this discount in the store billing software. SafeDealz does not change the bill.'),
          const SdStatusOrb(icon: SdIcons.check, tone: 'green'),
          const Text('Rewards redeemed', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
          const SizedBox(height: 8),
          const Text('Apply the recorded discount on the customer’s bill.', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF526079))),
          const SizedBox(height: 16),
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          SdCard(
            child: Column(
              children: [
                const Text('Discount applied', style: TextStyle(fontSize: 12, color: Color(0xFF526079))),
                Text('₹${((_row?.discountPaise ?? 0) / 100).toStringAsFixed(0)}', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
                SdDetailRow('Invoice', _row?.invoiceNumber ?? ''),
                SdDetailRow('Points used', '${_row?.points ?? 0} pts'),
                SdDetailRow('Remaining points', '${_row?.remainingPoints ?? 0} pts'),
              ],
            ),
          ),
          Text('${_row?.points ?? 0} pts · ₹${((_row?.discountPaise ?? 0) / 100).toStringAsFixed(0)} off'),
          Text('Invoice ${_row?.invoiceNumber ?? ''}'),
          Text('Remaining ${_row?.remainingPoints ?? 0} pts'),
        ],
      ),
    );
  }
}
