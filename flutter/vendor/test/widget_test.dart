import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:safedealz_vendor/app/app.dart';

void main() {
  testWidgets('renders the approved Vendor login screen', (tester) async {
    await dotenv.load(fileName: '.env');
    await tester.pumpWidget(const SafeDealzApp());
    await tester.pumpAndSettle();

    expect(find.text('SafeDealz Vendor'), findsOneWidget);
    expect(find.text('Login'), findsNWidgets(2));
    expect(find.textContaining('Forgot'), findsNothing);
    expect(find.textContaining('Remember'), findsNothing);
    expect(find.byTooltip('Show password'), findsOneWidget);
    await tester.tap(find.byTooltip('Show password'));
    await tester.pump();
    expect(find.byTooltip('Hide password'), findsOneWidget);
    final app = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(app.theme?.colorScheme.primary, const Color(0xFF0369A1));
    expect(app.theme?.colorScheme.onPrimary, Colors.white);
    expect(app.theme?.scaffoldBackgroundColor, const Color(0xFFF0F9FF));
  });
}
