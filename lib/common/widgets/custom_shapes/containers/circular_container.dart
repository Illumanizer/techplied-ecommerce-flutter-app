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
  });

  final double? width, height;
  final double radius, padding;
  final Widget? child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: color.withOpacity(0.1)),
      child: child,
    );
  }
}
