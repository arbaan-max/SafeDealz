import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round_status.dart';
import 'package:safedealz_store_manager/data/repositories/auction_repository.dart';
import 'package:safedealz_store_manager/view/screens/auctions/live_auction_page.dart';

void main() {
  testWidgets('M10 shows bidding countdown, round and empty bid state', (tester) async {
    final round = AuctionRound(
      id: 'a1',
      deviceId: 'd1',
      branchId: 'b1',
      roundNumber: 1,
      status: AuctionRoundStatus.live,
      opensAt: DateTime.now(),
      closesAt: DateTime.now().add(const Duration(minutes: 3)),
      bidCount: 0,
      highestAmountPaise: 0,
      device: const {'model': 'iPhone 14', 'storage': '128 GB'},
    );
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: RepositoryProvider<AuctionRepository>.value(
          value: MemoryAuctionRepository(round),
          child: const LiveAuctionPage(auctionId: 'a1'),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    expect(find.text('iPhone 14'), findsOneWidget);
    expect(find.text('Round 1'), findsOneWidget);
    expect(find.textContaining('Bidding ends in'), findsOneWidget);
    expect(find.text('No bids yet'), findsOneWidget);
    expect(find.text('Cancel auction'), findsOneWidget);
  });
}
