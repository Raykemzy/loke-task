import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_loke/gen/fonts.gen.dart';

class AppTheme {
  // 🎨 Color Definitions
  static const Color _primaryColor = Color(0xFF8B88EF);
  static const Color _secondaryColor = Color(0xFFCBC9FF);
  static const Color _badgeColor = Color(0xFFB5B2FF);
  static const Color _containerColor = Color(0xFF232A2E);
  static const Color _errorColor = Color(0xFFF34E4E);

  // 🅰️ Font Sizes
  static final double _titleLargeFontSize = 34.sp;
  static final double _titleMediumFontSize = 20.sp;
  static final double _titleSmallFontSize = 11.sp;
  static final double _bodyLargeFontSize = 14.sp;
  static final double _bodyMediumFontSize = 12.sp;

  // 🅱️ Default Font Family
  static const String _defaultFontFamily = FontFamily.proximaNova;

  // 🌟 Theme Configuration
  static final ThemeData themeData = ThemeData(
    primaryColor: _primaryColor,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: _primaryColor,
      onPrimary: _containerColor,
      secondary: _secondaryColor,
      onSecondary: _badgeColor,
      error: _errorColor,
      onError: Colors.transparent,
      surface: Colors.transparent,
      onSurface: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: _defaultFontFamily,
        fontSize: _titleLargeFontSize,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        fontFamily: _defaultFontFamily,
        fontSize: _titleMediumFontSize,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: TextStyle(
        fontFamily: _defaultFontFamily,
        fontSize: _titleSmallFontSize,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: TextStyle(
        fontFamily: _defaultFontFamily,
        fontSize: _bodyMediumFontSize,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        fontFamily: _defaultFontFamily,
        fontSize: _bodyLargeFontSize,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        fontFamily: _defaultFontFamily,
        fontSize: _bodyMediumFontSize,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
