import 'package:flutter/material.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';

class AppPageScaffold extends StatelessWidget {
  const AppPageScaffold({
    super.key,
    required this.title,
    required this.body,
    this.actions,
  });

  final String title;
  final Widget body;
  final List<Widget>? actions;

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
        actions: actions,
      ),
      body: SafeArea(child: body),
    );
  }
}
