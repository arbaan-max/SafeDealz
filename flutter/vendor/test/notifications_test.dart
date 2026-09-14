import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/repositories/notification_repository.dart';
import 'package:safedealz_vendor/view/screens/notifications/notifications_page.dart';

void main() {
  testWidgets('S04 vendor inbox shows pickup alerts after login', (tester) async {
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
    expect(find.text('Payout paid'), findsOneWidget);
    expect(find.textContaining('before login'), findsOneWidget);
  });
}
