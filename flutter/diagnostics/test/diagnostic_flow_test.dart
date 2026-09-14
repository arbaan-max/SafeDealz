import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_diagnostics/app/app.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/utils/theme.dart';
import 'package:safedealz_diagnostics/data/diagnostics/hardware.dart';
import 'package:safedealz_diagnostics/data/diagnostics/models.dart';
import 'package:safedealz_diagnostics/data/diagnostics/store.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:safedealz_diagnostics/view/screens/diagnostics/identity_page.dart';
import 'package:safedealz_diagnostics/view/screens/diagnostics/touch_page.dart';

void main() {
  test('touch coverage allows submit at 108 of 120 and blocks 107', () {
    final blocked = TouchCoverage(cleared: {for (var i = 0; i < 107; i++) i});
    final allowed = TouchCoverage(cleared: {for (var i = 0; i < 108; i++) i});
    expect(blocked.percent, 89);
    expect(blocked.canSubmit, isFalse);
    expect(allowed.percent, 90);
    expect(allowed.canSubmit, isTrue);
    expect(allowed.remaining, 12);
  });

  testWidgets('identifier unavailable disables start', (tester) async {
    await tester.pumpWidget(
      const SafeDealzApp(
        hardware: ConfigurableDiagnosticsHardware(identity: null),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Identifier unavailable'), findsOneWidget);
    expect(
      tester.widget<FilledButton>(find.byKey(const Key('start-diagnostics'))).onPressed,
      isNull,
    );
  });

  testWidgets('denied permissions keep related checks Unavailable', (
    tester,
  ) async {
    await tester.pumpWidget(
      const SafeDealzApp(
        hardware: ConfigurableDiagnosticsHardware(
          permissions: PermissionSnapshot(),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('start-diagnostics')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('allow-permissions')));
    await tester.pumpAndSettle();

    expect(
      find.text('Permissions denied. Hardware checks stay Unavailable.'),
      findsOneWidget,
    );
    expect(find.text('Bluetooth: Unavailable'), findsOneWidget);
    expect(find.text('GPS / network: Unavailable'), findsOneWidget);
    expect(find.text('Magnetometer: Unavailable'), findsOneWidget);
    expect(find.text('Magnetometer: Passed'), findsNothing);
    expect(find.text('Bluetooth: Passed'), findsNothing);
  });

  testWidgets('unavailable hardware is not shown as Passed', (tester) async {
    await _openTouch(tester);
    await tester.tap(find.byKey(const Key('submit-touch')));
    // below 90%, still on touch
    final cubit = tester
        .element(find.byType(TouchPage))
        .read<DiagnosticSessionCubit>();
    for (var i = 0; i < 108; i++) {
      cubit.clearDot(i);
    }
    await tester.pump();
    await tester.tap(find.byKey(const Key('submit-touch')));
    await tester.pumpAndSettle();
    expect(find.text('Home / back / recent: Unavailable'), findsOneWidget);
    expect(find.text('Home / back / recent: Passed'), findsNothing);
    await tester.tap(find.byKey(const Key('complete-buttons')));
    await tester.pumpAndSettle();
    expect(find.text('Proximity: Unavailable'), findsOneWidget);
    expect(find.text('Proximity: Passed'), findsNothing);
  });

  testWidgets('retry resets dots and increments attempts', (tester) async {
    final cubit = await _openTouch(tester);
    cubit.clearDot(0);
    cubit.clearDot(1);
    await tester.pumpAndSettle();
    expect(cubit.state.touch.remaining, 118);
    expect(
      tester.widget<Text>(find.byKey(const Key('touch-remaining'))).data,
      '118 dots remaining',
    );
    await tester.tap(find.byKey(const Key('retry-touch')));
    await tester.pump();
    expect(find.text('Attempt 2'), findsOneWidget);
    expect(find.text('120 dots remaining'), findsOneWidget);
  });

  testWidgets('submit is blocked below 90% and allowed at 90%', (tester) async {
    final cubit = await _openTouch(tester);
    for (var i = 0; i < 107; i++) {
      cubit.clearDot(i);
    }
    await tester.pump();
    await tester.tap(find.byKey(const Key('submit-touch')));
    await tester.pump();
    expect(find.text('Need at least 90% coverage'), findsOneWidget);
    expect(find.byType(TouchPage), findsOneWidget);
    cubit.clearDot(107);
    await tester.pump();
    await tester.tap(find.byKey(const Key('submit-touch')));
    await tester.pumpAndSettle();
    expect(find.text('Physical controls'), findsOneWidget);
  });

  testWidgets('ordinary pages use scaffold token; D04 uses diagnostic surface', (
    tester,
  ) async {
    await tester.pumpWidget(const SafeDealzApp());
    await tester.pumpAndSettle();
    final identityScaffold = tester.widget<Scaffold>(
      find.descendant(
        of: find.byType(IdentityPage),
        matching: find.byType(Scaffold),
      ),
    );
    expect(identityScaffold.backgroundColor, AppTheme.appBackground);

    await _openTouch(tester, pumpApp: false);
    final touchScaffold = tester.widget<Scaffold>(find.byType(Scaffold));
    expect(touchScaffold.backgroundColor, AppTheme.diagnosticCanvas);
    expect(touchScaffold.backgroundColor, isNot(AppTheme.appBackground));
  });

  testWidgets('generate result opens a signed QR for the store scan', (
    tester,
  ) async {
    final store = MemoryDiagnosticStore();
    await tester.pumpWidget(SafeDealzApp(store: store));
    await tester.pumpAndSettle();
    final cubit = tester
        .element(find.byType(IdentityPage))
        .read<DiagnosticSessionCubit>();
    await tester.tap(find.byKey(const Key('start-diagnostics')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('allow-permissions')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('complete-automated')));
    await tester.pumpAndSettle();
    for (var i = 0; i < 108; i++) {
      cubit.clearDot(i);
    }
    await tester.pump();
    await tester.tap(find.byKey(const Key('submit-touch')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('complete-buttons')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('complete-sensors')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('generate-result')));
    await tester.pumpAndSettle();
    expect(
      find.text(
        'Keep this QR visible for the Store Manager scan. This phone does not open Store Manager.',
      ),
      findsOneWidget,
    );
    expect(await store.read(), isNotNull);
    expect(find.byType(QrImageView), findsOneWidget);
  });
}

Future<DiagnosticSessionCubit> _openTouch(
  WidgetTester tester, {
  bool pumpApp = true,
}) async {
  if (pumpApp) {
    await tester.pumpWidget(const SafeDealzApp());
    await tester.pumpAndSettle();
  }
  await tester.tap(find.byKey(const Key('start-diagnostics')));
  await tester.pumpAndSettle();
  await tester.tap(find.byKey(const Key('allow-permissions')));
  await tester.pumpAndSettle();
  await tester.tap(find.byKey(const Key('complete-automated')));
  await tester.pumpAndSettle();
  return tester.element(find.byType(TouchPage)).read<DiagnosticSessionCubit>();
}
