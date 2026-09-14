import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';
import 'package:safedealz_diagnostics/view/widgets/app_page_scaffold.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Physical controls',
      body: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    if (state.buttons.isEmpty)
                      const Text('Press each supported control when prompted.'),
                    for (final item in state.buttons)
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
                    key: const Key('complete-buttons'),
                    onPressed: state.buttons.isEmpty
                        ? null
                        : () async {
                            final cubit = context.read<DiagnosticSessionCubit>();
                            final router = GoRouter.of(context);
                            await cubit.runSensors();
                            router.goNamed(sensorsRoute);
                          },
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
