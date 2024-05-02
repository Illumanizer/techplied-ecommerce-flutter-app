import 'package:flutter/material.dart';
import 'package:techplied_app/utils/constants/colors.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.width,
    this.height,
    this.radius = 400,
    this.padding,
    this.child,
    this.color = AppColors.white,
    this.margin,
    this.borderColor=AppColors.borderPrimaryColor,
    this.showBorder=false,
  });

  final double? width, height;
  final bool showBorder;
  final double radius;
  final Widget? child;
  final Color? color, borderColor;
  final EdgeInsets? margin, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(  
        borderRadius: BorderRadius.circular(radius),
        color: color!.withOpacity(0.3),
        border: showBorder ? Border.all(color: borderColor!) : null,
      ),
      child: child,
    );
  }
}
