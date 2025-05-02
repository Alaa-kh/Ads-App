import 'package:ads_project/app/themes/app_colors.dart';
import 'package:ads_project/app/themes/app_text_theme.dart';
import 'package:flutter/material.dart';

class MustangTextInfoWidget extends StatelessWidget {
  const MustangTextInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text:
                'Mustang is a sports car with very few flaws of one.Sure it is not perfect, but with that price tag, you get a lot of the American muscle for your money',
            style: AppTextTheme.textTheme.labelLarge!.copyWith(
              color: AppColors.warmGrayColor,
              fontWeight: FontWeight.w400,
              height: 1.4,
            ),
          ),
          TextSpan(
            text: ' Read more....',
            style: AppTextTheme.textTheme.labelLarge!.copyWith(
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
