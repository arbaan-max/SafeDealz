import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';
import 'package:safedealz_diagnostics/core/utils/theme.dart';
import 'package:safedealz_diagnostics/data/diagnostics/models.dart';
import 'package:safedealz_diagnostics/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_diagnostics/view/widgets/html_kit.dart';

class SensorsPage extends StatelessWidget {
  const SensorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Cameras, audio and sensors',
      progressStep: 6,
      onBack: () => context.goNamed(buttonsRoute),
      actionBar: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) => FilledButton(
          key: const Key('complete-sensors'),
          onPressed: state.sensors.isEmpty ? null : () => context.goNamed(reportRoute),
          child: const Text('Finish checks'),
        ),
      ),
      body: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) {
          return SdScrollBody(
            children: [
              const Text('Camera, sound and sensors', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
              const SizedBox(height: 8),
              const Text('Follow each prompt and confirm the result.', style: TextStyle(color: AppTheme.muted)),
              const SizedBox(height: 18),
              if (state.sensors.isEmpty)
                const Text('Hardware checks are recorded from this phone.'),
              for (final item in state.sensors) ...[
                DiagnosticCheckRow(
                  icon: Icons.sensors,
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
