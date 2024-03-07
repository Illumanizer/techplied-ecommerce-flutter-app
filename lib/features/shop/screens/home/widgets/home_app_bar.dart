import 'package:flutter/material.dart';
import 'package:techplied_app/common/widgets/custom_shapes/appBar/custom_appBar.dart';
import 'package:techplied_app/common/widgets/product_cart/app_cart_icon.dart';
import 'package:techplied_app/utils/constants/colors.dart';
import 'package:techplied_app/utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTextStrings.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: AppColors.grey),
          ),
          Text(
            AppTextStrings.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: AppColors.white),
          ),
        ],
      ),
      actions: [
        AppCartIcon(
          onPressed: () {},
          iconColor: AppColors.white,
        ),
      ],
    );
  }
}
