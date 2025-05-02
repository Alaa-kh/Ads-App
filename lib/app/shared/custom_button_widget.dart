import 'package:ads_project/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key, required this.text, this.onTap,  this.fontSize});
  final String text;
  final double? fontSize;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text,
          style:TextStyle(
            color: AppColors.whiteColor,
            fontSize: fontSize ?? 16.0
          ),
        ),
      ),
    );
  }
}
