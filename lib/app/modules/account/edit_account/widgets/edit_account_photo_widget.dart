import 'package:ads_project/app/themes/app_colors.dart';
import 'package:ads_project/app/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditAccountPhotoWidget extends StatelessWidget {
  const EditAccountPhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 135,
          height: 135,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.lightDarkColor.withValues(alpha: .7),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 5,
          right: 8,
          child: InkWell(
            onTap: () {},
            child: SvgPicture.asset(AppIcons.editIcon),
          ),
        ),
      ],
    );
  }
}
