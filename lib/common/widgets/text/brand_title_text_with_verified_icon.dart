import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:techplied_app/common/widgets/text/brand_title_text.dart';
import 'package:techplied_app/utils/constants/colors.dart';
import 'package:techplied_app/utils/constants/enums.dart';
import 'package:techplied_app/utils/constants/sizes.dart';

class Brand_title_text_with_verified_icon extends StatelessWidget {
  const Brand_title_text_with_verified_icon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
    this.textColor,
    this.iconColor = AppColors.primaryColor,
  });

  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;
  final Color? textColor, iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSizes: brandTextSizes,
          ),
        ),
        const SizedBox(
          width: AppSizes.xs,
        ),
        Icon(Iconsax.verify5,color: iconColor,size: AppSizes.iconxs,)
      ],
    );
  }
}
