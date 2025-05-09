import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:ads_project/app/core/shared/custom_loading.dart';
import 'package:ads_project/app/data/models/auth/forgot_password_model.dart';
import 'package:ads_project/app/data/repo/auth/forgot_password_repo.dart';

abstract class ForgotPasswordController extends GetxController {
  Future<void> forgotPassword();
}

class ForgotPasswordControllerImp extends ForgotPasswordController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  final ForgotPasswordRepositoryImpl forgotPasswordRepository =
      ForgotPasswordRepositoryImpl();

  @override
  Future<void> forgotPassword() async {
    try {
      if (!formKey.currentState!.validate()) return;
      Get.closeAllSnackbars();

      showLoadingDialog();

      final forgotPassword = await forgotPasswordRepository.forgotPassword(
        email: emailController.text.trim(),
      );
      if (forgotPassword is ForgotPasswordModel) {
        print('>>>>>>>>>>>>>>>>>>');
        // Get.off(() => const RootScreen());
      } else {
        Get.back();
      }
    } catch (e) {
      print('================================== $e');
    }
  }
}
