import 'package:ads_project/app/modules/mustang/widgets/mustang_details_driver_widget.dart';
import 'package:ads_project/app/modules/mustang/widgets/mustang_slider_widget.dart';
import 'package:ads_project/app/modules/mustang/widgets/mustang_text_info_widget.dart';
import 'package:ads_project/app/shared/custom_button_widget.dart';
import 'package:ads_project/app/shared/custom_vertical_sizedbox.dart';
import 'package:ads_project/app/themes/app_colors.dart';
import 'package:ads_project/app/themes/app_text_theme.dart';
import 'package:ads_project/app/utils/app_icons.dart';
import 'package:ads_project/app/utils/app_images.dart';
import 'package:ads_project/app/widgets/main_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MustangScreen extends StatelessWidget {
  const MustangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: mainAppBar(
        radius: Radius.circular(0),
        SvgPicture.asset(AppIcons.arrowBackIcon),
        backgroundColor: AppColors.lightWhiteColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,

              height: 328,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.lightWhiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Image.asset(AppImages.persil2Image),
            ),
            const CustomVerticalSizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ford Mustang GT ',
                    style: AppTextTheme.textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  MustangTextInfoWidget(),
                  const CustomVerticalSizedBox(height: 25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MustangDetailsDriverWidget(
                        icon: AppIcons.personIcon,
                        number: '100',
                      ),
                      MustangDetailsDriverWidget(
                        icon: AppIcons.coinsIcon,
                        number: r'100$',
                      ),
                      MustangDetailsDriverWidget(
                        icon: AppIcons.roundSpeedIcon,
                        number: '230 km/h',
                      ),
                    ],
                  ),
                  const CustomVerticalSizedBox(height: 22),
                  MustangSliderWidget(),
                  const CustomVerticalSizedBox(height: 22),
                  CustomButtonWidget(text: 'Order Now', fontSize: 28),
                  const CustomVerticalSizedBox(height: 25),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
