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
import 'package:safedealz_vendor/view/widgets/html_kit.dart';
import 'package:safedealz_vendor/view/widgets/vendor_bottom_nav.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  WalletDetail? _wallet;
  String? _error;
  bool _loading = true;
  String _filter = 'all';

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

  bool _matches(WalletLedgerEntry entry) {
    return switch (_filter) {
      'recharge' => entry.type == WalletLedgerEntryType.credit,
      'reserved' => entry.type == WalletLedgerEntryType.reserve,
      'paid' => entry.type == WalletLedgerEntryType.commit,
      _ => true,
    };
  }

  @override
  Widget build(BuildContext context) {
    final wallet = _wallet;
    final rows = (wallet?.ledger ?? []).where(_matches);
    return AppPageScaffold(
      title: 'Wallet',
      bottomNavigationBar: const VendorBottomNav(index: 2),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SdScrollBody(
              children: [
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                SdCard(
                  tint: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Available to bid', style: TextStyle(fontSize: 12, color: AppTheme.muted)),
                      Text(
                        formatPaise(wallet?.availablePaise),
                        style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w800, color: AppTheme.skyBlue),
                      ),
                      const SizedBox(height: 18),
                      FilledButton.icon(
                        onPressed: () => context.goNamed(walletRechargeRoute),
                        icon: const Icon(Icons.add),
                        label: const Text('Add money'),
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Reserved for bids', style: TextStyle(fontSize: 11, color: AppTheme.muted)),
                                Text(formatPaise(wallet?.reservedPaise), style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
                                Text('Reserved ${formatPaise(wallet?.reservedPaise)}', style: const TextStyle(fontSize: 11, color: AppTheme.muted)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Payments processing', style: TextStyle(fontSize: 11, color: AppTheme.muted)),
                                Text(formatPaise(wallet?.paymentsProcessingPaise), style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
                                Text('Payments processing ${formatPaise(wallet?.paymentsProcessingPaise)}'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const SdNotice('Your bid plus platform charges are reserved immediately. Unaccepted offers return to your available balance.'),
                SdSectionHead(
                  'Transactions',
                  action: 'Reserved funds',
                  onAction: () => context.goNamed(walletHoldsRoute),
                ),
                SdChipBar(
                  chips: const [
                    ('all', 'All'),
                    ('recharge', 'Recharge'),
                    ('reserved', 'Reserved'),
                    ('paid', 'Paid'),
                  ],
                  selected: _filter,
                  onSelected: (value) => setState(() => _filter = value),
                ),
                if (rows.isEmpty) const SdNotice('No wallet movements yet.'),
                for (final entry in rows) ...[
                  Text(ledgerLabel(entry.type)),
                  SdListRow(
                    icon: Icons.receipt_long_outlined,
                    title: ledgerLabel(entry.type),
                    subtitle: '${signedPaise(entry)} · ${formatPaise(entry.amountPaise)}',
                    onTap: entry.id == null
                        ? () {}
                        : () => context.goNamed(walletEntryRoute, pathParameters: {'id': entry.id!}),
                  ),
                ],
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
