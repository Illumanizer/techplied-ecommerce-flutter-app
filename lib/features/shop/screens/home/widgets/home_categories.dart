import 'package:flutter/material.dart';
import 'package:techplied_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:techplied_app/utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageText(
            image: AppImages.furnitureIcon,
            title: "Furniture",
            onTap: () {},
          );
        },
      ),
    );
  }
}
