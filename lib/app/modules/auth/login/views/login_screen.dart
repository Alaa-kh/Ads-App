import 'package:ads_project/app/modules/auth/login/widgets/login_main_section_widget.dart';
import 'package:ads_project/app/modules/auth/login/widgets/login_or_register_widget.dart';
import 'package:ads_project/app/shared/custom_vertical_sizedbox.dart';
import 'package:ads_project/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          LoginMainSectionWidget(),
          const CustomVerticalSizedBox(height: 30),
          LoginOrRegisterWidget(),
        ],
      ),
    );
  }
}
