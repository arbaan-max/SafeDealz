import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/notification.dart' as api;
import 'package:safedealz_store_manager/data/repositories/notification_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';

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

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Notifications',
      onBack: () => GoRouter.maybeOf(context)?.goNamed(homeRoute),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Branch events appear after login. External sends use the test provider.'),
          if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          if (_rows.isEmpty) const Text('No notifications yet.'),
          for (final row in _rows)
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(row.title ?? 'Notice'),
              subtitle: Text(row.body ?? ''),
              trailing: row.readAt == null ? const Text('Unread') : const Text('Read'),
              onTap: () => _read(row),
            ),
        ],
      ),
    );
  }
}
