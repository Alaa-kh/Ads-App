import 'package:ads_project/app/shared/custom_horizontal_sizedbox.dart';
import 'package:ads_project/app/shared/custom_vertical_sizedbox.dart';
import 'package:ads_project/app/themes/app_colors.dart';
import 'package:ads_project/app/themes/app_text_theme.dart';
import 'package:ads_project/app/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationsMainListWidget extends StatelessWidget {
  const NotificationsMainListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder:
          (BuildContext context, int index) => ListTile(
            leading: SvgPicture.asset(AppIcons.falseIcon),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                'Your application for the Persil campaign has been rejected.',
                style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '12 min ago',
                  style: AppTextTheme.textTheme.labelLarge!.copyWith(
                    fontSize: 13,
                    color: AppColors.blackColor,
                  ),
                ),
                CustomHorizontalSizedBox(width: 6),
                SvgPicture.asset(AppIcons.notificationEllipseIcon),
              ],
            ),
          ),
      separatorBuilder:
          (BuildContext context, int index) =>
              CustomVerticalSizedBox(height: 3),
      itemCount: 7,
    );
  }
}
