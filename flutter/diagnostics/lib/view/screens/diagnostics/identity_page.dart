import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';
import 'package:safedealz_diagnostics/view/widgets/app_page_scaffold.dart';

class IdentityPage extends StatelessWidget {
  const IdentityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'SafeDealz Diagnostics',
      body: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    if (!state.online)
                      const Text('Offline. Checks can still run locally.'),
                    if (state.identityLoading)
                      const Text('Reading device identity…'),
                    if (state.identityUnavailable)
                      const Text('Identifier unavailable'),
                    if (state.identity?.unsupported == true)
                      const Text('Unsupported device'),
                    if (state.identity != null &&
                        !state.identity!.unsupported) ...[
                      Text('Device: ${state.identity!.model}'),
                      Text('IMEI 1: …${state.identity!.imei1Suffix}'),
                      Text('IMEI 2: …${state.identity!.imei2Suffix}'),
                    ],
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    key: const Key('start-diagnostics'),
                    onPressed: state.canStart
                        ? () => context.goNamed(permissionsRoute)
                        : null,
                    child: const Text('Start diagnostics'),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
