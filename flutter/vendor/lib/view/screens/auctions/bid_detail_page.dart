import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/api/models/bid.dart';
import 'package:safedealz_vendor/data/api/models/bid_status.dart';
import 'package:safedealz_vendor/data/repositories/auction_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_vendor/view/widgets/html_kit.dart';
import 'package:safedealz_vendor/view/widgets/vendor_format.dart';

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
    final status = bid == null ? '' : bidStatusLabel(bid.status);
    final green = bid?.status == BidStatus.won || bid?.status == BidStatus.committed;
    return AppPageScaffold(
      title: 'Bid',
      onBack: () => GoRouter.maybeOf(context)?.goNamed(myBidsRoute),
      actionBar: bid == null
          ? null
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FilledButton(
                  onPressed: () => context.goNamed(liveQueueRoute),
                  child: const Text('Back to queue'),
                ),
                const SizedBox(height: 8),
                OutlinedButton(
                  onPressed: () => context.goNamed(walletRoute),
                  child: const Text('View wallet entry'),
                ),
              ],
            ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SdScrollBody(
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (bid != null) ...[
                  SdStatusOrb(icon: Icons.check_circle_outlined, tone: green ? 'green' : 'sky'),
                  Text(status, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 10),
                  const Text('Your offer is saved for this round.', textAlign: TextAlign.center, style: TextStyle(color: AppTheme.muted)),
                  const SizedBox(height: 21),
                  SdCard(
                    tint: true,
                    child: Column(
                      children: [
                        const Text('Your immutable bid', style: TextStyle(fontSize: 12, color: AppTheme.muted)),
                        Text(formatPaise(bid.amountPaise), style: Theme.of(context).textTheme.headlineSmall),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  SdCard(
                    child: Column(
                      children: [
                        SdDetailRow('Platform fee', formatPaise(bid.feePaise)),
                        Text('Platform fee ${formatPaise(bid.feePaise)}'),
                        SdDetailRow('Funds reserved', formatPaise(bid.totalPaise)),
                        Text('Reserved ${formatPaise(bid.totalPaise)}'),
                        SdDetailRow('Status', status),
                        Text(bid.status.json ?? bid.status.name),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SdNotice('No edits are allowed. You can bid again only if a new auction round starts.'),
                  const Text('This bid cannot be edited.'),
                  TextButton(
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
