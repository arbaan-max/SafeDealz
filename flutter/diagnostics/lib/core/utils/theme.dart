import 'package:flutter/material.dart';

abstract final class AppTheme {
  static const Color _purple = Color(0xFF6D4AFF);
  static const Color _skyBlue = Color(0xFF27B8F2);

  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _purple,
      primary: _purple,
      secondary: _skyBlue,
    ),
  );
}
