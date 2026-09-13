import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/view/screens/bootstrap/bootstrap_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      name: bootstrapRoute,
      path: '/',
      builder: (context, state) => const BootstrapPage(),
    ),
  ],
);
