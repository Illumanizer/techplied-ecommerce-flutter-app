import 'package:flutter/material.dart';
import 'package:techplied_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:techplied_app/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:techplied_app/utils/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        height: 400,
        color: AppColors.primaryColor,
        padding:  EdgeInsets.all(0),
        child:  Stack(
          children: [
            Positioned(top: -150, right: -250, child: CircularContainer()),
            Positioned(top: 100, right: -300, child: CircularContainer()),
            child,
          ],
        ),
      ),
    );
  }
}
