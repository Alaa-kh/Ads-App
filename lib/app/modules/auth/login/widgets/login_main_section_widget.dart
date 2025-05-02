
import 'package:ads_project/app/shared/custom_vertical_sizedbox.dart';
import 'package:ads_project/app/themes/app_colors.dart';
import 'package:ads_project/app/themes/app_text_theme.dart';
import 'package:ads_project/app/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginMainSectionWidget extends StatelessWidget {
  const LoginMainSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 1,

          child: FittedBox(
            child: SvgPicture.asset(
              'assets/svg/Ellipse 1.svg',
              height: 250,

              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Positioned(
          top: 1,

          child: FittedBox(
            child: SvgPicture.asset(
              'assets/svg/Ellipse 2.svg',
              height: 250,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),

        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomVerticalSizedBox(height: 40),
              InkWell(
                onTap: () => Get.back(),
                child: SvgPicture.asset(AppIcons.arrowIcon),
              ),
              const CustomVerticalSizedBox(height: 40),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Go ahead and set up\nyour account\n',
                      style: AppTextTheme.textTheme.bodyLarge!.copyWith(
                        color: AppColors.yellowColor,
                        height: 1.4,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign in-up to enjoy the best experience',
                      style: AppTextTheme.textTheme.labelLarge!.copyWith(
                        height: 2,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
