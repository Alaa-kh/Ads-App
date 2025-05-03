
import 'package:ads_project/app/core/constants/app_packages.dart';

abstract class LoginController extends GetxController {}

class LoginControllerImp extends LoginController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  Widget getCurrentTabView() {
    switch (tabController.index) {
      case 0:
        return const LoginTabWidget();
      case 1:
        return const RegisterTabWidget();
      default:
        return const SizedBox();
    }
  }
}
