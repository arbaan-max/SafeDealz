import 'package:flutter/material.dart';
import 'package:safedealz_diagnostics/core/utils/theme.dart';
import 'package:safedealz_diagnostics/view/widgets/html_kit.dart';

class AppPageScaffold extends StatelessWidget {
  const AppPageScaffold({
    super.key,
    required this.title,
    required this.body,
    this.subtitle,
    this.actions,
    this.actionBar,
    this.onBack,
    this.progressStep,
    this.padBody = true,
  });

  final String title;
  final Widget body;
  final String? subtitle;
  final List<Widget>? actions;
  final Widget? actionBar;
  final VoidCallback? onBack;
  final int? progressStep;
  final bool padBody;

  @override
  Widget build(BuildContext context) {
    final Color background =
        Theme.of(context).extension<AppBackground>()?.color ??
        Theme.of(context).scaffoldBackgroundColor;
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          Material(
            color: AppTheme.surface,
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 10),
                child: Row(
                  children: [
                    if (onBack != null)
                      IconButton(
                        onPressed: onBack,
                        icon: const Icon(Icons.arrow_back),
                        tooltip: 'Back',
                      ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
                          if (subtitle != null)
                            Text(subtitle!, style: const TextStyle(fontSize: 11, color: AppTheme.muted)),
                        ],
                      ),
                    ),
                    ...?actions,
                  ],
                ),
              ),
            ),
          ),
          const Divider(height: 1, color: AppTheme.border),
          if (progressStep != null) DiagnosticProgress(step: progressStep!),
          Expanded(
            child: padBody
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(17, 19, 17, 16),
                    child: body,
                  )
                : body,
          ),
        ],
      ),
      bottomNavigationBar: actionBar == null
          ? null
          : SdActionBar(child: actionBar!),
    );
  }
}

class DiagnosticProgress extends StatelessWidget {
  const DiagnosticProgress({super.key, required this.step});
  final int step;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(17, 12, 17, 0),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'ANDROID DIAGNOSTICS',
              style: TextStyle(fontSize: 11, letterSpacing: 0.8, color: AppTheme.muted, fontWeight: FontWeight.w700),
            ),
          ),
          Text('$step of 8', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppTheme.skyHover)),
        ],
      ),
    );
  }
}

class DiagnosticCheckRow extends StatelessWidget {
  const DiagnosticCheckRow({
    super.key,
    required this.icon,
    required this.label,
    required this.state,
  });
  final IconData icon;
  final String label;
  final String state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(color: AppTheme.selected, borderRadius: BorderRadius.circular(10)),
            child: Icon(icon, size: 18, color: AppTheme.skyBlue),
          ),
          const SizedBox(width: 11),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700)),
                Text(state, style: const TextStyle(fontSize: 11, color: AppTheme.muted)),
              ],
            ),
          ),
          Icon(
            state == 'Passed' || state == 'Required' ? Icons.check_circle_outlined : Icons.chevron_right,
            color: state == 'Passed' ? const Color(0xFF166534) : AppTheme.muted,
          ),
        ],
      ),
    );
  }
}
