import 'package:flutter/material.dart';
import 'package:techplied_app/utils/constants/colors.dart';
import 'package:techplied_app/utils/constants/sizes.dart';
import 'package:techplied_app/utils/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AppColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.spaceBetweenItems / 2),
        child: Column(
          children: [
            //circular icon
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                  color: backgroundColor??
                      (isDark ? AppColors.black : AppColors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: isDark ? AppColors.light : AppColors.dark,
                ),
              ),
            ),
            //text
            const SizedBox(height: AppSizes.spaceBetweenItems / 2),
            SizedBox(
              width: 50,
              child: Center(
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
