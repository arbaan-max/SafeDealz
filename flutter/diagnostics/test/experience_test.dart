import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_diagnostics/core/route/app_router.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';

void main() {
  test('P23 catalogued Diagnostics routes resolve', () {
    final router = createAppRouter();
    expect(router.namedLocation(identityRoute), '/');
    expect(router.namedLocation(permissionsRoute), '/permissions');
    expect(router.namedLocation(automatedRoute), '/automated');
    expect(router.namedLocation(touchRoute), '/touch');
    expect(router.namedLocation(buttonsRoute), '/buttons');
    expect(router.namedLocation(sensorsRoute), '/sensors');
    expect(router.namedLocation(reportRoute), '/report');
    expect(router.namedLocation(resultRoute), '/result');
  });
}
