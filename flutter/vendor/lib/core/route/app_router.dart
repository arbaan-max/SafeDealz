import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/view/screens/bootstrap/bootstrap_page.dart';
import 'package:safedealz_vendor/view/screens/auth/login_page.dart';
import 'package:safedealz_vendor/view/screens/stores/assigned_stores_page.dart';
import 'package:safedealz_vendor/view/screens/wallet/wallet_entry_page.dart';
import 'package:safedealz_vendor/view/screens/wallet/wallet_holds_page.dart';
import 'package:safedealz_vendor/view/screens/wallet/wallet_page.dart';

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
      name: assignedStoresRoute,
      path: '/stores',
      builder: (context, state) => const AssignedStoresPage(),
    ),
    GoRoute(
      name: walletRoute,
      path: '/wallet',
      builder: (context, state) => const WalletPage(),
    ),
    GoRoute(
      name: walletEntryRoute,
      path: '/wallet/entries/:id',
      builder: (context, state) => WalletEntryPage(entryId: state.pathParameters['id']!),
    ),
    GoRoute(
      name: walletHoldsRoute,
      path: '/wallet/holds',
      builder: (context, state) => const WalletHoldsPage(),
    ),
  ],
);
