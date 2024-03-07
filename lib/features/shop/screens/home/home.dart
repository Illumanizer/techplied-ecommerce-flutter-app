import 'package:flutter/material.dart';
import 'package:techplied_app/common/widgets/custom_shapes/appBar/custom_appBar.dart';
import 'package:techplied_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:techplied_app/common/widgets/product_cart/app_cart_icon.dart';
import 'package:techplied_app/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:techplied_app/utils/constants/colors.dart';
import 'package:techplied_app/utils/constants/text_strings.dart';

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

                  //search bar

                  //categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
