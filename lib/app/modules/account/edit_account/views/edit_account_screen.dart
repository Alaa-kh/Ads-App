import 'package:ads_project/app/modules/account/edit_account/widgets/edit_account_photo_widget.dart';
import 'package:ads_project/app/shared/custom_button_widget.dart';
import 'package:ads_project/app/shared/custom_textfield.dart';
import 'package:ads_project/app/shared/custom_vertical_sizedbox.dart';
import 'package:ads_project/app/themes/app_colors.dart';
import 'package:ads_project/app/utils/app_icons.dart';
import 'package:ads_project/app/widgets/main_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditAccountScreen extends StatelessWidget {
  const EditAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      extendBodyBehindAppBar: false,
      backgroundColor: AppColors.whiteColor,
      appBar: mainAppBar(
        radius: Radius.circular(0),
        Container(
          alignment: Alignment.center,
          width: 44,
          height: 44,
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
          child: Icon(Icons.arrow_back_ios, size: 13),
        ),

        backgroundColor: AppColors.whiteColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomVerticalSizedBox(height: 25),
            EditAccountPhotoWidget(),
            const CustomVerticalSizedBox(height: 50),
            CustomTextField(
              prefixIcon: SvgPicture.asset(AppIcons.nameIcon),
              hintText: 'Hussam Zina',
            ),
            const CustomVerticalSizedBox(height: 18),

            CustomTextField(
              prefixIcon: SvgPicture.asset(AppIcons.phoneIcon),
              hintText: '0947650539',
            ),
            const CustomVerticalSizedBox(height: 18),
            CustomTextField(
              prefixIcon: SvgPicture.asset(AppIcons.passwordIcon),
              hintText: 'husam123',
            ),
            CustomVerticalSizedBox(height: 30),
            CustomButtonWidget(text: 'Save Changes'),
          ],
        ),
      ),
    );
  }
}
