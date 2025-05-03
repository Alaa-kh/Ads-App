
import 'package:ads_project/app/core/constants/app_packages.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.root, page: () => const OnBoardingScreen()),
    GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
  ];
}
