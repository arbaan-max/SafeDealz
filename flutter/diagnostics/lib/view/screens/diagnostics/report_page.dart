import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';
import 'package:safedealz_diagnostics/data/diagnostics/models.dart';
import 'package:safedealz_diagnostics/view/widgets/app_page_scaffold.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Diagnostic report',
      body: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    Text('Passed: ${state.count(CheckOutcome.passed)}'),
                    Text('Failed: ${state.count(CheckOutcome.failed)}'),
                    Text('Unavailable: ${state.count(CheckOutcome.unavailable)}'),
                    Text('Touch coverage: ${state.touch.percent}%'),
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    key: const Key('generate-result'),
                    onPressed: () async {
                      final cubit = context.read<DiagnosticSessionCubit>();
                      final router = GoRouter.of(context);
                      await cubit.generateResult();
                      router.goNamed(resultRoute);
                    },
                    child: const Text('Generate result'),
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
