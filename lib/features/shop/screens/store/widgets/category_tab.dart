import 'package:flutter/material.dart';
import 'package:techplied_app/common/widgets/brands/brand_showcase.dart';
import 'package:techplied_app/common/widgets/layouts/grid_layout.dart';
import 'package:techplied_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:techplied_app/common/widgets/text/section_heading.dart';
import 'package:techplied_app/utils/constants/image_strings.dart';
import 'package:techplied_app/utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //brands
              BrandShowcase(
                images: [
                  AppImages.product1,
                  AppImages.shoeIcon,
                  AppImages.animalIcon
                ],
              ),
              const SizedBox(height: AppSizes.spaceBetweenItems),
        
              SectionHeading(
                title: "You might like..",
                onButtonPressed: () {},
              ),
        
              const SizedBox(height: AppSizes.spaceBetweenItems),
        
              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => ProductCardVertical(),
              ),
        
              //products
            ],
          ),
        ),
      ],
    );
  }
}
