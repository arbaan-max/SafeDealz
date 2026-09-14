import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/api/models/wallet_detail.dart';
import 'package:safedealz_vendor/data/api/models/wallet_hold.dart';
import 'package:safedealz_vendor/data/api/models/wallet_hold_status.dart';
import 'package:safedealz_vendor/data/api/models/wallet_ledger_entry.dart';
import 'package:safedealz_vendor/data/api/models/wallet_ledger_entry_type.dart';
import 'package:safedealz_vendor/data/api/models/wallet_recharge.dart';
import 'package:safedealz_vendor/data/api/models/wallet_recharge_status.dart';
import 'package:safedealz_vendor/data/repositories/wallet_repository.dart';
import 'package:safedealz_vendor/data/services/razorpay_checkout_adapter.dart';
import 'package:safedealz_vendor/view/screens/wallet/recharge_page.dart';
import 'package:safedealz_vendor/view/screens/wallet/recharge_status_page.dart';
import 'package:safedealz_vendor/view/screens/wallet/wallet_entry_page.dart';
import 'package:safedealz_vendor/view/screens/wallet/wallet_holds_page.dart';
import 'package:safedealz_vendor/view/screens/wallet/wallet_page.dart';

final _sample = WalletDetail(
  id: 'w1',
  vendorAccountId: 'v1',
  availablePaise: 10000,
  reservedPaise: 2500,
  processingPaise: 0,
  paymentsProcessingPaise: 0,
  currency: 'INR',
  ledger: const [
    WalletLedgerEntry(
      id: 'l1',
      type: WalletLedgerEntryType.reserve,
      amountPaise: 2500,
      availableAfterPaise: 10000,
      reservedAfterPaise: 2500,
      reason: 'bid',
    ),
    WalletLedgerEntry(
      id: 'l0',
      type: WalletLedgerEntryType.credit,
      amountPaise: 12500,
      availableAfterPaise: 12500,
      reservedAfterPaise: 0,
      reason: 'seed',
    ),
  ],
  reservations: const [
    WalletHold(
      id: 'h1',
      amountPaise: 2500,
      status: WalletHoldStatus.held,
      reason: 'bid',
    ),
  ],
);

Widget _wrap(
  Widget child, {
  WalletRepository? wallet,
  RazorpayCheckoutAdapter checkout = const DemoRazorpayCheckoutAdapter(),
}) {
  return MaterialApp(
    theme: AppTheme.lightTheme,
    home: MultiRepositoryProvider(
      providers: [
        RepositoryProvider<WalletRepository>.value(value: wallet ?? MemoryWalletRepository(_sample)),
        RepositoryProvider<RazorpayCheckoutAdapter>.value(value: checkout),
      ],
      child: child,
    ),
  );
}

Widget _router({
  required String location,
  WalletRepository? wallet,
  RazorpayCheckoutAdapter checkout = const DemoRazorpayCheckoutAdapter(),
}) {
  return MultiRepositoryProvider(
    providers: [
      RepositoryProvider<WalletRepository>.value(value: wallet ?? MemoryWalletRepository(_sample)),
      RepositoryProvider<RazorpayCheckoutAdapter>.value(value: checkout),
    ],
    child: MaterialApp.router(
      theme: AppTheme.lightTheme,
      routerConfig: GoRouter(
        initialLocation: location,
        routes: [
          GoRoute(name: walletRoute, path: '/wallet', builder: (_, _) => const WalletPage()),
          GoRoute(name: walletRechargeRoute, path: '/wallet/recharge', builder: (_, _) => const RechargePage()),
          GoRoute(
            name: walletRechargeStatusRoute,
            path: '/wallet/recharge/:id',
            builder: (_, state) => RechargeStatusPage(rechargeId: state.pathParameters['id']!),
          ),
        ],
      ),
    ),
  );
}

void main() {
  testWidgets('V07 shows available, reserved and signed reserve rows', (tester) async {
    await tester.pumpWidget(_wrap(const WalletPage()));
    await tester.pumpAndSettle();
    expect(find.text('Available to bid'), findsOneWidget);
    expect(find.text('₹100'), findsOneWidget);
    expect(find.text('Reserved ₹25'), findsOneWidget);
    expect(find.text('Payments processing ₹0'), findsOneWidget);
    expect(find.text('Reserve'), findsWidgets);
    expect(find.textContaining('-₹25'), findsOneWidget);
    expect(
      tester.widget<FilledButton>(find.widgetWithText(FilledButton, 'Add money')).onPressed,
      isNotNull,
    );
  });

  testWidgets('V11 lists held reservations', (tester) async {
    await tester.pumpWidget(_wrap(const WalletHoldsPage()));
    await tester.pumpAndSettle();
    expect(find.text('₹25'), findsWidgets);
    expect(find.textContaining('bid'), findsWidgets);
  });

  testWidgets('V10 shows a signed ledger movement', (tester) async {
    await tester.pumpWidget(_wrap(const WalletEntryPage(entryId: 'l1')));
    await tester.pumpAndSettle();
    expect(find.text('Reserve'), findsOneWidget);
    expect(find.text('-₹25'), findsOneWidget);
    expect(find.text('Available after: ₹100'), findsOneWidget);
  });

  testWidgets('V08 checkout success opens V09 pending without crediting', (tester) async {
    await tester.pumpWidget(_router(location: '/wallet/recharge'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), '500');
    await tester.tap(find.text('Continue to checkout'));
    await tester.pumpAndSettle();
    expect(find.text('Pending'), findsOneWidget);
    expect(find.textContaining('order_test_1'), findsWidgets);
    expect(find.textContaining('Usable balance does not change'), findsOneWidget);
    expect(find.text('Refresh'), findsOneWidget);
  });

  testWidgets('V09 confirmed copy and failed retry', (tester) async {
    final repo = MemoryWalletRepository(_sample, recharges: {
      'r-ok': const WalletRecharge(
        id: 'r-ok',
        vendorAccountId: 'v1',
        amountPaise: 50000,
        orderId: 'order_ok',
        status: WalletRechargeStatus.confirmed,
        keyId: 'rzp_test_local',
        clientAcknowledged: true,
        paymentId: 'pay_ok',
      ),
    });
    await tester.pumpWidget(_router(location: '/wallet/recharge/r-ok', wallet: repo));
    await tester.pumpAndSettle();
    expect(find.text('Confirmed'), findsOneWidget);
    expect(find.text('Done'), findsOneWidget);

    repo.recharges['r-fail'] = const WalletRecharge(
      id: 'r-fail',
      vendorAccountId: 'v1',
      amountPaise: 10000,
      orderId: 'order_fail',
      status: WalletRechargeStatus.failed,
      keyId: 'rzp_test_local',
      clientAcknowledged: true,
    );
    await tester.pumpWidget(_router(location: '/wallet/recharge/r-fail', wallet: repo));
    await tester.pumpAndSettle();
    expect(find.text('Failed'), findsOneWidget);
    expect(find.text('Try again'), findsOneWidget);
  });

  testWidgets('V08 canceled checkout stays on add money', (tester) async {
    await tester.pumpWidget(
      _router(location: '/wallet/recharge', checkout: const DemoRazorpayCheckoutAdapter(complete: false)),
    );
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), '100');
    await tester.tap(find.text('Continue to checkout'));
    await tester.pumpAndSettle();
    expect(find.text('Checkout was canceled. No money was added.'), findsOneWidget);
    expect(find.text('Add money'), findsOneWidget);
  });
}
