
import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AccountPhotoWidget extends StatelessWidget {
  const AccountPhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 135,
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
    ).animate().scaleY(
      delay: Duration(microseconds: 1000),
      duration: Duration(milliseconds: 2100),
    );
  }
}
