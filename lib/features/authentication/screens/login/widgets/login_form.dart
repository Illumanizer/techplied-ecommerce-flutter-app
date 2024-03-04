import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:techplied_app/features/authentication/screens/signup/sign_up.dart';
import 'package:techplied_app/utils/constants/sizes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppSizes.spaceBetweenItems),
        child: Column(
          children: [
            //email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: "Email",
                hintText: "Enter your email",
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBwInputFields,
            ),
            //password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: "Password",
                hintText: "Enter your password",
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBwInputFields / 2,
            ),
            //remember me & forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text("Remember me"),
                  ],
                ),
                //forgot password
                TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password?"),
                ),
              ],
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenSections,
            ),
            //sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Sign In"),
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenSections,
            ),
            //Account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(()=>const SignUpScreen()),
                child: const Text("Create Account"),
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenSections,
            ),
          ],
        ),
      ),
    );
  }
}
