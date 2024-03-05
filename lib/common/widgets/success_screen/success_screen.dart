import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techplied_app/common/styles/spacing_styles.dart';
import 'package:techplied_app/features/authentication/screens/login/login.dart';
import 'package:techplied_app/utils/constants/sizes.dart';
import 'package:techplied_app/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
       this.onPressed});
  final String image, title, subtitle;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppSpacingStyles.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            //image
            Image(
                image: AssetImage(image),
                width: AppHelperFunctions.screenWidth() * 0.6),
            const SizedBox(height: AppSizes.spaceBetweenSections),

            //title & subtitle
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBetweenItems),

            Text(
              subtitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBetweenSections),

            //button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed != null
                  ? () => onPressed!()
                  : () => Get.to(() => const LoginScreen()),
                child: const Text("Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
