import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:techplied_app/features/authentication/screens/signup/verify_email.dart';
import 'package:techplied_app/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:techplied_app/utils/constants/sizes.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "First Name",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: AppSizes.spaceBwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSizes.spaceBwInputFields,
          ),
          //username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "Username",
              prefixIcon: Icon(Iconsax.user),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBwInputFields,
          ),
          //email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "E-mail",
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBwInputFields,
          ),
          //phone no
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "Phone number",
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBwInputFields,
          ),
          //password
          TextFormField(
            expands: false,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Iconsax.check),
              suffix: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBetweenSections,
          ),

          //terms and conditions
          const TermsAndConditions(),
          const SizedBox(
            height: AppSizes.spaceBetweenSections,
          ),
          //sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text('Create Account'),
            ),
          ),
        ],
      ),
    );
  }
}
