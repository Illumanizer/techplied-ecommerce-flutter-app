import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:techplied_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:techplied_app/utils/constants/sizes.dart';
import 'package:techplied_app/utils/constants/text_strings.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // headings
            Text(
              AppTextStrings.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenItems,
            ),
            Text(
              AppTextStrings.forgetPasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenSections * 2,
            ),

            //text field
            TextFormField(
              decoration: const InputDecoration(
                labelText: "E-mail",
                prefixIcon: Icon(
                  Iconsax.direct_right,
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenSections,
            ),

            //submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(()=>const ResetPasswordScreen()),
                child: const Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
