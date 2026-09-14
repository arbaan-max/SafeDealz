import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/view/screens/auth/login_page.dart';
import 'package:safedealz_store_manager/view/screens/bootstrap/bootstrap_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/camera_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/device_identity_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/devices_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/evidence_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/inspection_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/review_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/diagnostic_scan_page.dart';
import 'package:safedealz_store_manager/view/screens/home/home_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/login',
  routes: <RouteBase>[
    GoRoute(
      name: bootstrapRoute,
      path: '/',
      builder: (context, state) => const BootstrapPage(),
    ),
    GoRoute(
      name: loginRoute,
      path: '/login',
      builder: (context, state) =>
          LoginPage(initialMessage: state.extra as String?),
    ),
    GoRoute(
      name: homeRoute,
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: devicesRoute,
      path: '/devices',
      builder: (context, state) => DevicesPage(
        initialFilter: state.uri.queryParameters['filter'] ?? 'draft',
      ),
    ),
    GoRoute(
      name: deviceNewRoute,
      path: '/devices/new',
      builder: (context, state) => const DeviceIdentityPage(),
    ),
    GoRoute(
      name: deviceEditRoute,
      path: '/devices/:id',
      builder: (context, state) => DeviceIdentityPage(
        deviceId: state.pathParameters['id'],
      ),
    ),
    GoRoute(
      name: inspectionRoute,
      path: '/devices/:id/inspection',
      builder: (context, state) => InspectionPage(
        deviceId: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      name: evidenceRoute,
      path: '/devices/:id/evidence',
      builder: (context, state) => EvidencePage(
        deviceId: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      name: cameraRoute,
      path: '/devices/:id/camera/:purpose',
      builder: (context, state) => CameraPage(
        deviceId: state.pathParameters['id']!,
        purpose: state.pathParameters['purpose']!,
      ),
    ),
    GoRoute(
      name: reviewRoute,
      path: '/devices/:id/review',
      builder: (context, state) => ReviewPage(
        deviceId: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      name: diagnosticScanRoute,
      path: '/devices/:id/diagnostics',
      builder: (context, state) => DiagnosticScanPage(
        deviceId: state.pathParameters['id']!,
      ),
    ),
  ],
);
