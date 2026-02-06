import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.emeraldRoyal,
      scaffoldBackgroundColor: AppColors.backgroundLight,
      colorScheme: ColorScheme.light(
        primary: AppColors.emeraldRoyal,
        secondary: AppColors.goldRoyal,
        surface: Colors.white,
        background: AppColors.backgroundLight,
      ),
      fontFamily: 'Plus Jakarta Sans',
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontFamily: 'Cinzel',
          fontWeight: FontWeight.bold,
          color: AppColors.emeraldRoyal,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Lora',
          fontWeight: FontWeight.w600,
          color: AppColors.emeraldRoyal,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Plus Jakarta Sans',
          color: AppColors.textDark,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.emeraldRoyal,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontFamily: 'Cinzel',
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: AppColors.goldLight,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.emeraldRoyal,
          foregroundColor: AppColors.goldLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      primaryColor: AppColors.emeraldRoyal,
      scaffoldBackgroundColor: AppColors.backgroundDark,
      colorScheme: ColorScheme.dark(
        primary: AppColors.emeraldRoyal,
        secondary: AppColors.goldRoyal,
        surface: AppColors.backgroundDark,
        background: AppColors.backgroundDark,
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontFamily: 'Cinzel',
          fontWeight: FontWeight.bold,
          color: AppColors.goldRoyal,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Plus Jakarta Sans',
          color: AppColors.textLight,
        ),
      ),
    );
  }
}
