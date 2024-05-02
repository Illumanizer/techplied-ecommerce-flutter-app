import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:techplied_app/common/styles/shadows.dart';
import 'package:techplied_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:techplied_app/common/widgets/icons/circular_icon.dart';
import 'package:techplied_app/common/widgets/images/rounded_image_container.dart';
import 'package:techplied_app/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:techplied_app/common/widgets/text/product_price_text.dart';
import 'package:techplied_app/common/widgets/text/product_title_text.dart';
import 'package:techplied_app/utils/constants/colors.dart';
import 'package:techplied_app/utils/constants/image_strings.dart';
import 'package:techplied_app/utils/constants/sizes.dart';
import 'package:techplied_app/utils/helpers/helper_functions.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          color: isDark ? AppColors.darkGrey : AppColors.white,
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        ),
        child: Column(
          children: [
            //thumbnail
            CircularContainer(
              height: 180,
              padding: const EdgeInsets.all(AppSizes.sm),
              color: isDark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  // Thumbnail Image
                  const RoundedImageContainer(
                    imageUrl: AppImages.product1,
                    applyImageRadius: false,
                  ),
                  //sale tag
                  Positioned(
                    top: 12,
                    child: CircularContainer(
                      radius: AppSizes.sm,
                      color: AppColors.secondaryColor.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.sm, vertical: AppSizes.xs),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: AppColors.black),
                      ),
                    ),
                  ),
                  //fav icon
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            //details
            const SizedBox(
              height: AppSizes.spaceBetweenItems / 2,
            ),
            const Padding(
              padding: EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: "Yamaha Guitar",
                    smallSize: true,
                  ),
                  SizedBox(
                    height: AppSizes.spaceBetweenItems / 2,
                  ),
                  Brand_title_text_with_verified_icon(
                    title: "Yamaha",
                    iconColor: AppColors.primaryColor,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //price
                const Padding(
                  padding: EdgeInsets.only(left: AppSizes.sm),
                  child: ProductPriceText(
                    price: '3000',
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: AppColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(AppSizes.productImageRadius))),
                  child: const SizedBox(
                      width: AppSizes.iconlg * 1.2,
                      height: AppSizes.iconlg * 1.2,
                      child: Icon(Iconsax.add, color: AppColors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
