import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/repositories/notification_repository.dart';
import 'package:safedealz_store_manager/view/screens/notifications/notifications_page.dart';

void main() {
  testWidgets('S04 shows branch events after login and marks them read', (tester) async {
    await tester.pumpWidget(
      RepositoryProvider<NotificationRepository>.value(
        value: MemoryNotificationRepository(),
        child: MaterialApp(
          theme: AppTheme.lightTheme,
          home: const NotificationsPage(),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
    expect(find.text('Store payout paid'), findsOneWidget);
    expect(find.text('Unread'), findsOneWidget);
    await tester.tap(find.text('Store payout paid'));
    await tester.pump();
    expect(find.text('Read'), findsOneWidget);
  });
}
