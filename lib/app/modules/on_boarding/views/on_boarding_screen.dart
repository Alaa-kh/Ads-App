import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.center,
        color: AppColors.primaryColor,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(AppImages.carImage),
              ),
              CustomVerticalSizedBox(height: 15),
              Text(
                'Start your business from your car',
                style: AppTextTheme.textTheme.bodyLarge!.copyWith(
                  fontSize: 38,
                  color: AppColors.whiteColor,
                ),
                textAlign: TextAlign.center,
              ).animate().slideX(
                delay: Duration(seconds: 2),
                duration: Duration(milliseconds: 300),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () => Get.to(() => LoginScreen()),
                  child: SvgPicture.asset(AppIcons.arrowOnBoardingIcon),
                ),
              ).animate().scaleY(
                delay: Duration(seconds: 4),
                duration: Duration(milliseconds: 600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
