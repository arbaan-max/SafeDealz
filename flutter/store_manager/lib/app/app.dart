import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_store_manager/bloc/bootstrap/bootstrap_bloc.dart';
import 'package:safedealz_store_manager/core/route/app_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/bloc/auth/auth_bloc.dart';
import 'package:safedealz_store_manager/core/network/dio_factory.dart';
import 'package:safedealz_store_manager/core/network/session_interceptor.dart';
import 'package:safedealz_store_manager/data/api/clients/auth_client.dart';
import 'package:safedealz_store_manager/data/api/clients/operations_client.dart';
import 'package:safedealz_store_manager/data/repositories/account_repository.dart';
import 'package:safedealz_store_manager/data/repositories/auction_repository.dart';
import 'package:safedealz_store_manager/data/repositories/auth_repository.dart';
import 'package:safedealz_store_manager/data/repositories/catalog_repository.dart';
import 'package:safedealz_store_manager/data/repositories/deal_repository.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/data/repositories/notification_repository.dart';
import 'package:safedealz_store_manager/data/repositories/reward_repository.dart';
import 'package:safedealz_store_manager/data/services/auth_service.dart';
import 'package:safedealz_store_manager/data/services/diagnostic_qr_scan_adapter.dart';
import 'package:safedealz_store_manager/data/services/evidence_capture_adapter.dart';
import 'package:safedealz_store_manager/data/services/imei_scan_adapter.dart';
import 'package:safedealz_store_manager/data/services/kyc_capture_adapter.dart';
import 'package:safedealz_store_manager/data/services/token_store.dart';

class SafeDealzApp extends StatelessWidget {
  const SafeDealzApp({super.key});

  @override
  Widget build(BuildContext context) {
    final tokenStore = TokenStore();
    final dio = DioFactory.create();
    final interceptor = SessionInterceptor(tokenStore);
    dio.interceptors.add(interceptor);
    interceptor.client = dio;
    final authClient = AuthClient(dio);
    final authService = AuthService(authClient, tokenStore);
    interceptor.refresh = authService.refreshOnce;
    interceptor.terminal = (code) async {
      await tokenStore.clear();
      appRouter.goNamed(
        loginRoute,
        extra: code == 'ACCOUNT_INACTIVE'
            ? 'Your account is inactive. Contact your administrator.'
            : 'Your session has ended. Login again.',
      );
    };
    final authRepository = AuthRepositoryImpl(authService);
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AccountRepository>.value(
          value: AccountRepositoryImpl(authClient),
        ),
        RepositoryProvider<DeviceRepository>.value(
          value: DeviceRepositoryImpl(OperationsClient(dio), dio),
        ),
        RepositoryProvider<AuctionRepository>.value(
          value: AuctionRepositoryImpl(OperationsClient(dio)),
        ),
        RepositoryProvider<DealRepository>.value(
          value: DealRepositoryImpl(OperationsClient(dio)),
        ),
        RepositoryProvider<CatalogRepository>.value(
          value: CatalogRepositoryImpl(OperationsClient(dio)),
        ),
        RepositoryProvider<RewardRepository>.value(
          value: RewardRepositoryImpl(OperationsClient(dio)),
        ),
        RepositoryProvider<NotificationRepository>.value(
          value: NotificationRepositoryImpl(OperationsClient(dio)),
        ),
        RepositoryProvider<ImeiScanAdapter>.value(
          value: const DemoImeiScanAdapter(),
        ),
        RepositoryProvider<EvidenceCaptureAdapter>.value(
          value: const DemoEvidenceCaptureAdapter(),
        ),
        RepositoryProvider<DiagnosticQrScanAdapter>.value(
          value: const DemoDiagnosticQrScanAdapter(),
        ),
        RepositoryProvider<KycCaptureAdapter>.value(
          value: const DemoKycCaptureAdapter(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<BootstrapBloc>(
            create: (_) => BootstrapBloc()..add(const BootstrapStarted()),
          ),
          BlocProvider<AuthBloc>(create: (_) => AuthBloc(authRepository)),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'SafeDealz Store Manager',
          theme: AppTheme.lightTheme,
          routerConfig: appRouter,
        ),
      ),
    );
  }
}
