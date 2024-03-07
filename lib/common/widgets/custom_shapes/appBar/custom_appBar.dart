import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:techplied_app/utils/constants/sizes.dart';
import 'package:techplied_app/utils/device/device_utils.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.title,
      this.showBackButton = false,
      this.leadingIcon,
      this.onLeadingTap,
      this.actions});
  final Widget? title;
  final bool showBackButton;
  final IconData? leadingIcon;
  final VoidCallback? onLeadingTap;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: showBackButton
              ? IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Iconsax.arrow_left))
              : leadingIcon != null
                  ? IconButton(onPressed: onLeadingTap, icon: Icon(leadingIcon))
                  : null,
          title: title,
          actions: actions,
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppBarHeight());
}
