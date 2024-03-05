import 'package:flutter/material.dart';
import 'package:techplied_app/common/widgets/login_signup/form_divider.dart';
import 'package:techplied_app/common/widgets/login_signup/social_icons.dart';
import 'package:techplied_app/features/authentication/screens/signup/widgets/sign_up_form.dart';
import 'package:techplied_app/utils/constants/sizes.dart';
import 'package:techplied_app/utils/constants/text_strings.dart';
import 'package:techplied_app/utils/helpers/helper_functions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //title
              Text(
                AppTextStrings.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: AppSizes.spaceBetweenSections,
              ),

              //form
              const SignUpForm(),
              const SizedBox(
                height: AppSizes.spaceBetweenSections,
              ),
              FormDivider(isDark: isDark, dividerText: "sign up with"),
              const SizedBox(
                height: AppSizes.spaceBetweenItems,
              ),
              const SocialIcons(),
            ],
          ),
        ),
      ),
    );
  }
}
