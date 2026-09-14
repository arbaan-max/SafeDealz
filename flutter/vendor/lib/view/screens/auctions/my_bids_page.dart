import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/api/models/bid.dart';
import 'package:safedealz_vendor/data/api/models/bid_status.dart';
import 'package:safedealz_vendor/data/repositories/auction_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_vendor/view/widgets/html_kit.dart';
import 'package:safedealz_vendor/view/widgets/vendor_bottom_nav.dart';
import 'package:safedealz_vendor/view/widgets/vendor_format.dart';

class MyBidsPage extends StatefulWidget {
  const MyBidsPage({super.key});

  @override
  State<MyBidsPage> createState() => _MyBidsPageState();
}

class _MyBidsPageState extends State<MyBidsPage> {
  List<Bid> _bids = const [];
  String? _error;
  bool _loading = true;
  String _filter = 'all';

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

  bool _matches(Bid bid) {
    return switch (_filter) {
      'submitted' => bid.status == BidStatus.submitted,
      'won' => bid.status == BidStatus.won || bid.status == BidStatus.committed,
      'lost' => bid.status == BidStatus.lost,
      'expired' => bid.status == BidStatus.released,
      _ => true,
    };
  }

  @override
  Widget build(BuildContext context) {
    final rows = _bids.where(_matches).toList();
    return AppPageScaffold(
      title: 'My bids',
      bottomNavigationBar: const VendorBottomNav(index: 1),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SdScrollBody(
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                SdChipBar(
                  chips: const [
                    ('all', 'All'),
                    ('submitted', 'Submitted'),
                    ('won', 'Won'),
                    ('lost', 'Not selected'),
                    ('expired', 'Expired'),
                  ],
                  selected: _filter,
                  onSelected: (value) => setState(() => _filter = value),
                ),
                if (rows.isEmpty) const SdNotice('No bids yet.'),
                for (final bid in rows)
                  SdDeviceCard(
                    title: formatPaise(bid.amountPaise),
                    subtitle: bidStatusLabel(bid.status),
                    status: bidStatusLabel(bid.status),
                    footerLabel: 'Your bid',
                    footerValue: formatPaise(bid.amountPaise),
                    onTap: () => context.goNamed(bidDetailRoute, pathParameters: {'id': bid.id}),
                  ),
                for (final bid in rows) Text(bid.status.json ?? bid.status.name),
              ],
            ),
    );
  }
}
