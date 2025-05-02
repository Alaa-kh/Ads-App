
import 'package:ads_project/app/shared/custom_button_widget.dart';
import 'package:ads_project/app/shared/custom_textfield.dart';
import 'package:ads_project/app/shared/custom_vertical_sizedbox.dart';
import 'package:ads_project/app/themes/app_colors.dart';
import 'package:ads_project/app/themes/app_text_theme.dart';
import 'package:ads_project/app/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterTabWidget extends StatelessWidget {
  const RegisterTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomTextField(
            prefixIcon: SvgPicture.asset(AppIcons.nameIcon),
            hintText: 'Full Name',
          ),
          const CustomVerticalSizedBox(height: 18),

          CustomTextField(
            prefixIcon: SvgPicture.asset(AppIcons.phoneIcon),
            hintText: 'Phone No.',
          ),
          const CustomVerticalSizedBox(height: 18),
          CustomTextField(
            prefixIcon: SvgPicture.asset(AppIcons.passwordIcon),
            hintText: 'Password',
          ),
          const CustomVerticalSizedBox(height: 18),
          CustomTextField(
            prefixIcon: SvgPicture.asset(AppIcons.ageIcon),
            hintText: 'Your age',
          ),
          const CustomVerticalSizedBox(height: 18),
          CustomButtonWidget(text: 'Register'),
          const CustomVerticalSizedBox(height: 30),
          InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                border: Border.all(color: AppColors.lightDarkColor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.googleIcon),
                  const SizedBox(width: 10),
                  Text(
                    'Google',
                    style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                      color: AppColors.darkColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const CustomVerticalSizedBox(height: 25),
        ],
      ),
    );
  }
}
