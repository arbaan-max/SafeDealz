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
  static const Color appBackground = Color(0xFFF0F9FF);
  static const Color _purpleAccent = Color(0xFF6D38C7);

  static ThemeData lightThemeWith({Color? background}) {
    final Color pageBackground = background ?? appBackground;
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: pageBackground,
      extensions: <ThemeExtension<dynamic>>[AppBackground(color: pageBackground)],
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
