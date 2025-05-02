import 'package:ads_project/app/themes/app_colors.dart';
import 'package:ads_project/app/themes/app_text_theme.dart';
import 'package:flutter/material.dart';

AppBar mainAppBar(
  Widget leadingIcon, {
  Radius? radius,
  String? title,
  List<Widget>? actions,
  Color? backgroundColor,
}) => AppBar(

  elevation: 0,
  backgroundColor: backgroundColor ?? AppColors.primaryColor,
  toolbarHeight: 98,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(bottom: radius ?? Radius.circular(30)),
  ),

  leading: IconButton(
    onPressed: () {}, icon: leadingIcon),
  title: Text(
    title ?? '',
    style: AppTextTheme.textTheme.headlineLarge!.copyWith(
      fontSize: 18,
      color: AppColors.whiteColor,
    ),
  ),
  centerTitle: true,
  actions: actions ?? [],
);
