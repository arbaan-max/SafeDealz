import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/api/models/auction_round.dart';
import 'package:safedealz_vendor/data/api/models/wallet_detail.dart';
import 'package:safedealz_vendor/data/repositories/auction_repository.dart';
import 'package:safedealz_vendor/data/repositories/wallet_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

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
    return AppPageScaffold(
      title: 'Live auctions',
      actions: [
        TextButton(onPressed: () => context.goNamed(walletRoute), child: const Text('Wallet')),
        TextButton(onPressed: () => context.goNamed(myBidsRoute), child: const Text('My bids')),
        IconButton(
          onPressed: () => context.goNamed(notificationsRoute),
          icon: const Icon(Icons.notifications_outlined),
          tooltip: 'Notifications',
        ),
      ],
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                Text('Available to bid ${formatPaise(_wallet?.availablePaise)}'),
                const SizedBox(height: 12),
                if (_rounds.isEmpty) const Text('No live devices.'),
                for (final round in _rounds)
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text((round.device is Map ? (round.device as Map)['model'] : null)?.toString() ?? 'Device'),
                    subtitle: Text('Round ${round.roundNumber} · open bidding'),
                    onTap: () => context.goNamed(auctionDetailRoute, pathParameters: {'id': round.id}),
                  ),
              ],
            ),
    );
  }
}
