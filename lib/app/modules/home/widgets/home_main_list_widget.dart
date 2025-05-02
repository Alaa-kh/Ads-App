import 'package:ads_project/app/modules/home/widgets/home_main_info_widget.dart';
import 'package:ads_project/app/shared/custom_dialog.dart';
import 'package:ads_project/app/themes/app_colors.dart';
import 'package:ads_project/app/utils/app_icons.dart';
import 'package:flutter/material.dart';

class HomeMainListWidget extends StatelessWidget {
  const HomeMainListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showTextDialog(
          'Your request will be\n reviewed within 48 hours',
          'Visit a gas station to apply the\n sticker',
          AppIcons.checkIcon,
          false,
        );
      },
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 260,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              spreadRadius: 1,
              color: AppColors.darkColor.withValues(alpha: .1),
            ),
          ],
        ),
        child: HomeMainInfoWidget(),
      ),
    );
  }
}
