import 'package:ads_project/app/shared/custom_vertical_sizedbox.dart';
import 'package:ads_project/app/themes/app_colors.dart';
import 'package:ads_project/app/themes/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MustangDetailsDriverWidget extends StatelessWidget {
  const MustangDetailsDriverWidget({
    super.key,
    required this.icon,
    required this.number,
  });
  final String icon;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 60,
          height: 64,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightWhiteColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(icon),
        ),
        const CustomVerticalSizedBox(height: 7),
        Text(
          number,
          style: AppTextTheme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.blackColor,
          ),
        ),
      ],
    );
  }
}
