import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/repositories/reward_repository.dart';
import 'package:safedealz_store_manager/view/screens/rewards/redeem_otp_page.dart';
import 'package:safedealz_store_manager/view/screens/rewards/redeem_page.dart';
import 'package:safedealz_store_manager/view/screens/rewards/redeem_receipt_page.dart';
import 'package:safedealz_store_manager/view/screens/rewards/reward_customer_page.dart';
import 'package:safedealz_store_manager/view/screens/rewards/rewards_lookup_page.dart';
import 'package:safedealz_store_manager/view/screens/rewards/redemptions_page.dart';

void main() {
  testWidgets('M18-M22 lookup, redeem, OTP and receipt stay on this branch', (tester) async {
    final rewards = MemoryRewardRepository();
    await tester.pumpWidget(
      MultiRepositoryProvider(
        providers: [RepositoryProvider<RewardRepository>.value(value: rewards)],
        child: MaterialApp.router(
          theme: AppTheme.lightTheme,
          routerConfig: GoRouter(
            initialLocation: '/rewards',
            routes: [
              GoRoute(name: rewardsLookupRoute, path: '/rewards', builder: (_, _) => const RewardsLookupPage()),
              GoRoute(name: redemptionsRoute, path: '/rewards/redemptions', builder: (_, _) => const RedemptionsPage()),
              GoRoute(
                name: rewardsCustomerRoute,
                path: '/rewards/customers/:phone',
                builder: (_, state) => RewardCustomerPage(phone: state.pathParameters['phone']!),
              ),
              GoRoute(
                name: redeemRoute,
                path: '/rewards/customers/:phone/redeem',
                builder: (_, state) => RedeemPage(phone: state.pathParameters['phone']!),
              ),
              GoRoute(
                name: redeemOtpRoute,
                path: '/rewards/redemptions/:id/otp',
                builder: (_, state) => RedeemOtpPage(id: state.pathParameters['id']!),
              ),
              GoRoute(
                name: redeemReceiptRoute,
                path: '/rewards/redemptions/:id/receipt',
                builder: (_, state) => RedeemReceiptPage(id: state.pathParameters['id']!),
              ),
              GoRoute(name: homeRoute, path: '/home', builder: (_, _) => const Scaffold(body: Text('Home'))),
              GoRoute(name: devicesRoute, path: '/devices', builder: (_, _) => const Scaffold(body: Text('Devices'))),
            ],
          ),
        ),
      ),
    );
    await tester.pump();
    expect(find.textContaining('cannot be redeemed elsewhere'), findsOneWidget);
    await tester.enterText(find.byType(TextField), '9876543210');
    await tester.tap(find.text('Find customer'));
    await tester.pump();
    await tester.pump();
    expect(find.text('Redeem rewards'), findsOneWidget);
    await tester.tap(find.text('Redeem rewards'));
    await tester.pump();
    await tester.pump();
    expect(find.text('Invoice number'), findsOneWidget);
    await tester.enterText(find.byType(TextField).at(0), 'INV-1');
    await tester.enterText(find.byType(TextField).at(1), '500');
    await tester.enterText(find.byType(TextField).at(2), '100');
    await tester.tap(find.text('Continue'));
    await tester.pump();
    await tester.pump();
    expect(find.text('Verify & redeem'), findsOneWidget);
    await tester.enterText(find.byKey(const Key('redeem-otp')), '123456');
    await tester.tap(find.text('Verify & redeem'));
    await tester.pump();
    await tester.pump();
    expect(find.textContaining('billing software'), findsOneWidget);
    expect(find.text('Done'), findsOneWidget);
  });
}
