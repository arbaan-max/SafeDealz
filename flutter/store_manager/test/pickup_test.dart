import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/api/models/deal.dart';
import 'package:safedealz_store_manager/data/api/models/deal_status.dart';
import 'package:safedealz_store_manager/data/api/models/payment_instruction.dart';
import 'package:safedealz_store_manager/data/api/models/payment_instruction_status.dart';
import 'package:safedealz_store_manager/data/repositories/deal_repository.dart';
import 'package:safedealz_store_manager/view/screens/auctions/deal_detail_page.dart';
import 'package:safedealz_store_manager/view/screens/auctions/pickup_page.dart';

void main() {
  testWidgets('M14 and M17 mark pickup without a vendor OTP', (tester) async {
    final deals = MemoryDealRepository(const Deal(
      id: 'deal1',
      auctionRoundId: 'a1',
      deviceId: 'd1',
      amountPaise: 800000,
      status: DealStatus.paid,
      paymentInstruction: PaymentInstruction(status: PaymentInstructionStatus.paid),
    ));
    await tester.pumpWidget(
      MultiRepositoryProvider(
        providers: [RepositoryProvider<DealRepository>.value(value: deals)],
        child: MaterialApp.router(
          theme: AppTheme.lightTheme,
          routerConfig: GoRouter(
            initialLocation: '/deals/deal1',
            routes: [
              GoRoute(
                name: dealDetailRoute,
                path: '/deals/:id',
                builder: (_, state) => DealDetailPage(dealId: state.pathParameters['id']!),
              ),
              GoRoute(
                name: pickupRoute,
                path: '/deals/:id/pickup',
                builder: (_, state) => PickupPage(dealId: state.pathParameters['id']!),
              ),
              GoRoute(
                name: paymentStatusRoute,
                path: '/deals/:id/payment',
                builder: (_, _) => const Scaffold(body: Text('Payment status')),
              ),
              GoRoute(
                name: deviceHistoryRoute,
                path: '/devices/:id/history',
                builder: (_, _) => const Scaffold(body: Text('Device history')),
              ),
            ],
          ),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    expect(find.text('Awaiting pickup'), findsWidgets);
    await tester.tap(find.text('Mark picked up'));
    await tester.pump();
    await tester.pump();
    expect(find.text('Confirm pickup'), findsOneWidget);
    expect(find.textContaining('vendor OTP'), findsOneWidget);
    await tester.tap(find.text('Confirm handover'));
    await tester.pump();
    await tester.pump();
    expect(find.text('Picked up'), findsWidgets);
  });
}
