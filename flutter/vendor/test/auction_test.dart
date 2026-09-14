import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/api/models/auction_round.dart';
import 'package:safedealz_vendor/data/api/models/auction_round_status.dart';
import 'package:safedealz_vendor/data/api/models/bid.dart';
import 'package:safedealz_vendor/data/api/models/bid_status.dart';
import 'package:safedealz_vendor/data/api/models/deal.dart';
import 'package:safedealz_vendor/data/api/models/deal_status.dart';
import 'package:safedealz_vendor/data/api/models/wallet_detail.dart';
import 'package:safedealz_vendor/data/repositories/auction_repository.dart';
import 'package:safedealz_vendor/data/repositories/deal_repository.dart';
import 'package:safedealz_vendor/data/repositories/wallet_repository.dart';
import 'package:safedealz_vendor/view/screens/auctions/auction_detail_page.dart';
import 'package:safedealz_vendor/view/screens/auctions/bid_detail_page.dart';
import 'package:safedealz_vendor/view/screens/auctions/live_queue_page.dart';
import 'package:safedealz_vendor/view/screens/auctions/my_bids_page.dart';
import 'package:safedealz_vendor/view/screens/auctions/place_bid_page.dart';
import 'package:safedealz_vendor/view/screens/auctions/purchased_device_page.dart';
import 'package:safedealz_vendor/view/screens/wallet/recharge_page.dart';

final _wallet = WalletDetail(
  id: 'w1',
  vendorAccountId: 'v1',
  availablePaise: 1000000,
  reservedPaise: 0,
  processingPaise: 0,
  paymentsProcessingPaise: 0,
  currency: 'INR',
);

final _round = AuctionRound(
  id: 'a1',
  deviceId: 'd1',
  branchId: 'b1',
  roundNumber: 1,
  status: AuctionRoundStatus.live,
  opensAt: DateTime.now(),
  closesAt: DateTime.now().add(const Duration(minutes: 3)),
  bidCount: 0,
  device: const {'model': 'iPhone 14', 'storage': '128 GB', 'platform': 'apple'},
);

final _bid = Bid(
  id: 'bid1',
  roundId: 'a1',
  deviceId: 'd1',
  vendorAccountId: 'v1',
  amountPaise: 800000,
  feePaise: 64000,
  totalPaise: 864000,
  status: BidStatus.submitted,
);

Widget _wrap(Widget child, {AuctionRepository? auctions, WalletRepository? wallet}) {
  return MaterialApp(
    theme: AppTheme.lightTheme,
    home: MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuctionRepository>.value(
          value: auctions ?? MemoryAuctionRepository(rounds: [_round], bids: [_bid], wallet: _wallet),
        ),
        RepositoryProvider<WalletRepository>.value(
          value: wallet ?? MemoryWalletRepository(_wallet),
        ),
      ],
      child: child,
    ),
  );
}

