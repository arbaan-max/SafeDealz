import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

class TicketReceiptPage extends StatelessWidget {
  const TicketReceiptPage({super.key, required this.ticketId, this.returnTo});
  final String ticketId;
  final String? returnTo;

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Ticket submitted',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Ticket $ticketId is submitted. Return to your bid or purchase.'),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () {
              if (returnTo != null && returnTo!.isNotEmpty) {
                context.go(returnTo!);
              } else {
                context.goNamed(myBidsRoute);
              }
            },
            child: const Text('Back to source'),
          ),
        ],
      ),
    );
  }
}
