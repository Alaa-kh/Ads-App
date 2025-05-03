import 'package:ads_project/app/core/constants/app_packages.dart';

class AppTextTheme {
  static TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
    bodyLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
    bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    headlineLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    labelLarge: TextStyle(
      fontSize: 12,
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w500,
    ),
  );
}
