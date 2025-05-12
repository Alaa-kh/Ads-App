
import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AccountInfoWidget extends StatelessWidget {
  const AccountInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.lightDarkColor.withValues(alpha: .7),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImages.persil2Image, width: 44, height: 44),
          CustomHorizontalSizedBox(width: 24),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bersil',
                style: AppTextTheme.textTheme.headlineLarge!.copyWith(
                  color: AppColors.navyBlueColor,
                ),
              ),
              Text(
                '20 hour',
                style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                  fontSize: 13,
                  color: AppColors.navyBlueColor,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                r'200$',
                style: AppTextTheme.textTheme.headlineLarge!.copyWith(
                  color: AppColors.navyBlueColor,
                ),
              ),
              Text(
                'Dec 20 - Feb 21',
                style: AppTextTheme.textTheme.labelLarge!.copyWith(
                  color: AppColors.navyBlueColor,
                ),
              ),
            ],
          ),
        ],
      ),
    ).animate().slideX(
      duration: Duration(microseconds: 1000),
      delay: Duration(microseconds: 1000),
    );
  }
}
