import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:techplied_app/utils/constants/colors.dart';
import 'package:techplied_app/utils/constants/sizes.dart';
import 'package:techplied_app/utils/device/device_utils.dart';
import 'package:techplied_app/utils/helpers/helper_functions.dart';

class AppBarSearch extends StatelessWidget {
  const AppBarSearch({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding =
        const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: AppDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(AppSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? isDark
                    ? AppColors.dark
                    : AppColors.light
                : AppColors.transparent,
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
            border: showBorder
                ? Border.all(
                    color: Colors.grey,
                  )
                : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: AppColors.grey,
              ),
              const SizedBox(width: AppSizes.spaceBetweenItems),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
