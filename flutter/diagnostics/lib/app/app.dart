import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_diagnostics/bloc/bootstrap/bootstrap_bloc.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/route/app_router.dart';
import 'package:safedealz_diagnostics/core/utils/theme.dart';
import 'package:safedealz_diagnostics/data/api/clients/operations_client.dart';
import 'package:safedealz_diagnostics/data/diagnostics/hardware.dart';
import 'package:safedealz_diagnostics/data/diagnostics/store.dart';

class SafeDealzApp extends StatelessWidget {
  const SafeDealzApp({
    super.key,
    this.hardware = const DemoDiagnosticsHardware(),
    this.store,
    this.operations,
  });

  final DiagnosticsHardware hardware;
  final DiagnosticStore? store;
  final OperationsClient? operations;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BootstrapBloc>(
          create: (_) => BootstrapBloc()..add(const BootstrapStarted()),
        ),
        BlocProvider<DiagnosticSessionCubit>(
          create: (_) => DiagnosticSessionCubit(
            hardware,
            store ?? MemoryDiagnosticStore(),
            operations,
          )..loadIdentity(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'SafeDealz Diagnostics',
        theme: AppTheme.lightTheme,
        routerConfig: createAppRouter(),
      ),
    );
  }
}
