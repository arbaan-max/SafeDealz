import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/deal.dart';
import 'package:safedealz_store_manager/data/repositories/deal_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';

class PickupPage extends StatefulWidget {
  const PickupPage({super.key, required this.dealId});
  final String dealId;

  @override
  State<PickupPage> createState() => _PickupPageState();
}

class _PickupPageState extends State<PickupPage> {
  Deal? _deal;
  bool _busy = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final deals = context.read<DealRepository>();
      try {
        final deal = await deals.getDeal(widget.dealId);
        if (mounted) setState(() => _deal = deal);
      } catch (error) {
        if (mounted) setState(() => _error = apiErrorMessage(error));
      }
    });
  }

  Future<void> _confirm() async {
    final deals = context.read<DealRepository>();
    setState(() { _busy = true; _error = null; });
    try {
      final deal = await deals.markPickup(widget.dealId);
      if (!mounted) return;
      context.goNamed(dealDetailRoute, pathParameters: {'id': deal.id});
    } catch (error) {
      if (!mounted) return;
      setState(() { _busy = false; _error = apiErrorMessage(error); });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Confirm pickup',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          const Text('Confirm physical handover at this store. There is no vendor OTP or deadline.'),
          if (_deal != null) Text('Device ${_deal!.deviceId}'),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: _busy ? null : _confirm,
            child: Text(_busy ? 'Saving…' : 'Confirm handover'),
          ),
        ],
      ),
    );
  }
}
