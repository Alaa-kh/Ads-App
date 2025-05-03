import 'package:ads_project/app/core/constants/app_packages.dart';

class HomeMainListWidget extends StatelessWidget {
  const HomeMainListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 260,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            spreadRadius: 1,
            color: AppColors.darkColor.withValues(alpha: .1),
          ),
        ],
      ),
      child: HomeMainInfoWidget(),
    );
  }
}
