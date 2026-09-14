import 'package:flutter/material.dart';

abstract final class AppTheme {
  static const Color _skyBlue = Color(0xFF0369A1);
  static const Color _appBackground = Color(0xFFF0F9FF);
  static const Color _purpleAccent = Color(0xFF6D38C7);

  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: _appBackground,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _skyBlue,
      primary: _skyBlue,
      onPrimary: Colors.white,
      secondary: _purpleAccent,
    ),
  );
}
