import 'package:safedealz_store_manager/data/api/clients/operations_client.dart';
import 'package:safedealz_store_manager/data/api/models/notification.dart' as api;

abstract interface class NotificationRepository {
  Future<List<api.Notification>> listInbox();
  Future<api.Notification> markRead(String id);
  Future<void> markAllRead();
}

class NotificationRepositoryImpl implements NotificationRepository {
  NotificationRepositoryImpl(this._client);
  final OperationsClient _client;

  @override
  Future<List<api.Notification>> listInbox() async => (await _client.listNotifications()).data;

  @override
  Future<api.Notification> markRead(String id) async => (await _client.markNotificationRead(id: id)).data;

  @override
  Future<void> markAllRead() async {
    final rows = await listInbox();
    for (final row in rows) {
      if (row.id != null && row.readAt == null) {
        await markRead(row.id!);
      }
    }
  }
}

class MemoryNotificationRepository implements NotificationRepository {
  MemoryNotificationRepository([List<api.Notification>? rows])
      : rows = rows ??
            [
              const api.Notification(id: 'n1', title: 'Store payout paid', body: 'Payout is complete. The device is awaiting pickup.', category: 'payment'),
            ];

  List<api.Notification> rows;

  @override
  Future<List<api.Notification>> listInbox() async => rows;

  @override
  Future<api.Notification> markRead(String id) async {
    rows = rows.map((row) => row.id == id ? row.copyWith(readAt: DateTime.now()) : row).toList();
    return rows.firstWhere((row) => row.id == id);
  }

  @override
  Future<void> markAllRead() async {
    rows = rows.map((row) => row.copyWith(readAt: row.readAt ?? DateTime.now())).toList();
  }
}
