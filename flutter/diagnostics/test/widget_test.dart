import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_diagnostics/app/app.dart';

void main() {
  testWidgets('renders the SafeDealz Diagnostics bootstrap screen', (
    tester,
  ) async {
    await tester.pumpWidget(const SafeDealzApp());
    await tester.pumpAndSettle();

    expect(find.text('SafeDealz Diagnostics'), findsOneWidget);
  });
}
