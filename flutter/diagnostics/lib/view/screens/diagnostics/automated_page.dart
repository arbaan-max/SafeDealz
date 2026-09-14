import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';
import 'package:safedealz_diagnostics/view/widgets/app_page_scaffold.dart';

class AutomatedPage extends StatelessWidget {
  const AutomatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Automated checks',
      body: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    if (state.permissions != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Text(state.permissions!.summary),
                      ),
                    if (state.automated.isEmpty)
                      const Text('Running automated checks…'),
                    for (final item in state.automated)
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
                    key: const Key('complete-automated'),
                    onPressed: state.automated.isEmpty
                        ? null
                        : () => context.goNamed(touchRoute),
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
