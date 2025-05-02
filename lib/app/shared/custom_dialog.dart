import 'package:ads_project/app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

void showTextDialog(String title, String subTitle,String icon,  bool isError, [Function()? onTap]) {
  Get.dialog(
    AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      surfaceTintColor: AppColors.yellowColor,
      backgroundColor: AppColors.whiteColor,
      contentPadding: EdgeInsets.zero,
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset( icon),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
               subTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xff7D848D),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
    ),
    barrierDismissible: true,
  );
}
