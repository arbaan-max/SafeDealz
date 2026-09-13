import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_vendor/app/app.dart';

void main() {
  testWidgets('renders the SafeDealz Vendor bootstrap screen', (tester) async {
    await tester.pumpWidget(const SafeDealzApp());
    await tester.pumpAndSettle();

    expect(find.text('SafeDealz Vendor'), findsOneWidget);
    final app = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(app.theme?.colorScheme.primary, const Color(0xFF0369A1));
    expect(app.theme?.colorScheme.onPrimary, Colors.white);
  });
}
