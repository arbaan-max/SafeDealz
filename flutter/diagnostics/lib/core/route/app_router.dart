import 'package:go_router/go_router.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';
import 'package:safedealz_diagnostics/view/screens/diagnostics/automated_page.dart';
import 'package:safedealz_diagnostics/view/screens/diagnostics/buttons_page.dart';
import 'package:safedealz_diagnostics/view/screens/diagnostics/identity_page.dart';
import 'package:safedealz_diagnostics/view/screens/diagnostics/permissions_page.dart';
import 'package:safedealz_diagnostics/view/screens/diagnostics/report_page.dart';
import 'package:safedealz_diagnostics/view/screens/diagnostics/result_page.dart';
import 'package:safedealz_diagnostics/view/screens/diagnostics/sensors_page.dart';
import 'package:safedealz_diagnostics/view/screens/diagnostics/touch_page.dart';

GoRouter createAppRouter() => GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      name: identityRoute,
      path: '/',
      builder: (context, state) => const IdentityPage(),
    ),
    GoRoute(
      name: permissionsRoute,
      path: '/permissions',
      builder: (context, state) => const PermissionsPage(),
    ),
    GoRoute(
      name: automatedRoute,
      path: '/automated',
      builder: (context, state) => const AutomatedPage(),
    ),
    GoRoute(
      name: touchRoute,
      path: '/touch',
      builder: (context, state) => const TouchPage(),
    ),
    GoRoute(
      name: buttonsRoute,
      path: '/buttons',
      builder: (context, state) => const ButtonsPage(),
    ),
    GoRoute(
      name: sensorsRoute,
      path: '/sensors',
      builder: (context, state) => const SensorsPage(),
    ),
    GoRoute(
      name: reportRoute,
      path: '/report',
      builder: (context, state) => const ReportPage(),
    ),
    GoRoute(
      name: resultRoute,
      path: '/result',
      builder: (context, state) => const ResultPage(),
    ),
  ],
);
