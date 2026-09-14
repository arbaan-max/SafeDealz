import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';
import 'package:safedealz_diagnostics/view/widgets/app_page_scaffold.dart';

class PermissionsPage extends StatelessWidget {
  const PermissionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Permissions',
      body: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    const Text(
                      'Camera, microphone, location/GPS and Bluetooth are used only for hardware checks on this phone.',
                    ),
                    const SizedBox(height: 12),
                    const Text('Camera — capture front and back camera tests.'),
                    const Text('Microphone — record a short audio check.'),
                    const Text('Location/GPS — confirm positioning hardware.'),
                    const Text(
                      'Bluetooth and nearby devices — confirm radio hardware.',
                    ),
                    if (state.permissions != null) ...[
                      const SizedBox(height: 16),
                      Text(state.permissions!.summary),
                    ],
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => context.goNamed(identityRoute),
                        child: const Text('Back'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: FilledButton(
                        key: const Key('allow-permissions'),
                        onPressed: () async {
                          final cubit = context.read<DiagnosticSessionCubit>();
                          final router = GoRouter.of(context);
                          await cubit.requestPermissions();
                          await cubit.runAutomated();
                          router.goNamed(automatedRoute);
                        },
                        child: const Text('Allow'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
