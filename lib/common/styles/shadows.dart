import 'package:flutter/material.dart';
import 'package:techplied_app/utils/constants/colors.dart';

class ShadowStyle{

  static final verticalProductShadow=BoxShadow(
    color: AppColors.darkGrey.withOpacity(0.1),
    offset: const Offset(0, 2),
    blurRadius: 50,
    spreadRadius: 7,
  );
  static final horizontalProductShadow=BoxShadow(
    color: AppColors.darkGrey.withOpacity(0.1),
    offset: const Offset(0, 2),
    blurRadius: 50,
    spreadRadius: 7,
  );
}