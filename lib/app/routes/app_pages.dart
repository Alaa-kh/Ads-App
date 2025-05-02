import 'package:ads_project/app/modules/auth/login/views/login_screen.dart';
import 'package:ads_project/app/modules/root/views/root_screen.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.root, page: () => const RootScreen()),
    GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
  ];
}
