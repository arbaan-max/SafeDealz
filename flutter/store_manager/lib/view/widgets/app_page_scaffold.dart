import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';
import 'package:safedealz_store_manager/view/widgets/sd_icons.dart';

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
    this.titleWidthFactor,
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
  final double? titleWidthFactor;

  @override
  Widget build(BuildContext context) {
    final Color background =
        Theme.of(context).extension<AppBackground>()?.color ??
        Theme.of(context).scaffoldBackgroundColor;
    final titleBlock = brand
        ? Row(
            children: [
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  color: AppTheme.selected,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(SdIcons.lightning, size: 16, color: AppTheme.skyBlue),
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
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
              if (subtitle != null)
                Text(
                  subtitle!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12, color: AppTheme.muted, fontWeight: FontWeight.w600),
                ),
            ],
          );
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
                        icon: const Icon(SdIcons.back),
                        tooltip: 'Back',
                      ),
                    if (titleWidthFactor != null)
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * titleWidthFactor!,
                        child: titleBlock,
                      )
                    else
                      Expanded(child: titleBlock),
                    if (titleWidthFactor != null) const Spacer(),
                    ...?actions,
                    if (showBell)
                      IconButton(
                        onPressed: () => context.goNamed(notificationsRoute),
                        icon: const Icon(SdIcons.bell),
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
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
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
