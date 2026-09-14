import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/api/models/support_ticket_write.dart';
import 'package:safedealz_vendor/data/api/models/support_ticket_write_reason_code.dart';
import 'package:safedealz_vendor/data/api/models/support_ticket_write_subject_type.dart';
import 'package:safedealz_vendor/data/repositories/ticket_repository.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_vendor/view/widgets/html_kit.dart';

class ReportIssuePage extends StatefulWidget {
  const ReportIssuePage({super.key, required this.subjectType, required this.subjectId, this.returnTo});
  final String subjectType;
  final String subjectId;
  final String? returnTo;

  @override
  State<ReportIssuePage> createState() => _ReportIssuePageState();
}

class _ReportIssuePageState extends State<ReportIssuePage> {
  SupportTicketWriteReasonCode _reason = SupportTicketWriteReasonCode.pickupIssue;
  final _notes = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _notes.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final notes = _notes.text.trim();
    if (notes.isEmpty) {
      setState(() => _error = 'Explain the issue in notes.');
      return;
    }
    setState(() { _busy = true; _error = null; });
    try {
      final ticket = await context.read<TicketRepository>().createTicket(SupportTicketWrite(
        subjectType: SupportTicketWriteSubjectType.fromJson(widget.subjectType),
        subjectId: widget.subjectId,
        reasonCode: _reason,
        notes: notes,
      ));
      if (!mounted) return;
      context.goNamed(ticketReceiptRoute, pathParameters: {'id': ticket.id ?? ''}, extra: widget.returnTo);
    } catch (error) {
      if (!mounted) return;
      setState(() { _busy = false; _error = apiErrorMessage(error); });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Support issue',
      onBack: () => GoRouter.maybeOf(context)?.goNamed(accountRoute),
      actionBar: FilledButton(onPressed: _busy ? null : _submit, child: Text(_busy ? 'Submitting…' : 'Submit issue')),
      body: SdScrollBody(
        children: [
          const Text('Get help with this deal', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
          const SizedBox(height: 8),
          const Text('Your bid and payment history stay attached.', style: TextStyle(color: AppTheme.muted)),
          const SizedBox(height: 20),
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          Text('Linked ${widget.subjectType}'),
          DropdownButtonFormField<SupportTicketWriteReasonCode>(
            initialValue: _reason,
            decoration: const InputDecoration(labelText: 'Issue type'),
            items: const [
              DropdownMenuItem(value: SupportTicketWriteReasonCode.pickupIssue, child: Text('Collection issue')),
              DropdownMenuItem(value: SupportTicketWriteReasonCode.bidIssue, child: Text('Device condition differs')),
              DropdownMenuItem(value: SupportTicketWriteReasonCode.paymentIssue, child: Text('Payment issue')),
              DropdownMenuItem(value: SupportTicketWriteReasonCode.other, child: Text('Other')),
            ],
            onChanged: (value) { if (value != null) setState(() => _reason = value); },
          ),
          const SizedBox(height: 12),
          SdDetailRow('Reference', widget.subjectId),
          const SizedBox(height: 12),
          TextField(
            controller: _notes,
            maxLines: 4,
            decoration: const InputDecoration(labelText: 'Notes', hintText: 'Explain the issue for the support team.'),
          ),
          const SizedBox(height: 8),
          TextButton(onPressed: _busy ? null : _submit, child: const Text('Submit ticket')),
        ],
      ),
    );
  }
}
