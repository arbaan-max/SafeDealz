import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';
import 'package:safedealz_diagnostics/core/utils/theme.dart';
import 'package:safedealz_diagnostics/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_diagnostics/view/widgets/html_kit.dart';

class PermissionsPage extends StatelessWidget {
  const PermissionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Permissions',
      progressStep: 2,
      onBack: () => context.goNamed(identityRoute),
      actionBar: FilledButton(
        key: const Key('allow-permissions'),
        onPressed: () async {
          final cubit = context.read<DiagnosticSessionCubit>();
          final router = GoRouter.of(context);
          await cubit.requestPermissions();
          await cubit.runAutomated();
          router.goNamed(automatedRoute);
        },
        child: const Text('Allow and continue'),
      ),
      body: BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
        builder: (context, state) {
          return SdScrollBody(
            children: [
              const Text('Allow device checks', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
              const SizedBox(height: 8),
              const Text(
                'Permissions are used only while testing this phone.',
                style: TextStyle(color: AppTheme.muted),
              ),
              const SizedBox(height: 18),
              const Text(
                'Camera, microphone, location/GPS, Bluetooth and notifications are used only for hardware checks and test alerts on this phone.',
              ),
              const SizedBox(height: 12),
              const DiagnosticCheckRow(icon: Icons.photo_camera_outlined, label: 'Camera', state: 'Required'),
              const Text('Camera — capture front and back camera tests.'),
              const DiagnosticCheckRow(icon: Icons.mic_outlined, label: 'Microphone', state: 'Required'),
              const Text('Microphone — record a short audio check.'),
              const DiagnosticCheckRow(icon: Icons.location_on_outlined, label: 'Location / GPS', state: 'Required'),
              const Text('Location/GPS — confirm positioning hardware.'),
              const DiagnosticCheckRow(icon: Icons.bluetooth, label: 'Bluetooth & nearby devices', state: 'Required'),
              const Text('Bluetooth and nearby devices — confirm radio hardware.'),
              const DiagnosticCheckRow(icon: Icons.notifications_outlined, label: 'Notifications', state: 'Required'),
              const Text('Notifications — confirm the phone can show diagnostic alerts.'),
              if (state.permissions != null) ...[
                const SizedBox(height: 16),
                Text(state.permissions!.summary),
              ],
              const SizedBox(height: 16),
              const SdNotice('The app records test outcomes and device identifiers. It does not import personal photos, contacts or messages.'),
            ],
          );
        },
      ),
    );
  }
}
