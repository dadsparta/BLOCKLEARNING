import 'package:blocklearning/core/theme/app_colors.dart';
import 'package:blocklearning/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final baseTheme = ThemeData(
  useMaterial3: true,
  textTheme: GoogleFonts.kalamTextTheme(),
  scaffoldBackgroundColor: AppColors.background,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.primary,
    titleTextStyle: GoogleFonts.kalam(textStyle: AppTextStyles.title)
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.primary,
  ),
);