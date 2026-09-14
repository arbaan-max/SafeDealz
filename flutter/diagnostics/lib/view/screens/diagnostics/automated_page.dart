import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';
import 'package:safedealz_diagnostics/core/utils/theme.dart';
import 'package:safedealz_diagnostics/data/diagnostics/models.dart';
import 'package:safedealz_diagnostics/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_diagnostics/view/widgets/html_kit.dart';

class AutomatedPage extends StatelessWidget {
  const AutomatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Automated checks',
      progressStep: 3,
      onBack: () => context.goNamed(permissionsRoute),
      actionBar: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) => FilledButton(
          key: const Key('complete-automated'),
          onPressed: state.automated.isEmpty ? null : () => context.goNamed(touchRoute),
          child: const Text('Complete'),
        ),
      ),
      body: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) {
          return SdScrollBody(
            children: [
              const Text('Automatic checks', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
              const SizedBox(height: 8),
              const Text(
                'Keep the phone awake while SafeDealz checks its hardware.',
                style: TextStyle(color: AppTheme.muted),
              ),
              const SizedBox(height: 18),
              if (state.permissions != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(state.permissions!.summary),
                ),
              if (state.automated.isEmpty) const Text('Running automated checks…'),
              for (final item in state.automated) ...[
                DiagnosticCheckRow(
                  icon: Icons.memory,
                  label: item.label,
                  state: item.outcome == CheckOutcome.passed
                      ? 'Passed'
                      : item.outcome == CheckOutcome.failed
                          ? 'Failed'
                          : 'Unavailable',
                ),
                Text(item.labelWithOutcome),
              ],
              const SizedBox(height: 16),
              const SdNotice('The demo shows completed checks. Production testing reads supported device signals and records unavailable tests separately.'),
            ],
          );
        },
      ),
    );
  }
}
