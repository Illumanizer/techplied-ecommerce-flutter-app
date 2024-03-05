import 'package:flutter/material.dart';
import 'package:techplied_app/common/styles/spacing_styles.dart';
import 'package:techplied_app/utils/constants/sizes.dart';
import 'package:techplied_app/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_icons.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo, title, and subtitle
              LoginHeader(isDark: isDark),
              const LoginForm(),
              //divider
              FormDivider(isDark: isDark, dividerText: "OR Sign In With"),
              //footer
              const SizedBox(
                height: AppSizes.spaceBetweenItems,
              ),
              const SocialIcons()
            ],
          ),
        ),
      ),
    );
  }
}
