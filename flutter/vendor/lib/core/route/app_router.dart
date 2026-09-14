import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/view/screens/auctions/auction_detail_page.dart';
import 'package:safedealz_vendor/view/screens/auctions/bid_detail_page.dart';
import 'package:safedealz_vendor/view/screens/auctions/live_queue_page.dart';
import 'package:safedealz_vendor/view/screens/auctions/my_bids_page.dart';
import 'package:safedealz_vendor/view/screens/auctions/place_bid_page.dart';
import 'package:safedealz_vendor/view/screens/auctions/purchased_device_page.dart';
import 'package:safedealz_vendor/view/screens/bootstrap/bootstrap_page.dart';
import 'package:safedealz_vendor/view/screens/auth/login_page.dart';
import 'package:safedealz_vendor/view/screens/stores/assigned_stores_page.dart';
import 'package:safedealz_vendor/view/screens/wallet/recharge_page.dart';
import 'package:safedealz_vendor/view/screens/wallet/recharge_status_page.dart';
import 'package:safedealz_vendor/view/screens/wallet/wallet_entry_page.dart';
import 'package:safedealz_vendor/view/screens/wallet/wallet_holds_page.dart';
import 'package:safedealz_vendor/view/screens/wallet/wallet_page.dart';
import 'package:safedealz_vendor/view/screens/notifications/notifications_page.dart';
import 'package:safedealz_vendor/view/screens/performance/performance_page.dart';
import 'package:safedealz_vendor/view/screens/support/report_issue_page.dart';
import 'package:safedealz_vendor/view/screens/support/ticket_receipt_page.dart';
import 'package:safedealz_vendor/view/screens/account/account_page.dart';
import 'package:safedealz_vendor/view/screens/auctions/media_viewer_page.dart';

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
    GoRoute(
      name: walletRechargeRoute,
      path: '/wallet/recharge',
      builder: (context, state) => const RechargePage(),
    ),
    GoRoute(
      name: walletRechargeStatusRoute,
      path: '/wallet/recharge/:id',
      builder: (context, state) => RechargeStatusPage(rechargeId: state.pathParameters['id']!),
    ),
    GoRoute(
      name: liveQueueRoute,
      path: '/live',
      builder: (context, state) => const LiveQueuePage(),
    ),
    GoRoute(
      name: auctionDetailRoute,
      path: '/auctions/:id',
      builder: (context, state) => AuctionDetailPage(auctionId: state.pathParameters['id']!),
    ),
    GoRoute(
      name: placeBidRoute,
      path: '/auctions/:id/bid',
      builder: (context, state) => PlaceBidPage(auctionId: state.pathParameters['id']!),
    ),
    GoRoute(
      name: myBidsRoute,
      path: '/bids',
      builder: (context, state) => const MyBidsPage(),
    ),
    GoRoute(
      name: bidDetailRoute,
      path: '/bids/:id',
      builder: (context, state) => BidDetailPage(bidId: state.pathParameters['id']!),
    ),
    GoRoute(
      name: purchasedDeviceRoute,
      path: '/deals/:id',
      builder: (context, state) => PurchasedDevicePage(dealId: state.pathParameters['id']!),
    ),
    GoRoute(
      name: notificationsRoute,
      path: '/notifications',
      builder: (context, state) => const NotificationsPage(),
    ),
    GoRoute(
      name: performanceRoute,
      path: '/performance',
      builder: (context, state) => const PerformancePage(),
    ),
    GoRoute(
      name: reportIssueRoute,
      path: '/tickets/new',
      builder: (context, state) => ReportIssuePage(
        subjectType: state.uri.queryParameters['subjectType'] ?? 'deal',
        subjectId: state.uri.queryParameters['subjectId'] ?? '',
        returnTo: state.uri.queryParameters['returnTo'],
      ),
    ),
    GoRoute(
      name: ticketReceiptRoute,
      path: '/tickets/:id',
      builder: (context, state) => TicketReceiptPage(
        ticketId: state.pathParameters['id']!,
        returnTo: state.extra as String?,
      ),
    ),
    GoRoute(
      name: accountRoute,
      path: '/account',
      builder: (context, state) => const AccountPage(),
    ),
    GoRoute(
      name: mediaViewerRoute,
      path: '/media',
      builder: (context, state) => MediaViewerPage(
        label: state.uri.queryParameters['label'] ?? 'Photo',
        url: state.uri.queryParameters['url'],
      ),
    ),
  ],
);
