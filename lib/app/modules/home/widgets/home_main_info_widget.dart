import 'package:ads_project/app/modules/mustang/views/mustang_screen.dart';
import 'package:ads_project/app/themes/app_colors.dart';
import 'package:ads_project/app/themes/app_text_theme.dart';
import 'package:ads_project/app/utils/app_icons.dart';
import 'package:ads_project/app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeMainInfoWidget extends StatelessWidget {
  const HomeMainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          AppImages.persilImage,
          height: 167,
          alignment: Alignment.center,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: ListTile(
            onTap: () => Get.to(() => MustangScreen()),
            title: Text(
              'Dec 20 - Feb 21',
              style: AppTextTheme.textTheme.titleLarge,
            ),
            subtitle: Text(
              '100 Driver',
              style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.yellowColor,
              ),
            ),
            trailing:  SvgPicture.asset(AppIcons.arrowNextIcon),
            
          ),
        ),
      ],
    );
  }
}
