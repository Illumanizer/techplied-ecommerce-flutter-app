import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:techplied_app/features/authentication/controllers_onboarding/on_boarding_controller.dart';
import 'package:techplied_app/utils/constants/colors.dart';
import 'package:techplied_app/utils/constants/sizes.dart';
import 'package:techplied_app/utils/device/device_utils.dart';
import 'package:techplied_app/utils/helpers/helper_functions.dart';

class OnBoardingNext extends StatelessWidget {
  const OnBoardingNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isdark = AppHelperFunctions.isDarkMode(context);
    final controller=OnBoardingController.instance;
    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
      right: AppSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => controller.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: isdark ? AppColors.primaryColor : Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
