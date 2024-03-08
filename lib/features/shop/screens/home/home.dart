import 'package:flutter/material.dart';
import 'package:techplied_app/common/widgets/custom_shapes/containers/app_bar_search.dart';
import 'package:techplied_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:techplied_app/common/widgets/text/section_heading.dart';
import 'package:techplied_app/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:techplied_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:techplied_app/utils/constants/colors.dart';
import 'package:techplied_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
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
                  //heading
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
          ],
        ),
      ),
    );
  }
}
