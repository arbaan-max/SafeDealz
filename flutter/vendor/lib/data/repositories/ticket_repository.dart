import 'package:safedealz_vendor/data/api/clients/operations_client.dart';
import 'package:safedealz_vendor/data/api/models/support_ticket.dart';
import 'package:safedealz_vendor/data/api/models/support_ticket_write.dart';

abstract interface class TicketRepository {
  Future<SupportTicket> createTicket(SupportTicketWrite body);
}

class TicketRepositoryImpl implements TicketRepository {
  TicketRepositoryImpl(this._client);
  final OperationsClient _client;

  @override
  Future<SupportTicket> createTicket(SupportTicketWrite body) async => (await _client.createTicket(body: body)).data;
}

class MemoryTicketRepository implements TicketRepository {
  MemoryTicketRepository([this.created]);
  SupportTicket? created;
  SupportTicketWrite? lastWrite;

  @override
  Future<SupportTicket> createTicket(SupportTicketWrite body) async {
    lastWrite = body;
    return created ?? SupportTicket(id: 't1', subjectId: body.subjectId);
  }
}
