import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:ads_project/app/core/shared/custom_loading.dart';
import 'package:ads_project/app/data/models/auth/login_model.dart';
import 'package:ads_project/app/data/repo/auth/login_repo.dart';

abstract class LoginController extends GetxController {
  Future<void> login();
  void checked(bool value);
}

class LoginControllerImp extends LoginController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final LoginRepositoryImpl loginRepository = LoginRepositoryImpl();

  @override
  Future<void> login() async {
    try {
      if (!formKey.currentState!.validate()) return;
      Get.closeAllSnackbars();

      showLoadingDialog();

      final login = await loginRepository.login(
        name: nameController.text.trim(),
        password: passwordController.text.trim(),
      );
      if (login is LoginModel) {
        print('================================== $login');
        Get.off(() => const RootScreen());
      } else {
        Get.back();
        Get.snackbar(
          'Error!',
          'The username or password is incorrect, Please try again.',
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      print('================================== $e');
    }
  }

  bool isChecked = false;
  @override
  void checked(bool value) {
    isChecked = value;
    update();
  }

  bool isPasswordVisible = false;

  // Toggles the visibility of the password field.
  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    update();
  }

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
