import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';

class TicketReceiptPage extends StatelessWidget {
  const TicketReceiptPage({super.key, required this.ticketId, this.returnTo});
  final String ticketId;
  final String? returnTo;

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Ticket saved',
      actionBar: FilledButton(
        onPressed: () {
          if (returnTo != null && returnTo!.isNotEmpty) {
            context.go(returnTo!);
          } else {
            context.goNamed(homeRoute);
          }
        },
        child: const Text('Back to source'),
      ),
      body: ListView(
        children: [
          const SdStatusOrb(icon: Icons.check_circle_outline, tone: 'green'),
          const Text('Issue received', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
          const SizedBox(height: 12),
          SdCard(
            child: Column(
              children: [
                SdDetailRow('Ticket', ticketId),
                const SdDetailRow('Status', 'Queued for support'),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text('Ticket $ticketId is saved. Support will follow up in the inbox.'),
        ],
      ),
    );
  }
}
