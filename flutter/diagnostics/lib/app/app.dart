import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_diagnostics/bloc/bootstrap/bootstrap_bloc.dart';
import 'package:safedealz_diagnostics/core/route/app_router.dart';
import 'package:safedealz_diagnostics/core/utils/theme.dart';

class SafeDealzApp extends StatelessWidget {
  const SafeDealzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BootstrapBloc>(
      create: (_) => BootstrapBloc()..add(const BootstrapStarted()),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'SafeDealz Diagnostics',
        theme: AppTheme.lightTheme,
        routerConfig: appRouter,
      ),
    );
  }
}