void main() {
  test('fee bands match the approved 8/7/6 percent table', () {
    expect(platformFeePaise(800000), 64000);
    expect(platformFeePaise(2000000), 160000);
    expect(platformFeePaise(2000001), (2000001 * 0.07).round());
    expect(platformFeePaise(3000000), 210000);
    expect(platformFeePaise(3000001), (3000001 * 0.06).round());
  });

  testWidgets('V01 lists live devices and available balance', (tester) async {
    await tester.pumpWidget(_wrap(const LiveQueuePage()));
    await tester.pump();
    await tester.pump();
    expect(find.text('Live auctions'), findsOneWidget);
    expect(find.text('Available to bid ₹10000'), findsOneWidget);
    expect(find.text('iPhone 14'), findsOneWidget);
    expect(find.textContaining('open bidding'), findsOneWidget);
    expect(find.text('My bids'), findsOneWidget);
  });

  testWidgets('V02 shows inspection cards and Place bid', (tester) async {
    await tester.pumpWidget(_wrap(const AuctionDetailPage(auctionId: 'a1')));
    await tester.pump();
    await tester.pump();
    expect(find.text('iPhone 14'), findsOneWidget);
    expect(find.text('Store manager inspection'), findsOneWidget);
    expect(find.text('Device Diagnostics report'), findsOneWidget);
    expect(find.text('Not applicable'), findsOneWidget);
    expect(find.text('Place bid'), findsOneWidget);
  });

  testWidgets('V04 live fee math and insufficient funds send the vendor to Add money', (tester) async {
    await tester.pumpWidget(
      _wrap(
        const PlaceBidPage(auctionId: 'a1'),
        wallet: MemoryWalletRepository(
          const WalletDetail(id: 'w1', vendorAccountId: 'v1', availablePaise: 10000, reservedPaise: 0),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    await tester.enterText(find.widgetWithText(TextField, 'Base price'), '150');
    await tester.pump();
    expect(find.text('Final bid ₹150'), findsOneWidget);
    expect(find.text('Platform fee ₹12'), findsOneWidget);
    expect(find.text('Total reservation ₹162'), findsOneWidget);
    expect(find.textContaining('Not enough balance'), findsNothing);
    expect(find.text('Add money'), findsOneWidget);
  });

  testWidgets('V04 confirm bid opens immutable V06', (tester) async {
    await tester.pumpWidget(
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider<AuctionRepository>.value(
            value: MemoryAuctionRepository(rounds: [_round], wallet: _wallet),
          ),
          RepositoryProvider<WalletRepository>.value(value: MemoryWalletRepository(_wallet)),
        ],
        child: MaterialApp.router(
          theme: AppTheme.lightTheme,
          routerConfig: GoRouter(
            initialLocation: '/auctions/a1/bid',
            routes: [
              GoRoute(
                name: placeBidRoute,
                path: '/auctions/:id/bid',
                builder: (_, state) => PlaceBidPage(auctionId: state.pathParameters['id']!),
              ),
              GoRoute(
                name: bidDetailRoute,
                path: '/bids/:id',
                builder: (_, state) => BidDetailPage(bidId: state.pathParameters['id']!),
              ),
              GoRoute(
                name: walletRechargeRoute,
                path: '/wallet/recharge',
                builder: (_, _) => const RechargePage(),
              ),
            ],
          ),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    await tester.enterText(find.widgetWithText(TextField, 'Base price'), '8000');
    await tester.pump();
    expect(find.text('Platform fee ₹640'), findsOneWidget);
    expect(find.text('Total reservation ₹8640'), findsOneWidget);
    await tester.tap(find.text('Confirm bid'));
    await tester.pump();
    await tester.pump();
    expect(find.text('This bid cannot be edited.'), findsOneWidget);
    expect(find.text('Reserved ₹8640'), findsOneWidget);
  });

  testWidgets('V13 lists personal bids only', (tester) async {
    await tester.pumpWidget(_wrap(const MyBidsPage()));
    await tester.pump();
    await tester.pump();
    expect(find.text('My bids'), findsOneWidget);
    expect(find.text('₹8000'), findsOneWidget);
    expect(find.text('submitted'), findsOneWidget);
  });

  testWidgets('V12 shows store location and no pickup control', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: RepositoryProvider<DealRepository>.value(
          value: MemoryDealRepository(const Deal(
            id: 'deal1',
            auctionRoundId: 'a1',
            deviceId: 'd1',
            amountPaise: 800000,
            status: DealStatus.paid,
            branch: {'name': 'Indiranagar', 'address': '100 Feet Road', 'contactPhone': '0800000000'},
          )),
          child: const PurchasedDevicePage(dealId: 'deal1'),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    expect(find.text('Purchased device'), findsOneWidget);
    expect(find.text('Indiranagar'), findsOneWidget);
    expect(find.text('Mark picked up'), findsNothing);
  });
}
