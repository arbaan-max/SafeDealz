import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/api/models/wallet_detail.dart';
import 'package:safedealz_vendor/data/api/models/wallet_ledger_entry.dart';
import 'package:safedealz_vendor/data/api/models/wallet_ledger_entry_type.dart';
import 'package:safedealz_vendor/data/repositories/wallet_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  WalletDetail? _wallet;
  String? _error;
  bool _loading = true;
  WalletLedgerEntryType? _filter;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    try {
      final wallet = await context.read<WalletRepository>().getMyWallet();
      if (!mounted) return;
      setState(() {
        _wallet = wallet;
        _loading = false;
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
    final wallet = _wallet;
    final rows = (wallet?.ledger ?? []).where((entry) => _filter == null || entry.type == _filter);
    return AppPageScaffold(
      title: 'Wallet',
      actions: [
        TextButton(
          onPressed: () => context.goNamed(assignedStoresRoute),
          child: const Text('Stores'),
        ),
      ],
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      if (_error != null)
                        Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                      DecoratedBox(
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0F2FE),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Available to bid', style: Theme.of(context).textTheme.titleMedium),
                              Text(
                                formatPaise(wallet?.availablePaise),
                                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                      color: AppTheme.skyBlue,
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text('Reserved ${formatPaise(wallet?.reservedPaise)}'),
                      Text('Payments processing ${formatPaise(wallet?.processingPaise)}'),
                      TextButton(
                        onPressed: () => context.goNamed(walletHoldsRoute),
                        child: const Text('View reserved funds'),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        children: [
                          FilterChip(
                            label: const Text('All'),
                            selected: _filter == null,
                            onSelected: (_) => setState(() => _filter = null),
                          ),
                          FilterChip(
                            label: const Text('Reserve'),
                            selected: _filter == WalletLedgerEntryType.reserve,
                            onSelected: (_) => setState(() => _filter = WalletLedgerEntryType.reserve),
                          ),
                          FilterChip(
                            label: const Text('Release'),
                            selected: _filter == WalletLedgerEntryType.release,
                            onSelected: (_) => setState(() => _filter = WalletLedgerEntryType.release),
                          ),
                          FilterChip(
                            label: const Text('Paid'),
                            selected: _filter == WalletLedgerEntryType.commit,
                            onSelected: (_) => setState(() => _filter = WalletLedgerEntryType.commit),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      if (rows.isEmpty) const Text('No wallet movements yet.'),
                      for (final entry in rows)
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(ledgerLabel(entry.type)),
                          subtitle: Text('${signedPaise(entry)} · ${formatPaise(entry.amountPaise)}'),
                          onTap: entry.id == null
                              ? null
                              : () => context.goNamed(
                                    walletEntryRoute,
                                    pathParameters: {'id': entry.id!},
                                  ),
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: FilledButton(
                    onPressed: null,
                    child: const Text('Add money'),
                  ),
                ),
              ],
            ),
    );
  }
}

String ledgerLabel(WalletLedgerEntryType? type) {
  return switch (type) {
    WalletLedgerEntryType.credit => 'Credit',
    WalletLedgerEntryType.reserve => 'Reserve',
    WalletLedgerEntryType.release => 'Release',
    WalletLedgerEntryType.commit => 'Paid',
    _ => 'Movement',
  };
}

String signedPaise(WalletLedgerEntry entry) {
  final negative = entry.type == WalletLedgerEntryType.reserve || entry.type == WalletLedgerEntryType.commit;
  return '${negative ? '-' : '+'}${formatPaise(entry.amountPaise)}';
}
