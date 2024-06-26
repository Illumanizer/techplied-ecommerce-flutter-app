import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:techplied_app/common/widgets/brands/brand_card.dart';
import 'package:techplied_app/common/widgets/brands/brand_showcase.dart';
import 'package:techplied_app/common/widgets/custom_shapes/appBar/custom_appBar.dart';
import 'package:techplied_app/common/widgets/custom_shapes/appBar/custom_tabBar.dart';
import 'package:techplied_app/common/widgets/custom_shapes/containers/app_bar_search.dart';
import 'package:techplied_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:techplied_app/common/widgets/images/app_circular_image.dart';
import 'package:techplied_app/common/widgets/layouts/grid_layout.dart';
import 'package:techplied_app/common/widgets/product_cart/app_cart_icon.dart';
import 'package:techplied_app/common/widgets/text/brand_title_text.dart';
import 'package:techplied_app/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:techplied_app/common/widgets/text/section_heading.dart';
import 'package:techplied_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:techplied_app/utils/constants/colors.dart';
import 'package:techplied_app/utils/constants/enums.dart';
import 'package:techplied_app/utils/constants/image_strings.dart';
import 'package:techplied_app/utils/constants/sizes.dart';
import 'package:techplied_app/utils/helpers/helper_functions.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            AppCartIcon(
                iconColor: isDark ? AppColors.white : AppColors.black,
                onPressed: () {})
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: isDark ? AppColors.black : AppColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(AppSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        //search bar
                        const SizedBox(
                          height: AppSizes.spaceBetweenItems,
                        ),
                        const AppBarSearch(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: AppSizes.spaceBetweenSections,
                        ),

                        //featured brands
                        SectionHeading(
                          title: 'Featured Brands',
                          onButtonPressed: () {},
                        ),
                        const SizedBox(
                          height: AppSizes.spaceBetweenItems / 1.5,
                        ),

                        GridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return BrandCard(
                                showBorder: true,
                              );
                            }),
                      ],
                    ),
                  ),

                  //tabbar

                  bottom: CustomTabBar(
                    tabs: [
                      Tab(
                        child: Text("Music"),
                      ),
                      Tab(
                        child: Text("sports"),
                      ),
                      Tab(
                        child: Text("furniture"),
                      ),
                      Tab(
                        child: Text("shoes"),
                      ),
                      Tab(
                        child: Text("dance"),
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
              ],
            )),
      ),
    );
  }
}
