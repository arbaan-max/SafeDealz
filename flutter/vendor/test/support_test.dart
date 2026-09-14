import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/repositories/ticket_repository.dart';
import 'package:safedealz_vendor/view/screens/support/report_issue_page.dart';
import 'package:safedealz_vendor/view/screens/support/ticket_receipt_page.dart';

void main() {
  testWidgets('V16 submits a linked deal ticket', (tester) async {
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
      GoRoute(name: myBidsRoute, path: '/bids', builder: (_, _) => const Scaffold(body: Text('Bids'))),
    ]);
    await tester.pumpWidget(
      RepositoryProvider<TicketRepository>.value(
        value: tickets,
        child: MaterialApp.router(theme: AppTheme.lightTheme, routerConfig: router),
      ),
    );
    await tester.pump();
    expect(find.text('Support issue'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'Pickup address is incomplete.');
    await tester.tap(find.text('Submit ticket'));
    await tester.pump();
    await tester.pump();
    expect(find.text('Ticket submitted'), findsOneWidget);
    expect(tickets.lastWrite?.subjectId, 'deal1');
  });
}
