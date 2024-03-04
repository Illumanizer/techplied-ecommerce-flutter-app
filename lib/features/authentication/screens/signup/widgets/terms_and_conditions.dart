import 'package:flutter/material.dart';
import 'package:techplied_app/utils/constants/sizes.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 24,
            width: 24,
            child: Checkbox(
                value: true,
                activeColor: Colors.blue,
                onChanged: (value) {})),
        const SizedBox(
          width: AppSizes.spaceBetweenItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              const TextSpan(
                text: "I agree to the ",
              ),
              TextSpan(
                text: "Terms and Conditions",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
