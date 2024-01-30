import 'package:blocklearning/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle body = const TextStyle(
    color: AppColors.textPrimary,
    fontSize: 16,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    height: 1.20,
  );
  static TextStyle error = const TextStyle(
    color: AppColors.error,
    fontSize: 12,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    height: 1.20,
  );
  static TextStyle title = const TextStyle(
    color: AppColors.textPrimary,
    fontSize: 22,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
  );
}
