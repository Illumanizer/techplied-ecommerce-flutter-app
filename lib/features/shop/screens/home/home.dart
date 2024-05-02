import 'package:flutter/material.dart';
import 'package:techplied_app/common/widgets/custom_shapes/containers/app_bar_search.dart';
import 'package:techplied_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:techplied_app/common/widgets/layouts/grid_layout.dart';
import 'package:techplied_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:techplied_app/common/widgets/text/section_heading.dart';
import 'package:techplied_app/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:techplied_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:techplied_app/features/shop/screens/home/widgets/promo_carousel_slider.dart';
import 'package:techplied_app/utils/constants/colors.dart';
import 'package:techplied_app/utils/constants/image_strings.dart';
import 'package:techplied_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  //appbar
                  HomeAppBar(),
                  SizedBox(height: AppSizes.spaceBetweenSections),

                  //search bar
                  AppBarSearch(
                    text: 'Search for products',
                  ),
                  SizedBox(height: AppSizes.spaceBetweenSections),

                  //categories
                  //heading̦̦̦
                  SectionHeading(
                    showActionButton: false,
                    title: "Product Categories",
                    textColor: AppColors.white,
                  ),
                  SizedBox(height: AppSizes.spaceBetweenItems),
                  //horizontal list of categories
                  HomeCategories(),
                ],
              ),
            ),

            //body
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  //promo slider ̰
                  PromoCarouselSlider(
                    banners: const [
                      AppImages.banner1,
                      AppImages.banner2,
                      AppImages.banner3
                    ],
                  ),
                  SizedBox(
                    height: AppSizes.spaceBetweenSections,
                  ),

                  //section heading
                  SectionHeading(
                    title: "Popular Products",
                    onButtonPressed: (){},
                  ),
                  SizedBox(
                    height: AppSizes.spaceBetweenItems/2,
                  ),

                  //popular products
                  GridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => ProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
