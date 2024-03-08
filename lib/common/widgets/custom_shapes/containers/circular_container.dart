import 'package:flutter/material.dart';
import 'package:techplied_app/utils/constants/colors.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.color = AppColors.white,
    this.margin,
  });

  final double? width, height;
  final double radius, padding;
  final Widget? child;
  final Color color;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: color.withOpacity(0.3)),
      child: child,
    );
  }
}
