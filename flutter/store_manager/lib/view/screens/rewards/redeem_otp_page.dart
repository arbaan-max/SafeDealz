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

class RedeemOtpPage extends StatefulWidget {
  const RedeemOtpPage({super.key, required this.id});
  final String id;

  @override
  State<RedeemOtpPage> createState() => _RedeemOtpPageState();
}

class _RedeemOtpPageState extends State<RedeemOtpPage> {
  final _otp = TextEditingController();
  Redemption? _row;
  bool _busy = false;
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
  void dispose() {
    _otp.dispose();
    super.dispose();
  }

  Future<void> _verify() async {
    final rewards = context.read<RewardRepository>();
    setState(() { _busy = true; _error = null; });
    try {
      final row = await rewards.confirm(widget.id, _otp.text.trim());
      if (!mounted) return;
      final receiptId = (row.id ?? widget.id).trim();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        context.goNamed(
          redeemReceiptRoute,
          pathParameters: {'id': receiptId.isEmpty ? widget.id : receiptId},
        );
      });
    } catch (error) {
      if (!mounted) return;
      setState(() { _busy = false; _error = apiErrorMessage(error); });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Redemption confirmation',
      onBack: () => Navigator.maybeOf(context)?.maybePop(),
      actionBar: FilledButton(onPressed: _busy ? null : _verify, child: Text(_busy ? 'Verifying…' : 'Verify & redeem')),
      body: SdScrollBody(
        children: [
          const SdStatusOrb(icon: SdIcons.verified),
          const Text('Confirm with the customer', textAlign: TextAlign.center, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800)),
          const SizedBox(height: 8),
          const Text('Enter the OTP sent to the registered mobile number.', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF526079))),
          const SizedBox(height: 16),
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          SdCard(
            child: Column(
              children: [
                SdDetailRow('Invoice', _row?.invoiceNumber ?? ''),
                SdDetailRow('Discount', '₹${((_row?.discountPaise ?? 0) / 100).toStringAsFixed(0)}'),
                SdDetailRow('Points used', '${_row?.points ?? 0} pts'),
              ],
            ),
          ),
          Text('Discount ₹${((_row?.discountPaise ?? 0) / 100).toStringAsFixed(0)} · ${_row?.points ?? 0} pts · invoice ${_row?.invoiceNumber ?? ''}'),
          const SizedBox(height: 12),
          TextField(
            key: const Key('redeem-otp'),
            controller: _otp,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Customer OTP'),
          ),
        ],
      ),
    );
  }
}
