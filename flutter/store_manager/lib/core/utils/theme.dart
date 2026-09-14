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

abstract final class AppTheme {
  static const Color skyBlue = Color(0xFF0369A1);
  static const Color skyHover = Color(0xFF075985);
  static const Color appBackground = Color(0xFFF0F9FF);
  static const Color surface = Color(0xFFFCFCFF);
  static const Color selected = Color(0xFFE0F2FE);
  static const Color border = Color(0xFFD7E8F2);
  static const Color muted = Color(0xFF526079);
  static const Color ink = Color(0xFF192238);
  static const Color _purpleAccent = Color(0xFF6D38C7);

  static ThemeData lightThemeWith({Color? background}) {
    final Color pageBackground = background ?? appBackground;
    final scheme = ColorScheme.fromSeed(
      seedColor: skyBlue,
      primary: skyBlue,
      onPrimary: Colors.white,
      secondary: _purpleAccent,
      surface: surface,
    );
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: pageBackground,
      extensions: <ThemeExtension<dynamic>>[AppBackground(color: pageBackground)],
      colorScheme: scheme,
      appBarTheme: const AppBarTheme(
        backgroundColor: surface,
        foregroundColor: ink,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w800, letterSpacing: -0.8, color: ink),
        headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, letterSpacing: -0.6, color: ink),
        titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: ink),
        titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: ink),
        bodyMedium: TextStyle(fontSize: 14, height: 1.5, color: ink),
        bodySmall: TextStyle(fontSize: 12, height: 1.5, color: muted),
        labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Color(0xFFCFD6E3))),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Color(0xFFCFD6E3))),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: skyBlue, width: 1.5)),
        labelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: ink),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
          backgroundColor: skyBlue,
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
          foregroundColor: ink,
          side: const BorderSide(color: Color(0xFFCFD6E3)),
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: surface,
        selectedColor: skyBlue,
        labelStyle: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: ink),
        secondaryLabelStyle: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: Colors.white),
        side: const BorderSide(color: Color(0xFFD4DBEA)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      ),
    );
  }

  static ThemeData get lightTheme => lightThemeWith();
}
