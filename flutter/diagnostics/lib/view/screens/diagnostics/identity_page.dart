import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';
import 'package:safedealz_diagnostics/core/utils/theme.dart';
import 'package:safedealz_diagnostics/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_diagnostics/view/widgets/html_kit.dart';

class IdentityPage extends StatelessWidget {
  const IdentityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'SafeDealz Diagnostics',
      progressStep: 1,
      actionBar: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) => FilledButton(
          key: const Key('start-diagnostics'),
          onPressed: state.canStart ? () => context.goNamed(permissionsRoute) : null,
          child: const Text('Start diagnostics'),
        ),
      ),
      body: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) {
          return SdScrollBody(
            children: [
              const SdStatusOrb(icon: Icons.phone_android),
              const Text(
                'Check this Android phone',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 8),
              const Text(
                'Run diagnostics on this device, then show the final result QR to the store manager.',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppTheme.muted),
              ),
              const SizedBox(height: 16),
              if (!state.online) const SdNotice('Offline. Checks can still run locally.'),
              if (state.identityLoading) const Text('Reading device identity…'),
              if (state.identityUnavailable) const Text('Identifier unavailable'),
              if (state.identity?.unsupported == true) const Text('Unsupported device'),
              if (state.identity != null && !state.identity!.unsupported)
                SdCard(
                  child: Column(
                    children: [
                      SdDetailRow('Device', state.identity!.model),
                      Text('Device: ${state.identity!.model}'),
                      SdDetailRow('IMEI 1', 'Ending ${state.identity!.imei1Suffix}'),
                      Text('IMEI 1: …${state.identity!.imei1Suffix}'),
                      SdDetailRow('IMEI 2', 'Ending ${state.identity!.imei2Suffix}'),
                      Text('IMEI 2: …${state.identity!.imei2Suffix}'),
                    ],
                  ),
                ),
              const SizedBox(height: 16),
              const SdNotice('The report stays on this phone until the store manager scans the completed result QR.'),
            ],
          );
        },
      ),
    );
  }
}
