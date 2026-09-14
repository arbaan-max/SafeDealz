import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_vendor/core/route/app_router.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/repositories/profile_repository.dart';
import 'package:safedealz_vendor/view/screens/account/account_page.dart';
import 'package:safedealz_vendor/view/screens/auctions/media_viewer_page.dart';

void main() {
  test('P23 catalogued Vendor routes resolve', () {
    expect(appRouter.namedLocation(loginRoute), '/login');
    expect(appRouter.namedLocation(assignedStoresRoute), '/stores');
    expect(appRouter.namedLocation(walletRoute), '/wallet');
    expect(appRouter.namedLocation(walletEntryRoute, pathParameters: {'id': 'e1'}), '/wallet/entries/e1');
    expect(appRouter.namedLocation(walletHoldsRoute), '/wallet/holds');
    expect(appRouter.namedLocation(walletRechargeRoute), '/wallet/recharge');
    expect(appRouter.namedLocation(walletRechargeStatusRoute, pathParameters: {'id': 'r1'}), '/wallet/recharge/r1');
    expect(appRouter.namedLocation(liveQueueRoute), '/live');
    expect(appRouter.namedLocation(auctionDetailRoute, pathParameters: {'id': 'a1'}), '/auctions/a1');
    expect(appRouter.namedLocation(placeBidRoute, pathParameters: {'id': 'a1'}), '/auctions/a1/bid');
    expect(appRouter.namedLocation(myBidsRoute), '/bids');
    expect(appRouter.namedLocation(bidDetailRoute, pathParameters: {'id': 'b1'}), '/bids/b1');
    expect(appRouter.namedLocation(purchasedDeviceRoute, pathParameters: {'id': 'd1'}), '/deals/d1');
    expect(appRouter.namedLocation(notificationsRoute), '/notifications');
    expect(appRouter.namedLocation(performanceRoute), '/performance');
    expect(appRouter.namedLocation(reportIssueRoute), '/tickets/new');
    expect(appRouter.namedLocation(ticketReceiptRoute, pathParameters: {'id': 't1'}), '/tickets/t1');
    expect(appRouter.namedLocation(accountRoute), '/account');
    expect(appRouter.namedLocation(mediaViewerRoute), '/media');
  });

  testWidgets('V17 account and V03 missing-media empty state use sky blue and Back', (tester) async {
    await tester.pumpWidget(
      RepositoryProvider<ProfileRepository>.value(
        value: MemoryProfileRepository(),
        child: MaterialApp(
          theme: AppTheme.lightTheme,
          home: const AccountPage(),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    expect(find.text('Account'), findsWidgets);
    expect(find.text('Uday'), findsOneWidget);
    expect(find.text('Logout'), findsOneWidget);
    expect(tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor, AppTheme.appBackground);

    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: const MediaViewerPage(label: 'Front'),
      ),
    );
    expect(find.text('Remote media is missing. Retry from the device detail.'), findsOneWidget);
    expect(find.byTooltip('Back'), findsOneWidget);
  });
}
