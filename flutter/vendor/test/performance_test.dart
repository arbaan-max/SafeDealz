import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/repositories/performance_repository.dart';
import 'package:safedealz_vendor/view/screens/performance/performance_page.dart';

void main() {
  testWidgets('V14 shows bids, wins and win rate', (tester) async {
    await tester.pumpWidget(
      RepositoryProvider<PerformanceRepository>.value(
        value: MemoryPerformanceRepository(),
        child: MaterialApp(theme: AppTheme.lightTheme, home: const PerformancePage()),
      ),
    );
    await tester.pump();
    await tester.pump();
    expect(find.text('Performance'), findsOneWidget);
    expect(find.text('Bids 4'), findsOneWidget);
    expect(find.text('Wins 1'), findsOneWidget);
    expect(find.text('Win rate 25%'), findsOneWidget);
  });
}
