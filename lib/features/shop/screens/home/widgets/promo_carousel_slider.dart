import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:techplied_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:techplied_app/common/widgets/images/rounded_image_container.dart';
import 'package:techplied_app/features/shop/controller/home_controller.dart';
import 'package:techplied_app/utils/constants/colors.dart';
import 'package:techplied_app/utils/constants/sizes.dart';
import 'package:techplied_app/utils/helpers/helper_functions.dart';

class PromoCarouselSlider extends StatelessWidget {
  PromoCarouselSlider({
    super.key,
    required this.banners,
  });

  final controller = Get.put(HomeController());
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final isDark=AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 2),
            autoPlayAnimationDuration: const Duration(milliseconds: 1000),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, _) => controller.updateCarouselIndex(index),
          ),
          items: banners
              .map(
                (image) => RoundedImageContainer(
                  imageUrl: image,
                ),
              )
              .toList(),
        ),
        const SizedBox(
          height: AppSizes.spaceBetweenItems,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 1; i <= banners.length; i++)
                CircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: AppSizes.sm),
                  color: (controller.carouselIndex.value == i - 1)
                      ? isDark
                          ? AppColors.white
                          : AppColors.primaryColor
                      : AppColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
