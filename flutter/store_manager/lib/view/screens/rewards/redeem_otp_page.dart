import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/redemption.dart';
import 'package:safedealz_store_manager/data/repositories/reward_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';

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
      context.goNamed(redeemReceiptRoute, pathParameters: {'id': row.id ?? widget.id});
    } catch (error) {
      if (!mounted) return;
      setState(() { _busy = false; _error = apiErrorMessage(error); });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Confirm redemption',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          Text('Discount ₹${((_row?.discountPaise ?? 0) / 100).toStringAsFixed(0)} · ${_row?.points ?? 0} pts · invoice ${_row?.invoiceNumber ?? ''}'),
          TextField(
            key: const Key('redeem-otp'),
            controller: _otp,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Customer OTP'),
          ),
          const SizedBox(height: 16),
          FilledButton(onPressed: _busy ? null : _verify, child: Text(_busy ? 'Verifying…' : 'Verify & redeem')),
        ],
      ),
    );
  }
}
