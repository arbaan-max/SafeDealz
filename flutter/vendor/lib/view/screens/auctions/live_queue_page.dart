import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/api/models/auction_round.dart';
import 'package:safedealz_vendor/data/api/models/wallet_detail.dart';
import 'package:safedealz_vendor/data/repositories/auction_repository.dart';
import 'package:safedealz_vendor/data/repositories/wallet_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_vendor/view/widgets/html_kit.dart';
import 'package:safedealz_vendor/view/widgets/vendor_bottom_nav.dart';
import 'package:safedealz_vendor/view/widgets/vendor_format.dart';

class LiveQueuePage extends StatefulWidget {
  const LiveQueuePage({super.key});

  @override
  State<LiveQueuePage> createState() => _LiveQueuePageState();
}

class _LiveQueuePageState extends State<LiveQueuePage> {
  List<AuctionRound> _rounds = const [];
  WalletDetail? _wallet;
  String? _error;
  bool _loading = true;
  String _store = 'all';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    final auctions = context.read<AuctionRepository>();
    final wallets = context.read<WalletRepository>();
    try {
      final rounds = await auctions.listLive();
      final wallet = await wallets.getMyWallet();
      if (!mounted) return;
      setState(() {
        _rounds = rounds;
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
    final chains = {
      for (final round in _rounds)
        if (asStringMap(round.branch)['chainName']?.toString().isNotEmpty == true)
          asStringMap(round.branch)['chainName'].toString(),
    }.toList()
      ..sort();
    final visible = _rounds.where((round) {
      if (_store == 'all') return true;
      return asStringMap(round.branch)['chainName']?.toString() == _store;
    }).toList();
    final closing = visible.isEmpty
        ? null
        : visible.reduce((a, b) => a.closesAt.isBefore(b.closesAt) ? a : b);
    return AppPageScaffold(
      title: 'Live queue',
      brand: true,
      bottomNavigationBar: const VendorBottomNav(index: 0),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SdScrollBody(
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('YOUR BUYING DESK', style: TextStyle(fontSize: 11, letterSpacing: 0.8, color: AppTheme.muted)),
                          SizedBox(height: 5),
                          Text('Live queue', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
                        ],
                      ),
                    ),
                    SdStatusBadge('${_rounds.length} devices', tone: 'purple'),
                  ],
                ),
                const SizedBox(height: 16),
                SdCard(
                  tint: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Available to bid', style: TextStyle(fontSize: 12, color: AppTheme.muted)),
                      Text(
                        'Available to bid ${formatPaise(_wallet?.availablePaise)}',
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: AppTheme.skyBlue),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SdChipBar(
                  chips: [
                    ('all', 'All stores'),
                    for (final chain in chains) (chain, chain),
                  ],
                  selected: _store,
                  onSelected: (value) => setState(() => _store = value),
                ),
                Row(
                  children: [
                    const Expanded(child: Text('Closing soon', style: TextStyle(fontSize: 11, color: AppTheme.muted))),
                    Row(
                      children: [
                        const Icon(Icons.schedule, size: 16, color: AppTheme.skyBlue),
                        const SizedBox(width: 6),
                        Text(remainingClock(closing?.closesAt), style: const TextStyle(fontWeight: FontWeight.w800)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                if (visible.isEmpty) const SdNotice('No live devices.'),
                for (final round in visible)
                  SdDeviceCard(
                    title: deviceModel(round.device),
                    subtitle: deviceSubtitle(round.device, round.branch),
                    status: round.ownBid != null ? 'Bid submitted' : 'Live auction',
                    footerLabel: round.ownBid == null ? 'Vendor bidding' : 'Offer amount',
                    footerValue: round.ownBid == null ? 'Open' : formatPaise(round.ownBid!.amountPaise),
                    onTap: () => context.goNamed(auctionDetailRoute, pathParameters: {'id': round.id}),
                  ),
              ],
            ),
    );
  }
}
