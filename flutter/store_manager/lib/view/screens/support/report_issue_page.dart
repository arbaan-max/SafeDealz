import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/read_maybe.dart';
import 'package:safedealz_store_manager/data/api/models/support_ticket_write.dart';
import 'package:safedealz_store_manager/data/api/models/support_ticket_write_reason_code.dart';
import 'package:safedealz_store_manager/data/api/models/support_ticket_write_subject_type.dart';
import 'package:safedealz_store_manager/data/repositories/deal_repository.dart';
import 'package:safedealz_store_manager/data/repositories/ticket_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';

class ReportIssuePage extends StatefulWidget {
  const ReportIssuePage({super.key, required this.subjectType, required this.subjectId, this.returnTo});
  final String subjectType;
  final String subjectId;
  final String? returnTo;

  @override
  State<ReportIssuePage> createState() => _ReportIssuePageState();
}

class _ReportIssuePageState extends State<ReportIssuePage> {
  SupportTicketWriteReasonCode _reason = SupportTicketWriteReasonCode.paymentIssue;
  final _notes = TextEditingController();
  String _subjectId = '';
  bool _busy = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _subjectId = widget.subjectId;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (_subjectId.isNotEmpty) return;
      final deals = maybeRead<DealRepository>(context);
      if (deals == null) return;
      try {
        final rows = await deals.listDeals();
        if (mounted && rows.isNotEmpty) setState(() => _subjectId = rows.first.id);
      } catch (_) {}
    });
  }

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
    if (_subjectId.isEmpty) {
      setState(() => _error = 'Open a payment or deal to report an issue.');
      return;
    }
    setState(() { _busy = true; _error = null; });
    try {
      final ticket = await context.read<TicketRepository>().createTicket(SupportTicketWrite(
        subjectType: SupportTicketWriteSubjectType.fromJson(widget.subjectType),
        subjectId: _subjectId,
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
      title: 'Report issue',
      actionBar: FilledButton(onPressed: _busy ? null : _submit, child: Text(_busy ? 'Submitting…' : 'Submit issue')),
      body: ListView(
        children: [
          Text('Tell us what happened', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 7),
          const Text('We’ll keep this issue linked to your transaction.', style: TextStyle(color: Color(0xFF526079))),
          const SizedBox(height: 20),
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          Text('Linked ${widget.subjectType}'),
          const SizedBox(height: 12),
          DropdownButtonFormField<SupportTicketWriteReasonCode>(
            initialValue: _reason,
            decoration: const InputDecoration(labelText: 'Issue type'),
            items: const [
              DropdownMenuItem(value: SupportTicketWriteReasonCode.paymentIssue, child: Text('Payment issue')),
              DropdownMenuItem(value: SupportTicketWriteReasonCode.pickupIssue, child: Text('Pickup issue')),
              DropdownMenuItem(value: SupportTicketWriteReasonCode.deviceIssue, child: Text('Device issue')),
              DropdownMenuItem(value: SupportTicketWriteReasonCode.redemptionIssue, child: Text('Redemption issue')),
              DropdownMenuItem(value: SupportTicketWriteReasonCode.other, child: Text('Other')),
            ],
            onChanged: (value) { if (value != null) setState(() => _reason = value); },
          ),
          SdDetailRow('Reference', _subjectId.isEmpty ? 'No linked transaction' : _subjectId),
          const SizedBox(height: 12),
          TextField(
            controller: _notes,
            maxLines: 4,
            decoration: const InputDecoration(labelText: 'Details', hintText: 'Describe the issue and what you need help with.'),
          ),
          const SizedBox(height: 12),
          const SdNotice('Do not include customer identity-document numbers in these notes.'),
        ],
      ),
    );
  }
}
