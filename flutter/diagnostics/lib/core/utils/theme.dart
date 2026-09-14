import 'package:flutter/material.dart';

@immutable
class AppBackground extends ThemeExtension<AppBackground> {
  const AppBackground({required this.color});
  final Color color;

  @override
  AppBackground copyWith({Color? color}) =>
      AppBackground(color: color ?? this.color);

  @override
  AppBackground lerp(ThemeExtension<AppBackground>? other, double t) {
    if (other is! AppBackground) return this;
    return AppBackground(color: Color.lerp(color, other.color, t)!);
  }
}

@immutable
class DiagnosticSurface extends ThemeExtension<DiagnosticSurface> {
  const DiagnosticSurface({required this.color});
  final Color color;

  @override
  DiagnosticSurface copyWith({Color? color}) =>
      DiagnosticSurface(color: color ?? this.color);

  @override
  DiagnosticSurface lerp(ThemeExtension<DiagnosticSurface>? other, double t) {
    if (other is! DiagnosticSurface) return this;
    return DiagnosticSurface(color: Color.lerp(color, other.color, t)!);
  }
}

abstract final class AppTheme {
  static const Color skyBlue = Color(0xFF0369A1);
  static const Color appBackground = Color(0xFFF0F9FF);
  static const Color diagnosticCanvas = Color(0xFF0F172A);
  static const Color _purpleAccent = Color(0xFF6D38C7);

  static ThemeData lightThemeWith({Color? background, Color? diagnostic}) {
    final Color pageBackground = background ?? appBackground;
    final Color canvas = diagnostic ?? diagnosticCanvas;
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: pageBackground,
      extensions: <ThemeExtension<dynamic>>[
        AppBackground(color: pageBackground),
        DiagnosticSurface(color: canvas),
      ],
      colorScheme: ColorScheme.fromSeed(
        seedColor: skyBlue,
        primary: skyBlue,
        onPrimary: Colors.white,
        secondary: _purpleAccent,
      ),
    );
  }

  static ThemeData get lightTheme => lightThemeWith();
}
