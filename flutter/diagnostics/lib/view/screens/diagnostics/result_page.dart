import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';
import 'package:safedealz_diagnostics/core/utils/theme.dart';
import 'package:safedealz_diagnostics/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_diagnostics/view/widgets/html_kit.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Diagnostic result',
      progressStep: 8,
      onBack: () => context.goNamed(reportRoute),
      body: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) {
          final qr = state.qrPayload;
          return SdScrollBody(
            children: [
              const SdStatusOrb(icon: Icons.check_circle_outlined, tone: 'green'),
              const Text(
                'Diagnostics complete',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 9),
              const Text(
                'Show this QR to the store manager for scanning.',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppTheme.muted),
              ),
              const SizedBox(height: 19),
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
                Text(
                  state.savedPayload == null ? 'DX-ready' : 'Ready for store scan',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.w800),
                ),
              ],
              const SizedBox(height: 16),
              SdCard(
                child: Column(
                  children: [
                    SdDetailRow('Device', state.identity?.model ?? 'Unknown'),
                    Text('Device: ${state.identity?.model ?? 'Unknown'}'),
                    SdDetailRow('IMEI 1', 'Ending ${state.identity?.imei1Suffix ?? ''}'),
                    Text('IMEI 1: …${state.identity?.imei1Suffix ?? ''}'),
                    SdDetailRow('IMEI 2', 'Ending ${state.identity?.imei2Suffix ?? ''}'),
                    Text('IMEI 2: …${state.identity?.imei2Suffix ?? ''}'),
                    SdDetailRow('Touch coverage', '${state.touch.percent}%'),
                    const SdDetailRow('Data status', 'Ready for store scan'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Keep this QR visible for the Store Manager scan. This phone does not open Store Manager.',
              ),
              const SdNotice(
                'Keep this QR open. When the Store Manager scans and verifies it, the signed diagnostic data is imported into SafeDealz.',
              ),
            ],
          );
        },
      ),
    );
  }
}
