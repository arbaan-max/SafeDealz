import 'package:flutter/material.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';

class AppPageScaffold extends StatelessWidget {
  const AppPageScaffold({
    super.key,
    required this.title,
    required this.body,
    this.actions,
    this.bottomNavigationBar,
    this.onBack,
  });

  final String title;
  final Widget body;
  final List<Widget>? actions;
  final Widget? bottomNavigationBar;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    final Color background =
        Theme.of(context).extension<AppBackground>()?.color ??
        Theme.of(context).scaffoldBackgroundColor;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: background,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
        leading: onBack == null
            ? null
            : IconButton(onPressed: onBack, icon: const Icon(Icons.arrow_back), tooltip: 'Back'),
        actions: actions,
      ),
      body: SafeArea(child: body),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
