import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';
import 'package:safedealz_diagnostics/view/widgets/app_page_scaffold.dart';

class SensorsPage extends StatelessWidget {
  const SensorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Cameras, audio and sensors',
      body: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    if (state.sensors.isEmpty)
                      const Text('Hardware checks are recorded from this phone.'),
                    for (final item in state.sensors)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(item.labelWithOutcome),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    key: const Key('complete-sensors'),
                    onPressed: state.sensors.isEmpty
                        ? null
                        : () => context.goNamed(reportRoute),
                    child: const Text('Complete'),
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
