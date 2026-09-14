import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';

class TicketReceiptPage extends StatelessWidget {
  const TicketReceiptPage({super.key, required this.ticketId, this.returnTo});
  final String ticketId;
  final String? returnTo;

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Ticket saved',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Ticket $ticketId is saved. Support will follow up in the inbox.'),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () {
              if (returnTo != null && returnTo!.isNotEmpty) {
                context.go(returnTo!);
              } else {
                context.goNamed(homeRoute);
              }
            },
            child: const Text('Back to source'),
          ),
        ],
      ),
    );
  }
}
