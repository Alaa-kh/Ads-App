import 'package:ads_project/app/modules/account/edit_account/views/edit_account_screen.dart';
import 'package:ads_project/app/modules/account/widgets/account_list_info_widget.dart';
import 'package:ads_project/app/modules/account/widgets/account_photo_widget.dart';
import 'package:ads_project/app/modules/account/widgets/account_profit_and_order_widget.dart';
import 'package:ads_project/app/modules/account/widgets/account_see_all_widget.dart';
import 'package:ads_project/app/shared/custom_vertical_sizedbox.dart';
import 'package:ads_project/app/themes/app_colors.dart';
import 'package:ads_project/app/themes/app_text_theme.dart';
import 'package:ads_project/app/utils/app_icons.dart';
import 'package:ads_project/app/widgets/main_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      extendBodyBehindAppBar: false,
      backgroundColor: AppColors.whiteColor,
      appBar: mainAppBar(
        radius: Radius.circular(0),
        SvgPicture.asset(AppIcons.notificationBlackIcon),
        actions: [
          IconButton(
            onPressed: () =>Get.to(()=> EditAccountScreen()),
            icon: Text(
              'Edit',
              style: AppTextTheme.textTheme.titleLarge!.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
        backgroundColor: AppColors.whiteColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomVerticalSizedBox(height: 25),
              AccountPhotoWidget(),
              const CustomVerticalSizedBox(height: 10),
              Text(
                'Hussam Zina',
                style: AppTextTheme.textTheme.displayMedium!.copyWith(
                  color: AppColors.navyBlueColor,
                ),
              ),
              CustomVerticalSizedBox(height: 40),
              AccountProfitAndOrderWidget(),
              CustomVerticalSizedBox(height: 20),
              AccountSeeAllWidget(),
              CustomVerticalSizedBox(height: 13),
              AccountListInfoWidget(),
              CustomVerticalSizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
