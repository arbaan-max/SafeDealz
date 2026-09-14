import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_vendor/bloc/bootstrap/bootstrap_bloc.dart';
import 'package:safedealz_vendor/core/route/app_router.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/bloc/auth/auth_bloc.dart';
import 'package:safedealz_vendor/core/network/dio_factory.dart';
import 'package:safedealz_vendor/core/network/session_interceptor.dart';
import 'package:safedealz_vendor/data/api/clients/auth_client.dart';
import 'package:safedealz_vendor/data/repositories/auth_repository.dart';
import 'package:safedealz_vendor/data/services/auth_service.dart';
import 'package:safedealz_vendor/data/services/token_store.dart';

class SafeDealzApp extends StatelessWidget {
  const SafeDealzApp({super.key});

  @override
  Widget build(BuildContext context) {
    final tokenStore = TokenStore();
    final dio = DioFactory.create();
    final interceptor = SessionInterceptor(tokenStore);
    dio.interceptors.add(interceptor);
    interceptor.client = dio;
    final authService = AuthService(AuthClient(dio), tokenStore);
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<BootstrapBloc>(
          create: (_) => BootstrapBloc()..add(const BootstrapStarted()),
        ),
        BlocProvider<AuthBloc>(create: (_) => AuthBloc(authRepository)),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'SafeDealz Vendor',
        theme: AppTheme.lightTheme,
        routerConfig: appRouter,
      ),
    );
  }
}
