import 'package:blocklearning/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomNavigationButton extends StatelessWidget {
  const CustomNavigationButton({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              AnimatedContainer(
                width: isSelected ? 65 : 32,
                height: 32,
                duration: const Duration(milliseconds: 150),
                decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.buttonPressed
                        : AppColors.navigationBar,
                    // : Colors.transparent,
                    borderRadius: const BorderRadiusDirectional.all(Radius.circular(25))),
              ),
              Icon(icon,
                  color: isSelected
                      ? AppColors.whitePrimary
                      : AppColors.whiteSecondary),
            ]
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: isSelected
                  ? AppColors.whitePrimary
                  : AppColors.whiteSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
