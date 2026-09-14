import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/api/models/auction_round.dart';
import 'package:safedealz_vendor/data/api/models/auction_round_status.dart';
import 'package:safedealz_vendor/data/repositories/auction_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_vendor/view/widgets/html_kit.dart';
import 'package:safedealz_vendor/view/widgets/vendor_format.dart';

class AuctionDetailPage extends StatefulWidget {
  const AuctionDetailPage({super.key, required this.auctionId});
  final String auctionId;

  @override
  State<AuctionDetailPage> createState() => _AuctionDetailPageState();
}

class _AuctionDetailPageState extends State<AuctionDetailPage> {
  AuctionRound? _round;
  String? _error;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    try {
      final round = await context.read<AuctionRepository>().getAuction(widget.auctionId);
      if (!mounted) return;
      setState(() {
        _round = round;
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
    final round = _round;
    final device = asStringMap(round?.device);
    final alreadyBid = round?.ownBid != null;
    final apple = (device['platform']?.toString() ?? '').toLowerCase() == 'apple';
    final imported = device['diagnosticImported'] == true;
    return AppPageScaffold(
      title: 'Device',
      onBack: () => GoRouter.maybeOf(context)?.goNamed(liveQueueRoute),
      actionBar: round == null
          ? null
          : alreadyBid
              ? FilledButton(
                  onPressed: () => context.goNamed(bidDetailRoute, pathParameters: {'id': round.ownBid!.id}),
                  child: const Text('View your bid'),
                )
              : round.status == AuctionRoundStatus.live
                  ? FilledButton(
                      onPressed: () => context.goNamed(placeBidRoute, pathParameters: {'id': round.id}),
                      child: const Text('Place bid'),
                    )
                  : null,
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SdScrollBody(
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (round != null) ...[
                  Row(
                    children: [
                      const SdStatusBadge('Live auction', tone: 'purple'),
                      const Spacer(),
                      Row(
                        children: [
                          const Icon(Icons.schedule, size: 16, color: AppTheme.skyBlue),
                          const SizedBox(width: 6),
                          Text(remainingClock(round.closesAt), style: const TextStyle(fontWeight: FontWeight.w800)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(deviceModel(round.device), style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 6),
                  Text(
                    '${deviceStorage(round.device)} / ${branchLine(round.branch)}',
                    style: const TextStyle(color: AppTheme.muted),
                  ),
                  const SizedBox(height: 17),
                  Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(minHeight: 175),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppTheme.surface,
                      border: Border.all(color: AppTheme.border),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        const Icon(Icons.phone_iphone, size: 36, color: AppTheme.skyBlue),
                        const SizedBox(height: 8),
                        const Text('DEMO DEVICE EVIDENCE', style: TextStyle(fontSize: 11, letterSpacing: 0.6, color: AppTheme.muted)),
                        const SizedBox(height: 12),
                        OutlinedButton.icon(
                          onPressed: () => GoRouter.maybeOf(context)?.goNamed(
                            mediaViewerRoute,
                            queryParameters: {
                              'label': 'Front',
                              'url': device['mediaUrl']?.toString() ?? '',
                            },
                          ),
                          icon: const Icon(Icons.play_arrow_outlined),
                          label: const Text('Inspect media'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  SdCard(
                    tint: true,
                    child: Column(
                      children: [
                        const SdDetailRow('Auction pricing', 'Enter your own vendor bid'),
                        if (round.expectedAmountPaise != null)
                          SdDetailRow('Customer expectation', '${formatPaise(round.expectedAmountPaise)} / not a minimum'),
                        if (!apple)
                          SdDetailRow('Diagnostics', imported ? 'Report imported' : 'Report pending'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  SdCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SdSectionHead('Device specifications'),
                        SdDetailRow('Model', deviceModel(round.device)),
                        SdDetailRow('Storage', deviceStorage(round.device)),
                        SdDetailRow('IMEI 1', maskImei(device['imei']?.toString() ?? device['imei1']?.toString())),
                        SdDetailRow('IMEI 2', maskImei(device['imei2']?.toString())),
                        if (apple)
                          SdDetailRow('Battery health', device['batteryHealth']?.toString() ?? 'Not recorded')
                        else
                          SdDetailRow('RAM', device['ram']?.toString() ?? '8 GB'),
                        Text('${device['storage'] ?? ''} · ${device['platform'] ?? ''}'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  SdCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Store manager inspection', style: TextStyle(fontWeight: FontWeight.w800)),
                        SizedBox(height: 8),
                        Text(
                          'Manual M04 answers, recorded independently from device diagnostics.',
                          style: TextStyle(color: AppTheme.muted, fontSize: 12),
                        ),
                        SizedBox(height: 8),
                        Text('Complete'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  SdCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Device Diagnostics report', style: TextStyle(fontWeight: FontWeight.w800)),
                        const SizedBox(height: 8),
                        Text(apple ? 'Not applicable' : (imported ? 'Imported' : 'Pending')),
                        if (apple) const SdNotice('Not applicable for Apple. See the store manager inspection above.'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SdSectionHead('Collection store'),
                  SdCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(branchLine(round.branch), style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
                        const SizedBox(height: 6),
                        Text(
                          asStringMap(round.branch)['address']?.toString() ?? 'Assigned branch',
                          style: const TextStyle(color: AppTheme.muted),
                        ),
                        TextButton(
                          onPressed: () => context.goNamed(assignedStoresRoute),
                          child: const Text('Store details'),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
    );
  }
}
