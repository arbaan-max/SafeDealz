import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/auction_decline_write.dart';
import 'package:safedealz_store_manager/data/api/models/auction_decline_write_reason_code.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round_status.dart';
import 'package:safedealz_store_manager/data/repositories/auction_repository.dart';
import 'package:safedealz_store_manager/view/screens/auctions/money.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({super.key, required this.auctionId});
  final String auctionId;

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  AuctionRound? _round;
  String? _error;
  bool _loading = true;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> _load() async {
    final auctions = context.read<AuctionRepository>();
    try {
      final round = await auctions.getAuction(widget.auctionId);
      if (!mounted) return;
      setState(() {
        _round = round;
        _loading = false;
        _error = null;
      });
      _timer?.cancel();
      if (round.status == AuctionRoundStatus.awaitingAcceptance) {
        _timer = Timer.periodic(const Duration(seconds: 1), (_) {
          if (!mounted) return;
          final deadline = round.acceptanceDeadlineAt;
          if (deadline != null && DateTime.now().isAfter(deadline)) {
            _expire();
          } else {
            setState(() {});
          }
        });
      }
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _error = apiErrorMessage(error);
        _loading = false;
      });
    }
  }

  Future<void> _expire() async {
    _timer?.cancel();
    final auctions = context.read<AuctionRepository>();
    try {
      final round = await auctions.tickAndReload(widget.auctionId);
      if (!mounted) return;
      if (round.status == AuctionRoundStatus.needsReauction) {
        context.goNamed(reauctionRoute, pathParameters: {'id': round.id});
      } else {
        setState(() => _round = round);
      }
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = apiErrorMessage(error));
    }
  }

  Future<void> _decline() async {
    var code = AuctionDeclineWriteReasonCode.customerDeclined;
    final other = TextEditingController();
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setDialogState) {
            return AlertDialog(
              title: const Text('Decline offer'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton<AuctionDeclineWriteReasonCode>(
                    value: code,
                    isExpanded: true,
                    items: const [
                      DropdownMenuItem(
                        value: AuctionDeclineWriteReasonCode.customerDeclined,
                        child: Text('Customer does not want to do the transaction'),
                      ),
                      DropdownMenuItem(
                        value: AuctionDeclineWriteReasonCode.priceUnsatisfied,
                        child: Text('Customer is not satisfied with the price'),
                      ),
                      DropdownMenuItem(
                        value: AuctionDeclineWriteReasonCode.dataBackup,
                        child: Text('Customer data backup issue'),
                      ),
                      DropdownMenuItem(
                        value: AuctionDeclineWriteReasonCode.other,
                        child: Text('Others'),
                      ),
                    ],
                    onChanged: (value) {
                      if (value == null) return;
                      setDialogState(() => code = value);
                    },
                  ),
                  if (code == AuctionDeclineWriteReasonCode.other)
                    TextField(
                      controller: other,
                      decoration: const InputDecoration(labelText: 'Reason'),
                    ),
                ],
              ),
              actions: [
                TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Back')),
                FilledButton(onPressed: () => Navigator.pop(context, true), child: const Text('Decline')),
              ],
            );
          },
        );
      },
    );
    final detail = other.text.trim();
    other.dispose();
    if (confirmed != true || !mounted) return;
    if (code == AuctionDeclineWriteReasonCode.other && detail.isEmpty) {
      setState(() => _error = 'Other requires a reason.');
      return;
    }
    try {
      final round = await context.read<AuctionRepository>().declineAuction(
            widget.auctionId,
            AuctionDeclineWrite(reasonCode: code, reason: detail.isEmpty ? null : detail),
          );
      if (!mounted) return;
      context.goNamed(reauctionRoute, pathParameters: {'id': round.id});
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = apiErrorMessage(error));
    }
  }

  Future<void> _rebid() async {
    final amount = TextEditingController();
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Rebid expectation'),
        content: TextField(
          controller: amount,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Customer expectation', prefixText: '₹ '),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Back')),
          FilledButton(onPressed: () => Navigator.pop(context, true), child: const Text('Start new round')),
        ],
      ),
    );
    final rupees = num.tryParse(amount.text) ?? 0;
    amount.dispose();
    if (confirmed != true || !mounted) return;
    final paise = (rupees * 100).round();
    if (paise < 1) {
      setState(() => _error = 'Enter a positive customer-expectation amount.');
      return;
    }
    try {
      final result = await context.read<AuctionRepository>().rebidAuction(widget.auctionId, paise);
      if (!mounted) return;
      context.goNamed(liveAuctionRoute, pathParameters: {'id': result.next.id});
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = apiErrorMessage(error));
    }
  }

  @override
  Widget build(BuildContext context) {
    final round = _round;
    final remaining = round?.acceptanceDeadlineAt?.difference(DateTime.now()) ?? Duration.zero;
    final open = round?.status == AuctionRoundStatus.awaitingAcceptance && remaining > Duration.zero;
    final mm = remaining.inMinutes.remainder(60).toString().padLeft(2, '0');
    final ss = remaining.inSeconds.remainder(60).toString().padLeft(2, '0');
    final vendor = round?.winnerVendor is Map
        ? Map<String, dynamic>.from(round!.winnerVendor as Map)
        : const <String, dynamic>{};
    final device = round?.device is Map
        ? Map<String, dynamic>.from(round!.device as Map)
        : const <String, dynamic>{};
    return AppPageScaffold(
      title: 'Highest offer',
      showBell: false,
      actionBar: round == null
          ? null
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FilledButton(
                  onPressed: open
                      ? () => context.goNamed(offerAcceptRoute, pathParameters: {'id': round.id})
                      : null,
                  child: const Text('Accept'),
                ),
                const SizedBox(height: 8),
                OutlinedButton(onPressed: open ? _rebid : null, child: const Text('Rebid')),
                SdQuietButton(label: 'Decline', onPressed: open ? _decline : null),
              ],
            ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SdScrollBody(
              children: [
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (round != null) ...[
                  Row(
                    children: [
                      const SdStatusBadge('Selected offer'),
                      const Spacer(),
                      Text(open ? 'Accept within $mm:$ss' : 'Acceptance window ended', style: const TextStyle(fontWeight: FontWeight.w700)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(device['model']?.toString() ?? 'Device', style: Theme.of(context).textTheme.headlineMedium),
                  Text('${device['storage'] ?? ''}'),
                  const SizedBox(height: 16),
                  SdCard(
                    tint: true,
                    child: Column(
                      children: [
                        const Text('Offer to your store', style: TextStyle(fontSize: 12, color: Color(0xFF526079))),
                        Text(formatPaise(round.winnerBid?.amountPaise ?? round.highestAmountPaise), style: const TextStyle(fontSize: 37, fontWeight: FontWeight.w800)),
                        Text(open ? 'Time left to decide' : 'Acceptance window ended'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(vendor['displayName']?.toString() ?? 'Winning vendor', style: const TextStyle(fontWeight: FontWeight.w800)),
                  SdCard(
                    child: SdDetailRow('Platform fee', formatPaise(round.winnerBid?.feePaise)),
                  ),
                  const SizedBox(height: 12),
                  SdDetailRow('Payout account', device['branchName']?.toString() ?? 'Store business account'),
                  const Text('Payout uses the branch business account. No customer KYC yet.'),
                ],
              ],
            ),
    );
  }
}
