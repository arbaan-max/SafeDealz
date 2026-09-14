import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';
import 'package:safedealz_diagnostics/core/utils/theme.dart';
import 'package:safedealz_diagnostics/data/diagnostics/models.dart';
import 'package:safedealz_diagnostics/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_diagnostics/view/widgets/html_kit.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Physical controls',
      progressStep: 5,
      onBack: () => context.goNamed(touchRoute),
      actionBar: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) => FilledButton(
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
      body: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) {
          return SdScrollBody(
            children: [
              const Text('Physical buttons', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
              const SizedBox(height: 8),
              const Text('Press each highlighted button once.', style: TextStyle(color: AppTheme.muted)),
              const SizedBox(height: 18),
              Container(
                height: 180,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppTheme.surface,
                  border: Border.all(color: AppTheme.border),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone_android, size: 64, color: AppTheme.skyBlue),
                    SizedBox(height: 8),
                    Text('VOL +   VOL −   POWER', style: TextStyle(fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              if (state.buttons.isEmpty)
                const Text('Press each supported control when prompted.'),
              for (final item in state.buttons) ...[
                DiagnosticCheckRow(
                  icon: Icons.check_circle_outlined,
                  label: item.label,
                  state: item.outcome == CheckOutcome.passed
                      ? 'Passed'
                      : item.outcome == CheckOutcome.failed
                          ? 'Failed'
                          : 'Unavailable',
                ),
                Text(item.labelWithOutcome),
              ],
            ],
          );
        },
      ),
    );
  }
}
