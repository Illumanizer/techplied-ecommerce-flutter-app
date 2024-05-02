import 'package:flutter/material.dart';
import 'package:techplied_app/utils/constants/sizes.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = "View All",
    this.onButtonPressed,
  });
  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final VoidCallback? onButtonPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppSizes.defaultSpace),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              if (showActionButton)
                TextButton(
                    onPressed: onButtonPressed, child: Text(buttonTitle)),
            ],
          ),
        ],
      ),
    );
  }
}
