import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/utils/theme.dart';
import 'package:safedealz_diagnostics/view/widgets/app_page_scaffold.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Diagnostic result',
      body: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) {
          final qr = state.qrPayload;
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text('Device: ${state.identity?.model ?? 'Unknown'}'),
              Text('IMEI 1: …${state.identity?.imei1Suffix ?? ''}'),
              Text('IMEI 2: …${state.identity?.imei2Suffix ?? ''}'),
              const SizedBox(height: 16),
              if (qr == null)
                const Text('Generate a result first.')
              else ...[
                Center(
                  child: QrImageView(
                    data: qr,
                    size: 240,
                    backgroundColor: AppTheme.appBackground,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Keep this QR visible for the Store Manager scan. This phone does not open Store Manager.',
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
