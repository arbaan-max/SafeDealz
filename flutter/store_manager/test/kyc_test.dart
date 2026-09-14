import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round_status.dart';
import 'package:safedealz_store_manager/data/api/models/bid.dart';
import 'package:safedealz_store_manager/data/api/models/bid_status.dart';
import 'package:safedealz_store_manager/data/api/models/deal.dart';
import 'package:safedealz_store_manager/data/api/models/deal_status.dart';
import 'package:safedealz_store_manager/data/api/models/payment_instruction.dart';
import 'package:safedealz_store_manager/data/api/models/payment_instruction_status.dart';
import 'package:safedealz_store_manager/data/repositories/auction_repository.dart';
import 'package:safedealz_store_manager/data/repositories/catalog_repository.dart';
import 'package:safedealz_store_manager/data/repositories/deal_repository.dart';
import 'package:safedealz_store_manager/view/screens/auctions/accept_confirm_page.dart';
import 'package:safedealz_store_manager/view/screens/auctions/customer_verification_page.dart';
import 'package:safedealz_store_manager/view/screens/auctions/payment_status_page.dart';

final _round = AuctionRound(
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
  winnerVendor: const {'displayName': 'Uday'},
  branch: const {'name': 'Indiranagar'},
);

final _deal = Deal(
  id: 'deal1',
  auctionRoundId: 'a1',
  deviceId: 'd1',
  amountPaise: 1500000,
  status: DealStatus.awaitingCustomerVerification,
  paymentInstruction: const PaymentInstruction(
    status: PaymentInstructionStatus.awaitingCustomerVerification,
    accountNumberMasked: '•••• 4821',
    beneficiaryName: 'PAI',
  ),
);

void main() {
  testWidgets('M12 confirm creates the payout instruction path', (tester) async {
    await tester.pumpWidget(
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider<AuctionRepository>.value(value: MemoryAuctionRepository(_round)),
          RepositoryProvider<DealRepository>.value(value: MemoryDealRepository(_deal)),
          RepositoryProvider<CatalogRepository>.value(value: MemoryCatalogRepository()),
        ],
        child: MaterialApp.router(
          theme: AppTheme.lightTheme,
          routerConfig: GoRouter(
            initialLocation: '/auctions/a1/accept',
            routes: [
              GoRoute(
                name: offerAcceptRoute,
                path: '/auctions/:id/accept',
                builder: (_, state) => AcceptConfirmPage(auctionId: state.pathParameters['id']!),
              ),
              GoRoute(
                name: customerVerifyRoute,
                path: '/deals/:id/verify',
                builder: (_, state) => CustomerVerificationPage(dealId: state.pathParameters['id']!),
              ),
            ],
          ),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    expect(find.text('Accept offer'), findsOneWidget);
    expect(find.textContaining('payout instruction'), findsOneWidget);
    await tester.tap(find.text('Confirm'));
    await tester.pump();
    await tester.pump();
    expect(find.text('Customer verification'), findsOneWidget);
  });

  testWidgets('M08 then M13 opens payment status after verification', (tester) async {
    await tester.pumpWidget(
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider<DealRepository>.value(value: MemoryDealRepository(_deal)),
          RepositoryProvider<CatalogRepository>.value(value: MemoryCatalogRepository()),
        ],
        child: MaterialApp.router(
          theme: AppTheme.lightTheme,
          routerConfig: GoRouter(
            initialLocation: '/deals/deal1/verify',
            routes: [
              GoRoute(
                name: customerVerifyRoute,
                path: '/deals/:id/verify',
                builder: (_, state) => CustomerVerificationPage(dealId: state.pathParameters['id']!),
              ),
              GoRoute(
                name: paymentStatusRoute,
                path: '/deals/:id/payment',
                builder: (_, state) => PaymentStatusPage(dealId: state.pathParameters['id']!),
              ),
            ],
          ),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    await tester.enterText(find.widgetWithText(TextField, 'Customer name'), 'Anita');
    await tester.enterText(find.widgetWithText(TextField, 'Phone'), '9876543210');
    await tester.enterText(find.widgetWithText(TextField, 'OTP'), '123456');
    await tester.tap(find.text('Capture ID'));
    await tester.pump();
    await tester.tap(find.text('Capture portrait'));
    await tester.pump();
    await tester.enterText(find.widgetWithText(TextField, 'Model'), 'Pixel 8');
    await tester.tap(find.text('Android'));
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.text('Complete verification'), 400, scrollable: find.byType(Scrollable).first);
    await tester.tap(find.text('Complete verification'));
    await tester.pump();
    await tester.pump();
    expect(find.text('Payment status'), findsOneWidget);
    expect(find.textContaining('Processing'), findsWidgets);
    expect(find.text('Refresh'), findsOneWidget);
    expect(find.text('Approve payout'), findsNothing);
  });

  testWidgets('M08 hides Apple RAM and fills editable scanned IMEIs', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<DealRepository>.value(value: MemoryDealRepository(_deal)),
            RepositoryProvider<CatalogRepository>.value(value: MemoryCatalogRepository()),
          ],
          child: const CustomerVerificationPage(dealId: 'deal1'),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    expect(find.text('Customer verification'), findsOneWidget);
    expect(find.text('RAM'), findsNothing);
    await tester.tap(find.text('Android'));
    await tester.pumpAndSettle();
    expect(find.text('RAM'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('Scan IMEIs'),
      300,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.tap(find.text('Scan IMEIs'));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(TextField, 'IMEI 1'), findsOneWidget);
    expect(tester.widget<TextField>(find.widgetWithText(TextField, 'IMEI 1')).controller?.text, '353456789012345');
    expect(tester.widget<TextField>(find.widgetWithText(TextField, 'IMEI 2')).controller?.text, '353456789012346');
    expect(find.text('Complete verification'), findsOneWidget);
  });
}
