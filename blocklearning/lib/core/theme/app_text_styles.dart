import 'package:blocklearning/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle body = const TextStyle(
    color: AppColors.whiteSecondary,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle title = const TextStyle(
    color: AppColors.whitePrimary,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );
  static TextStyle buttonTitle = const TextStyle(
    color: AppColors.whitePrimary,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle buttonSubtitle = const TextStyle(
    color: AppColors.whiteSecondary,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
}
