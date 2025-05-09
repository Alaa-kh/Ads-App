import 'package:ads_project/app/core/constants/app_packages.dart';

class DetailsDriverWidget extends StatelessWidget {
  const DetailsDriverWidget({
    super.key,
    required this.icon,
    required this.label,
    this.backgroundColor,
  });
  final String icon;
  final String label;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 60,
          height: 64,
          decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.whiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: AppColors.lightDarkColor.withValues(alpha: .7),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Image.asset(icon, width: 30),
        ),
        const CustomVerticalSizedBox(height: 7),
        Text(
          label,
          style: AppTextTheme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.blackColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
