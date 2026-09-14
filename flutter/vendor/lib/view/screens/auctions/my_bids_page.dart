import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/api/models/bid.dart';
import 'package:safedealz_vendor/data/repositories/auction_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

class MyBidsPage extends StatefulWidget {
  const MyBidsPage({super.key});

  @override
  State<MyBidsPage> createState() => _MyBidsPageState();
}

class _MyBidsPageState extends State<MyBidsPage> {
  List<Bid> _bids = const [];
  String? _error;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        final bids = await context.read<AuctionRepository>().listMyBids();
        if (mounted) setState(() { _bids = bids; _loading = false; });
      } catch (error) {
        if (mounted) setState(() { _error = apiErrorMessage(error); _loading = false; });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'My bids',
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (_bids.isEmpty) const Text('No bids yet.'),
                for (final bid in _bids)
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(formatPaise(bid.amountPaise)),
                    subtitle: Text(bid.status.json ?? bid.status.name),
                    onTap: () => context.goNamed(bidDetailRoute, pathParameters: {'id': bid.id}),
                  ),
              ],
            ),
    );
  }
}
