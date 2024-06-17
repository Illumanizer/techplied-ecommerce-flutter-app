import 'package:flutter/material.dart';
import 'package:techplied_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:techplied_app/common/widgets/images/app_circular_image.dart';
import 'package:techplied_app/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:techplied_app/utils/constants/colors.dart';
import 'package:techplied_app/utils/constants/enums.dart';
import 'package:techplied_app/utils/constants/image_strings.dart';
import 'package:techplied_app/utils/constants/sizes.dart';
import 'package:techplied_app/utils/helpers/helper_functions.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key, required this.showBorder, this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: CircularContainer(
        radius: 30,
        padding: const EdgeInsets.all(AppSizes.sm),
        showBorder: showBorder,
        borderColor: AppColors.black,
        child: Row(
          children: [
            //icon
            Flexible(
              child: AppCircularImage(
                isNetworkImage: false,
                image: AppImages.electronicIcon,
                backgroundColor: Colors.transparent,
                overlayColor: isDark
                    ? AppColors.white
                    : AppColors.black,
              ),
            ),
            const SizedBox(
              width: AppSizes.spaceBetweenItems / 2,
            ),
    
            //text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  const Brand_title_text_with_verified_icon(
                    title: "Yamaha",
                    brandTextSizes: TextSizes.large,
                    iconColor: AppColors.primaryColor,
                  ),
                  Text(
                    "278 products ",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
