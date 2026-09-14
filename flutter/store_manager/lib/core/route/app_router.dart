import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/view/screens/auth/login_page.dart';
import 'package:safedealz_store_manager/view/screens/bootstrap/bootstrap_page.dart';
import 'package:safedealz_store_manager/view/screens/auctions/accept_confirm_page.dart';
import 'package:safedealz_store_manager/view/screens/auctions/customer_verification_page.dart';
import 'package:safedealz_store_manager/view/screens/auctions/payment_status_page.dart';
import 'package:safedealz_store_manager/view/screens/auctions/deal_detail_page.dart';
import 'package:safedealz_store_manager/view/screens/auctions/pickup_page.dart';
import 'package:safedealz_store_manager/view/screens/auctions/device_history_page.dart';
import 'package:safedealz_store_manager/view/screens/auctions/live_auction_page.dart';
import 'package:safedealz_store_manager/view/screens/auctions/offer_page.dart';
import 'package:safedealz_store_manager/view/screens/auctions/reauction_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/camera_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/device_identity_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/devices_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/evidence_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/inspection_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/review_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/diagnostic_scan_page.dart';
import 'package:safedealz_store_manager/view/screens/home/home_page.dart';
import 'package:safedealz_store_manager/view/screens/notifications/notifications_page.dart';
import 'package:safedealz_store_manager/view/screens/support/report_issue_page.dart';
import 'package:safedealz_store_manager/view/screens/support/ticket_receipt_page.dart';
import 'package:safedealz_store_manager/view/screens/account/account_page.dart';
import 'package:safedealz_store_manager/view/screens/rewards/redeem_otp_page.dart';
import 'package:safedealz_store_manager/view/screens/rewards/redeem_page.dart';
import 'package:safedealz_store_manager/view/screens/rewards/redeem_receipt_page.dart';
import 'package:safedealz_store_manager/view/screens/rewards/redemptions_page.dart';
import 'package:safedealz_store_manager/view/screens/rewards/reward_customer_page.dart';
import 'package:safedealz_store_manager/view/screens/rewards/rewards_lookup_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
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
        initialFilter: state.uri.queryParameters['filter'] ?? 'all',
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
    GoRoute(
      name: liveAuctionRoute,
      path: '/auctions/:id',
      builder: (context, state) => LiveAuctionPage(
        auctionId: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      name: offerRoute,
      path: '/auctions/:id/offer',
      builder: (context, state) => OfferPage(
        auctionId: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      name: offerAcceptRoute,
      path: '/auctions/:id/accept',
      builder: (context, state) => AcceptConfirmPage(
        auctionId: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      name: customerVerifyRoute,
      path: '/deals/:id/verify',
      builder: (context, state) => CustomerVerificationPage(
        dealId: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      name: paymentStatusRoute,
      path: '/deals/:id/payment',
      builder: (context, state) => PaymentStatusPage(
        dealId: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      name: dealDetailRoute,
      path: '/deals/:id',
      builder: (context, state) => DealDetailPage(
        dealId: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      name: pickupRoute,
      path: '/deals/:id/pickup',
      builder: (context, state) => PickupPage(
        dealId: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      name: deviceHistoryRoute,
      path: '/devices/:id/history',
      builder: (context, state) => DeviceHistoryPage(
        deviceId: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      name: rewardsLookupRoute,
      path: '/rewards',
      builder: (context, state) => const RewardsLookupPage(),
    ),
    GoRoute(
      name: redemptionsRoute,
      path: '/rewards/redemptions',
      builder: (context, state) => const RedemptionsPage(),
    ),
    GoRoute(
      name: rewardsCustomerRoute,
      path: '/rewards/customers/:phone',
      builder: (context, state) => RewardCustomerPage(
        phone: state.pathParameters['phone']!,
      ),
    ),
    GoRoute(
      name: redeemRoute,
      path: '/rewards/customers/:phone/redeem',
      builder: (context, state) => RedeemPage(
        phone: state.pathParameters['phone']!,
      ),
    ),
    GoRoute(
      name: redeemOtpRoute,
      path: '/rewards/redemptions/:id/otp',
      builder: (context, state) => RedeemOtpPage(
        id: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      name: redeemReceiptRoute,
      path: '/rewards/redemptions/:id/receipt',
      builder: (context, state) => RedeemReceiptPage(
        id: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      name: notificationsRoute,
      path: '/notifications',
      builder: (context, state) => const NotificationsPage(),
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
      name: reauctionRoute,
      path: '/auctions/:id/reauction',
      builder: (context, state) => ReauctionPage(
        auctionId: state.pathParameters['id']!,
      ),
    ),
  ],
);
