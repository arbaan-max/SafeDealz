import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_vendor/view/widgets/html_kit.dart';

class TicketReceiptPage extends StatelessWidget {
  const TicketReceiptPage({super.key, required this.ticketId, this.returnTo});
  final String ticketId;
  final String? returnTo;

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Ticket submitted',
      onBack: () => GoRouter.maybeOf(context)?.goNamed(myBidsRoute),
      actionBar: FilledButton(
        onPressed: () {
          if (returnTo != null && returnTo!.isNotEmpty) {
            context.go(returnTo!);
          } else {
            context.goNamed(myBidsRoute);
          }
        },
        child: const Text('Back to source'),
      ),
      body: ListView(
        children: [
          const SdStatusOrb(icon: Icons.check_circle_outlined, tone: 'green'),
          Text('Ticket $ticketId is submitted. Return to your bid or purchase.'),
        ],
      ),
    );
  }
}
