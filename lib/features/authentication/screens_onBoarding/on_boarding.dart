import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techplied_app/features/authentication/controllers_onboarding/on_boarding_controller.dart';
import 'package:techplied_app/utils/constants/image_strings.dart';
import 'package:techplied_app/utils/constants/text_strings.dart';
import 'widget/on_boarding_navigation.dart';
import 'widget/on_boarding_next.dart';
import 'widget/on_boarding_page.dart';
import 'widget/on_boarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: AppImages.onBoardingImage1,
                title: AppTextStrings.onBoardingTitle1,
                subTitle: AppTextStrings.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage2,
                title: AppTextStrings.onBoardingTitle2,
                subTitle: AppTextStrings.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage3,
                title: AppTextStrings.onBoardingTitle3,
                subTitle: AppTextStrings.onBoardingSubTitle3,
              ),
            ],
          ),
          //skip button
          const OnBoardingSkip(),
          //dot navigation
          const OnBoardingNavigation(),
          //next Circular button
          const OnBoardingNext()
        ],
      ),
    );
  }
}
