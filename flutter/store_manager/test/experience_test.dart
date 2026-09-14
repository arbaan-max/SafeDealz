import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_store_manager/core/route/app_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/repositories/account_repository.dart';
import 'package:safedealz_store_manager/data/repositories/profile_repository.dart';
import 'package:safedealz_store_manager/view/screens/account/account_page.dart';

void main() {
  test('P23 catalogued Store Manager routes resolve', () {
    expect(appRouter.namedLocation(loginRoute), '/login');
    expect(appRouter.namedLocation(homeRoute), '/home');
    expect(appRouter.namedLocation(devicesRoute), '/devices');
    expect(appRouter.namedLocation(deviceNewRoute), '/devices/new');
    expect(appRouter.namedLocation(deviceEditRoute, pathParameters: {'id': 'd1'}), '/devices/d1');
    expect(appRouter.namedLocation(inspectionRoute, pathParameters: {'id': 'd1'}), '/devices/d1/inspection');
    expect(appRouter.namedLocation(evidenceRoute, pathParameters: {'id': 'd1'}), '/devices/d1/evidence');
    expect(appRouter.namedLocation(cameraRoute, pathParameters: {'id': 'd1', 'purpose': 'front'}), '/devices/d1/camera/front');
    expect(appRouter.namedLocation(reviewRoute, pathParameters: {'id': 'd1'}), '/devices/d1/review');
    expect(appRouter.namedLocation(diagnosticScanRoute, pathParameters: {'id': 'd1'}), '/devices/d1/diagnostics');
    expect(appRouter.namedLocation(liveAuctionRoute, pathParameters: {'id': 'a1'}), '/auctions/a1');
    expect(appRouter.namedLocation(offerRoute, pathParameters: {'id': 'a1'}), '/auctions/a1/offer');
    expect(appRouter.namedLocation(offerAcceptRoute, pathParameters: {'id': 'a1'}), '/auctions/a1/accept');
    expect(appRouter.namedLocation(reauctionRoute, pathParameters: {'id': 'a1'}), '/auctions/a1/reauction');
    expect(appRouter.namedLocation(customerVerifyRoute, pathParameters: {'id': 'deal1'}), '/deals/deal1/verify');
    expect(appRouter.namedLocation(paymentStatusRoute, pathParameters: {'id': 'deal1'}), '/deals/deal1/payment');
    expect(appRouter.namedLocation(dealDetailRoute, pathParameters: {'id': 'deal1'}), '/deals/deal1');
    expect(appRouter.namedLocation(pickupRoute, pathParameters: {'id': 'deal1'}), '/deals/deal1/pickup');
    expect(appRouter.namedLocation(deviceHistoryRoute, pathParameters: {'id': 'd1'}), '/devices/d1/history');
    expect(appRouter.namedLocation(rewardsLookupRoute), '/rewards');
    expect(appRouter.namedLocation(redemptionsRoute), '/rewards/redemptions');
    expect(appRouter.namedLocation(rewardsCustomerRoute, pathParameters: {'phone': '9876543210'}), '/rewards/customers/9876543210');
    expect(appRouter.namedLocation(redeemRoute, pathParameters: {'phone': '9876543210'}), '/rewards/customers/9876543210/redeem');
    expect(appRouter.namedLocation(redeemOtpRoute, pathParameters: {'id': 'r1'}), '/rewards/redemptions/r1/otp');
    expect(appRouter.namedLocation(redeemReceiptRoute, pathParameters: {'id': 'r1'}), '/rewards/redemptions/r1/receipt');
    expect(appRouter.namedLocation(notificationsRoute), '/notifications');
    expect(appRouter.namedLocation(reportIssueRoute), '/tickets/new');
    expect(appRouter.namedLocation(ticketReceiptRoute, pathParameters: {'id': 't1'}), '/tickets/t1');
    expect(appRouter.namedLocation(accountRoute), '/account');
  });

  testWidgets('M24 account shows identity, back and sky-blue scaffold', (tester) async {
    await tester.pumpWidget(
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider<AccountRepository>.value(value: MemoryAccountRepository()),
          RepositoryProvider<ProfileRepository>.value(value: MemoryProfileRepository()),
        ],
        child: MaterialApp(theme: AppTheme.lightTheme, home: const AccountPage()),
      ),
    );
    await tester.pump();
    await tester.pump();
    expect(find.text('Kavya'), findsOneWidget);
    expect(find.byTooltip('Back'), findsOneWidget);
    expect(tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor, AppTheme.appBackground);
  });
}
