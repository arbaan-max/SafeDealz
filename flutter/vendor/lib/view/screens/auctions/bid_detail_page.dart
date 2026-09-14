import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/api/models/bid.dart';
import 'package:safedealz_vendor/data/repositories/auction_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

class BidDetailPage extends StatefulWidget {
  const BidDetailPage({super.key, required this.bidId});
  final String bidId;

  @override
  State<BidDetailPage> createState() => _BidDetailPageState();
}

class _BidDetailPageState extends State<BidDetailPage> {
  Bid? _bid;
  String? _error;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        final bid = await context.read<AuctionRepository>().getBid(widget.bidId);
        if (mounted) setState(() { _bid = bid; _loading = false; });
      } catch (error) {
        if (mounted) setState(() { _error = apiErrorMessage(error); _loading = false; });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final bid = _bid;
    return AppPageScaffold(
      title: 'Bid',
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (bid != null) ...[
                  Text(formatPaise(bid.amountPaise), style: Theme.of(context).textTheme.headlineSmall),
                  Text('Platform fee ${formatPaise(bid.feePaise)}'),
                  Text('Reserved ${formatPaise(bid.totalPaise)}'),
                  Text(bid.status.json ?? bid.status.name),
                  const Text('This bid cannot be edited.'),
                  OutlinedButton(
                    onPressed: () => context.goNamed(reportIssueRoute, queryParameters: {
                      'subjectType': 'bid',
                      'subjectId': bid.id,
                      'returnTo': '/bids/${bid.id}',
                    }),
                    child: const Text('Report issue'),
                  ),
                ],
              ],
            ),
    );
  }
}
