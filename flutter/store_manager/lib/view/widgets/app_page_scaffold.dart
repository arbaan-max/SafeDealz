import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';

class AppPageScaffold extends StatelessWidget {
  const AppPageScaffold({
    super.key,
    required this.title,
    required this.body,
    this.subtitle,
    this.brand = false,
    this.showBell = true,
    this.actions,
    this.bottomNavigationBar,
    this.actionBar,
    this.onBack,
    this.padBody = true,
  });

  final String title;
  final Widget body;
  final String? subtitle;
  final bool brand;
  final bool showBell;
  final List<Widget>? actions;
  final Widget? bottomNavigationBar;
  final Widget? actionBar;
  final VoidCallback? onBack;
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
                      child: brand
                          ? Row(
                              children: [
                                Container(
                                  width: 28,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    color: AppTheme.selected,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(Icons.bolt, size: 16, color: AppTheme.skyBlue),
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  'SafeDealz',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                                ),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
                                if (subtitle != null)
                                  Text(
                                    subtitle!,
                                    style: const TextStyle(fontSize: 11, color: AppTheme.muted),
                                  ),
                              ],
                            ),
                    ),
                    ...?actions,
                    if (showBell)
                      IconButton(
                        onPressed: () => context.goNamed(notificationsRoute),
                        icon: const Icon(Icons.notifications_outlined),
                        tooltip: 'Notifications',
                      ),
                  ],
                ),
              ),
            ),
          ),
          const Divider(height: 1, color: AppTheme.border),
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
      bottomNavigationBar: actionBar == null && bottomNavigationBar == null
          ? null
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ?(actionBar == null ? null : SdActionBar(child: actionBar!)),
                ?bottomNavigationBar,
              ],
            ),
    );
  }
}
