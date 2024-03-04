import 'package:flutter/material.dart';
import 'package:techplied_app/features/authentication/controllers/Onboarding/on_boarding_controller.dart';
import 'package:techplied_app/utils/constants/sizes.dart';
import 'package:techplied_app/utils/device/device_utils.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnBoardingController.instance;
    return Positioned(
      top: AppDeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: controller.skipPage,
        child: const Text("Skip"),
      ),
    );
  }
}
