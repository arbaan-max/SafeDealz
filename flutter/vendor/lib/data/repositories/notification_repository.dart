import 'package:safedealz_vendor/data/api/clients/operations_client.dart';
import 'package:safedealz_vendor/data/api/models/notification.dart' as api;

abstract interface class NotificationRepository {
  Future<List<api.Notification>> listInbox();
  Future<api.Notification> markRead(String id);
}

class NotificationRepositoryImpl implements NotificationRepository {
  NotificationRepositoryImpl(this._client);
  final OperationsClient _client;

  @override
  Future<List<api.Notification>> listInbox() async => (await _client.listNotifications()).data;

  @override
  Future<api.Notification> markRead(String id) async => (await _client.markNotificationRead(id: id)).data;
}

class MemoryNotificationRepository implements NotificationRepository {
  MemoryNotificationRepository([List<api.Notification>? rows])
      : rows = rows ??
            [
              const api.Notification(id: 'n1', title: 'Payout paid', body: 'Your purchase is paid. Collect the device at Indiranagar.', category: 'pickup'),
            ];

  List<api.Notification> rows;

  @override
  Future<List<api.Notification>> listInbox() async => rows;

  @override
  Future<api.Notification> markRead(String id) async {
    rows = rows.map((row) => row.id == id ? row.copyWith(readAt: DateTime.now()) : row).toList();
    return rows.firstWhere((row) => row.id == id);
  }
}
