import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';
import 'package:safedealz_diagnostics/core/utils/theme.dart';
import 'package:safedealz_diagnostics/data/diagnostics/models.dart';
import 'package:safedealz_diagnostics/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_diagnostics/view/widgets/html_kit.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Diagnostic report',
      progressStep: 7,
      onBack: () => context.goNamed(sensorsRoute),
      actionBar: FilledButton(
        key: const Key('generate-result'),
        onPressed: () async {
          final cubit = context.read<DiagnosticSessionCubit>();
          final router = GoRouter.of(context);
          await cubit.generateResult();
          router.goNamed(resultRoute);
        },
        child: const Text('Generate result QR'),
      ),
      body: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) {
          return SdScrollBody(
            children: [
              const Text('Review diagnostic report', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
              const SizedBox(height: 8),
              const Text(
                'Confirm the results before generating the store handoff.',
                style: TextStyle(color: AppTheme.muted),
              ),
              const SizedBox(height: 18),
              SdCard(
                child: Column(
                  children: [
                    SdDetailRow('Identity', 'Both IMEIs matched'),
                    SdDetailRow('Automatic checks', '${state.count(CheckOutcome.passed)} passed'),
                    SdDetailRow('Screen & touch', '${state.touch.percent}% / attempt ${state.touch.attempts}'),
                    SdDetailRow('Buttons', '${state.buttons.where((item) => item.outcome == CheckOutcome.passed).length} passed'),
                    SdDetailRow('Camera, audio & sensors', '${state.sensors.where((item) => item.outcome == CheckOutcome.passed).length} passed'),
                    SdDetailRow('Failed tests', '${state.count(CheckOutcome.failed)}'),
                    Text('Passed: ${state.count(CheckOutcome.passed)}'),
                    Text('Failed: ${state.count(CheckOutcome.failed)}'),
                    Text('Unavailable: ${state.count(CheckOutcome.unavailable)}'),
                    Text('Touch coverage: ${state.touch.percent}%'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () => context.goNamed(automatedRoute),
                child: const Text('Retest automated checks'),
              ),
              TextButton(
                onPressed: () => context.goNamed(touchRoute),
                child: const Text('Retest touch'),
              ),
              TextButton(
                onPressed: () => context.goNamed(buttonsRoute),
                child: const Text('Retest physical controls'),
              ),
              TextButton(
                onPressed: () => context.goNamed(sensorsRoute),
                child: const Text('Retest cameras and sensors'),
              ),
              if (state.resultSaved) ...[
                const SizedBox(height: 16),
                const Text('Result saved on this phone.'),
              ],
              const SdNotice('All diagnostic data remains on this phone until the final QR is scanned by the Store Manager app.'),
            ],
          );
        },
      ),
    );
  }
}
