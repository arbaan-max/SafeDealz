import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/repositories/ticket_repository.dart';
import 'package:safedealz_store_manager/view/screens/support/report_issue_page.dart';
import 'package:safedealz_store_manager/view/screens/support/ticket_receipt_page.dart';

void main() {
  testWidgets('M23 submits a payment ticket and shows the receipt', (tester) async {
    final tickets = MemoryTicketRepository();
    final router = GoRouter(initialLocation: '/tickets/new', routes: [
      GoRoute(
        name: reportIssueRoute,
        path: '/tickets/new',
        builder: (_, _) => const ReportIssuePage(subjectType: 'deal', subjectId: 'deal1', returnTo: '/deals/deal1'),
      ),
      GoRoute(
        name: ticketReceiptRoute,
        path: '/tickets/:id',
        builder: (_, state) => TicketReceiptPage(ticketId: state.pathParameters['id']!, returnTo: '/deals/deal1'),
      ),
      GoRoute(name: homeRoute, path: '/home', builder: (_, _) => const Scaffold(body: Text('Home'))),
    ]);
    await tester.pumpWidget(
      RepositoryProvider<TicketRepository>.value(
        value: tickets,
        child: MaterialApp.router(theme: AppTheme.lightTheme, routerConfig: router),
      ),
    );
    await tester.pump();
    expect(find.text('Tell us what happened'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'Payout is still processing.');
    await tester.tap(find.text('Submit issue'));
    await tester.pump();
    await tester.pump();
    expect(find.text('Ticket saved'), findsOneWidget);
    expect(find.text('Back to source'), findsOneWidget);
    expect(tickets.lastWrite?.subjectId, 'deal1');
  });
}
