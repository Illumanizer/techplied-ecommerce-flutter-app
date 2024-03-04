import 'package:flutter/material.dart';
import 'package:techplied_app/utils/constants/colors.dart';
import 'package:techplied_app/utils/constants/image_strings.dart';
import 'package:techplied_app/utils/constants/sizes.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Image(
            fit: BoxFit.cover,
            width: AppSizes.iconmd,
            height: AppSizes.iconmd,
            image: AssetImage(AppImages.google),
          ),
        ),
        const SizedBox(
          width: AppSizes.spaceBetweenItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Image(
            fit: BoxFit.fill,
            width: AppSizes.iconmd,
            height: AppSizes.iconmd,
            image: AssetImage(AppImages.facebook),
          ),
        ),
      ],
    );
  }
}
