import 'package:flutter/material.dart';
import 'package:techplied_app/utils/constants/colors.dart';
import 'package:techplied_app/utils/device/device_utils.dart';
import 'package:techplied_app/utils/helpers/helper_functions.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return Material(
      color: isDark?AppColors.black:AppColors.white,
      child: TabBar(
        labelColor: isDark?AppColors.white:AppColors.primaryColor,
        unselectedLabelColor: AppColors.darkGrey,
        indicatorColor: AppColors.primaryColor,
        isScrollable: true,
        tabs: tabs,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppBarHeight());
}
