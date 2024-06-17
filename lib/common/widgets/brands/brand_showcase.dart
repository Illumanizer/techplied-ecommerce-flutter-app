import 'package:flutter/cupertino.dart';
import 'package:techplied_app/common/widgets/brands/brand_card.dart';
import 'package:techplied_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:techplied_app/utils/constants/colors.dart';
import 'package:techplied_app/utils/constants/sizes.dart';
import 'package:techplied_app/utils/helpers/helper_functions.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return CircularContainer(
      showBorder: true,
      radius: 45,
      borderColor: AppColors.darkGrey,
      color: AppColors.transparent,
      margin: EdgeInsets.only(bottom: AppSizes.spaceBetweenItems),
      padding: EdgeInsets.all(AppSizes.md),
      child: Column(
        children: [
          BrandCard(
            showBorder: false,
          ),
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return Expanded(
      child: CircularContainer(
        height: 100,
        padding: EdgeInsets.all(AppSizes.md),
        margin: EdgeInsets.only(right: AppSizes.sm),
        color: isDark ? AppColors.darkGrey : AppColors.light,
        child:
            Image(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
