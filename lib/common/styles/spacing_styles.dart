import 'package:flutter/material.dart';
import 'package:techplied_app/utils/constants/sizes.dart';

class AppSpacingStyles{
  static const EdgeInsetsGeometry paddingWithAppBarHeight=EdgeInsets.only(
    top: AppSizes.appBarHeight,
    left: AppSizes.defaultSpace,
    bottom: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
  );
}