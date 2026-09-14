import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/api/models/wallet_ledger_entry.dart';
import 'package:safedealz_vendor/data/repositories/wallet_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/screens/wallet/wallet_page.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

class WalletEntryPage extends StatefulWidget {
  const WalletEntryPage({super.key, required this.entryId});
  final String entryId;

  @override
  State<WalletEntryPage> createState() => _WalletEntryPageState();
}

class _WalletEntryPageState extends State<WalletEntryPage> {
  WalletLedgerEntry? _entry;
  String? _error;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    try {
      final wallet = await context.read<WalletRepository>().getMyWallet();
      if (!mounted) return;
      final match = wallet.ledger?.where((item) => item.id == widget.entryId);
      setState(() {
        _entry = match == null || match.isEmpty ? null : match.first;
        _loading = false;
        if (_entry == null) _error = 'That movement was not found.';
      });
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _error = apiErrorMessage(error);
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final entry = _entry;
    return AppPageScaffold(
      title: 'Wallet transaction',
      actions: [
        TextButton(
          onPressed: () => context.goNamed(walletRoute),
          child: const Text('Back'),
        ),
      ],
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (entry != null) ...[
                  Text(ledgerLabel(entry.type), style: Theme.of(context).textTheme.headlineSmall),
                  Text(signedPaise(entry), style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 12),
                  Text('Type: ${entry.type?.json ?? ''}'),
                  Text('Available after: ${formatPaise(entry.availableAfterPaise)}'),
                  Text('Reserved after: ${formatPaise(entry.reservedAfterPaise)}'),
                  if ((entry.reason ?? '').isNotEmpty) Text('Reason: ${entry.reason}'),
                  if ((entry.referenceId ?? '').isNotEmpty) Text('Reference: ${entry.referenceId}'),
                ],
              ],
            ),
    );
  }
}
