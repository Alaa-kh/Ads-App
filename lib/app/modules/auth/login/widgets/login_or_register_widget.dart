import 'package:ads_project/app/modules/auth/login/widgets/login_tab_widget.dart';
import 'package:ads_project/app/modules/auth/login/widgets/register_tab_widget.dart';
import 'package:ads_project/app/shared/custom_vertical_sizedbox.dart';
import 'package:ads_project/app/themes/app_colors.dart';
import 'package:ads_project/app/themes/app_text_theme.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterWidget extends StatelessWidget {
  const LoginOrRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,

          decoration: const BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: [
              const CustomVerticalSizedBox(height: 25),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                height: 55,
                decoration: BoxDecoration(
                  color: AppColors.lightDarkColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TabBar(
                  indicator: ShapeDecoration(
                    color: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(
                        color: AppColors.yellowColor,
                        width: 1,
                      ),
                    ),
                  ),
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.transparent,
                  labelStyle: AppTextTheme.textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelStyle: AppTextTheme.textTheme.bodyMedium!
                      .copyWith(color: AppColors.darkColor),
                  labelColor: AppColors.yellowColor,
                  tabs: const [Tab(text: "Login"), Tab(text: "Register")],
                ),
              ),

              const CustomVerticalSizedBox(height: 25),
              Expanded(
                child: TabBarView(
                  children: [LoginTabWidget(), RegisterTabWidget()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
