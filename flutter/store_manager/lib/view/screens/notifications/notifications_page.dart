import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/notification.dart' as api;
import 'package:safedealz_store_manager/data/repositories/notification_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';

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
      try {
        final rows = await context.read<NotificationRepository>().listInbox();
        if (mounted) setState(() => _rows = rows);
      } catch (error) {
        if (mounted) setState(() => _error = apiErrorMessage(error));
      }
    });
  }

  Future<void> _read(api.Notification row) async {
    if (row.id == null) return;
    try {
      final updated = await context.read<NotificationRepository>().markRead(row.id!);
      if (!mounted) return;
      setState(() => _rows = _rows.map((item) => item.id == updated.id ? updated : item).toList());
    } catch (error) {
      if (mounted) setState(() => _error = apiErrorMessage(error));
    }
  }

  Future<void> _readAll() async {
    final inbox = context.read<NotificationRepository>();
    try {
      await inbox.markAllRead();
      final rows = await inbox.listInbox();
      if (!mounted) return;
      setState(() => _rows = rows);
    } catch (error) {
      if (mounted) setState(() => _error = apiErrorMessage(error));
    }
  }

  IconData _icon(String? category) => switch (category) {
        'payment' => Icons.account_balance_outlined,
        'pickup' => Icons.storefront_outlined,
        'reward' => Icons.card_giftcard_outlined,
        _ => Icons.schedule,
      };

  @override
  Widget build(BuildContext context) {
    final unread = _rows.where((row) => row.readAt == null).toList();
    final read = _rows.where((row) => row.readAt != null).toList();
    return AppPageScaffold(
      title: 'Notifications',
      onBack: () => GoRouter.maybeOf(context)?.goNamed(homeRoute),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(onPressed: _rows.isEmpty ? null : _readAll, child: const Text('Mark all read')),
          ),
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          if (_rows.isEmpty) const SdNotice('No notifications yet.'),
          if (unread.isNotEmpty) ...[
            const SdSectionHead('Today'),
            for (final row in unread)
              SdListRow(
                icon: _icon(row.category),
                title: row.title ?? 'Notice',
                subtitle: row.body ?? '',
                badge: 'Unread',
                onTap: () => _read(row),
              ),
          ],
          if (read.isNotEmpty) ...[
            const SdSectionHead('Earlier'),
            for (final row in read)
              SdListRow(
                icon: _icon(row.category),
                title: row.title ?? 'Notice',
                subtitle: row.body ?? '',
                badge: 'Read',
                onTap: () => _read(row),
              ),
          ],
        ],
      ),
    );
  }
}
