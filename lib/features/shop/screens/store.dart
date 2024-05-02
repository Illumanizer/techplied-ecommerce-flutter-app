import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:techplied_app/common/widgets/custom_shapes/appBar/custom_appBar.dart';
import 'package:techplied_app/common/widgets/custom_shapes/containers/app_bar_search.dart';
import 'package:techplied_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:techplied_app/common/widgets/images/app_circular_image.dart';
import 'package:techplied_app/common/widgets/layouts/grid_layout.dart';
import 'package:techplied_app/common/widgets/product_cart/app_cart_icon.dart';
import 'package:techplied_app/common/widgets/text/brand_title_text_with_verified_icon.dart';
import 'package:techplied_app/common/widgets/text/section_heading.dart';
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
    return Scaffold(
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
                            return GestureDetector(
                              onTap: () {},
                              child: CircularContainer(
                                padding: const EdgeInsets.all(AppSizes.sm),
                                showBorder: true,
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
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Brand_title_text_with_verified_icon(
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
                          }),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container()),
    );
  }
}
