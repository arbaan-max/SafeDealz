import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/api/models/notification.dart' as api;
import 'package:safedealz_vendor/data/repositories/notification_repository.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_vendor/view/widgets/html_kit.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  List<api.Notification> _rows = const [];
  String? _error;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final inbox = context.read<NotificationRepository>();
      try {
        final rows = await inbox.listInbox();
        if (mounted) setState(() => _rows = rows);
      } catch (error) {
        if (mounted) setState(() => _error = apiErrorMessage(error));
      }
    });
  }

  Future<void> _read(api.Notification row) async {
    if (row.id == null) return;
    final inbox = context.read<NotificationRepository>();
    try {
      final updated = await inbox.markRead(row.id!);
      if (!mounted) return;
      setState(() => _rows = _rows.map((item) => item.id == updated.id ? updated : item).toList());
    } catch (error) {
      if (mounted) setState(() => _error = apiErrorMessage(error));
    }
  }

  Future<void> _readAll() async {
    for (final row in _rows.where((item) => item.readAt == null && item.id != null)) {
      await _read(row);
    }
  }

  IconData _icon(String? category) => switch (category) {
        'pickup' => Icons.storefront_outlined,
        'payment' => Icons.check_circle_outlined,
        _ => Icons.bolt_outlined,
      };

  @override
  Widget build(BuildContext context) {
    final offers = _rows.where((row) => row.category != 'pickup').toList();
    final pickups = _rows.where((row) => row.category == 'pickup').toList();
    return AppPageScaffold(
      title: 'Notifications',
      onBack: () => GoRouter.maybeOf(context)?.goNamed(liveQueueRoute),
      body: SdScrollBody(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(onPressed: _rows.isEmpty ? null : _readAll, child: const Text('Mark all read')),
          ),
          const Text('Offer, payout and pickup alerts for assigned stores. No messages appear before login.'),
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          if (_rows.isEmpty) const SdNotice('No notifications yet.'),
          if (offers.isNotEmpty) ...[
            const SdSectionHead('Offers'),
            for (final row in offers)
              SdListRow(
                icon: _icon(row.category),
                title: row.title ?? 'Notice',
                subtitle: row.body ?? '',
                badge: row.readAt == null ? 'Unread' : 'Read',
                onTap: () => _read(row),
              ),
          ],
          if (pickups.isNotEmpty) ...[
            const SdSectionHead('Pickup updates'),
            for (final row in pickups)
              SdListRow(
                icon: _icon(row.category),
                title: row.title ?? 'Notice',
                subtitle: row.body ?? '',
                badge: row.readAt == null ? 'Unread' : 'Read',
                onTap: () => _read(row),
              ),
          ],
          const SdNotice('Vendor notifications are limited to assigned offers, winning-bid decisions and pickup updates.'),
        ],
      ),
    );
  }
}
