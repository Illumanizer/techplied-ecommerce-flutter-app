import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techplied_app/common/widgets/success_screen/success_screen.dart';
import 'package:techplied_app/features/authentication/screens/login/login.dart';
import 'package:techplied_app/utils/constants/image_strings.dart';
import 'package:techplied_app/utils/constants/sizes.dart';
import 'package:techplied_app/utils/constants/text_strings.dart';
import 'package:techplied_app/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            //image
            Image(
                image: const AssetImage(AppImages.verifyEmail),
                width: AppHelperFunctions.screenWidth() * 0.6),
            const SizedBox(height: AppSizes.spaceBetweenSections),

            //title & subtitle
            Text(
              AppTextStrings.confirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBetweenItems),
            Text(
              "support@techplied.com",
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBetweenItems),
            Text(
              AppTextStrings.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBetweenSections),
            //button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const SuccessScreen(
                      image: AppImages.verifyEmail,
                      title: AppTextStrings.confirmEmail,
                      subtitle: AppTextStrings.confirmEmailSubTitle,
                    )),
                child: const Text(AppTextStrings.confirmEmail),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBetweenItems),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  AppTextStrings.resendEmail,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
