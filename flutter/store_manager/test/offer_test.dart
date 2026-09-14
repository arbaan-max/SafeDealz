import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round_status.dart';
import 'package:safedealz_store_manager/data/api/models/bid.dart';
import 'package:safedealz_store_manager/data/api/models/bid_status.dart';
import 'package:safedealz_store_manager/data/repositories/auction_repository.dart';
import 'package:safedealz_store_manager/view/screens/auctions/offer_page.dart';
import 'package:safedealz_store_manager/view/screens/auctions/reauction_page.dart';

AuctionRound _offer() {
  return AuctionRound(
    id: 'a1',
    deviceId: 'd1',
    branchId: 'b1',
    roundNumber: 1,
    status: AuctionRoundStatus.awaitingAcceptance,
    opensAt: DateTime.now().subtract(const Duration(minutes: 3)),
    closesAt: DateTime.now().subtract(const Duration(minutes: 1)),
    acceptanceDeadlineAt: DateTime.now().add(const Duration(minutes: 10)),
    highestAmountPaise: 1500000,
    winnerBid: const Bid(
      id: 'b1',
      roundId: 'a1',
      deviceId: 'd1',
      vendorAccountId: 'v1',
      amountPaise: 1500000,
      feePaise: 120000,
      totalPaise: 1620000,
      status: BidStatus.won,
    ),
    winnerVendor: const {'displayName': 'Uday', 'email': 'uday@test.dev'},
    device: const {'model': 'iPhone 14'},
  );
}

void main() {
  testWidgets('M11 shows acceptance countdown, amount and vendor', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: RepositoryProvider<AuctionRepository>.value(
          value: MemoryAuctionRepository(_offer()),
          child: const OfferPage(auctionId: 'a1'),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    expect(find.text('Highest offer'), findsOneWidget);
    expect(find.textContaining('Accept within'), findsOneWidget);
    expect(find.text('₹15000'), findsOneWidget);
    expect(find.text('Uday'), findsOneWidget);
    expect(find.text('Accept'), findsOneWidget);
    expect(find.text('Rebid'), findsOneWidget);
    expect(find.text('Decline'), findsOneWidget);
    expect(find.textContaining('No customer KYC yet'), findsOneWidget);
  });

  testWidgets('M11 Other decline requires a reason', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: RepositoryProvider<AuctionRepository>.value(
          value: MemoryAuctionRepository(_offer()),
          child: const OfferPage(auctionId: 'a1'),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    await tester.tap(find.text('Decline'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Customer does not want to do the transaction'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Others').last);
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(FilledButton, 'Decline'));
    await tester.pumpAndSettle();
    expect(find.text('Other requires a reason.'), findsOneWidget);
  });

  testWidgets('M15 shows no-bids reason and restart', (tester) async {
    final round = AuctionRound(
      id: 'a1',
      deviceId: 'd1',
      branchId: 'b1',
      roundNumber: 1,
      status: AuctionRoundStatus.needsReauction,
      opensAt: DateTime.now().subtract(const Duration(minutes: 4)),
      closesAt: DateTime.now().subtract(const Duration(minutes: 1)),
      declineReason: 'No bids received',
      highestAmountPaise: 0,
      device: const {'model': 'iPhone 14'},
    );
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: RepositoryProvider<AuctionRepository>.value(
          value: MemoryAuctionRepository(round),
          child: const ReauctionPage(auctionId: 'a1'),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    expect(find.text('Needs re-auction'), findsOneWidget);
    expect(find.text('No bids received'), findsWidgets);
    expect(find.text('Review & restart'), findsOneWidget);
  });
}
