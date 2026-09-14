import 'package:flutter/material.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';

class BootstrapPage extends StatelessWidget {
  const BootstrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppTheme.appBackground,
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
