import 'package:flutter/material.dart';
import 'package:sample_app_flutter/app_ui_kit/src/colors/app_colors.dart';

/// The Default Theme Configurations as per App UI Kit.
class AppTheme {
  const AppTheme();

  /// The Default Theme Data
  ThemeData get themeData {
    return ThemeData(
      appBarTheme: _appBarTheme,
      colorScheme: _colorScheme,
    );
  }

  /// The Default Color Scheme
  ColorScheme get _colorScheme => ColorScheme.fromSwatch(
        accentColor: AppColors.blue,
      );

  /// The Default AppBar Theme
  AppBarTheme get _appBarTheme => const AppBarTheme(color: AppColors.blue);
}
