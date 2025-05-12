import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:ads_project/app/core/shared/custom_loading.dart';
import 'package:ads_project/app/data/models/auth/reset_password_model.dart';
import 'package:ads_project/app/data/repo/auth/reset_password_repo.dart';

abstract class ResetPasswordController extends GetxController {
  Future<void> resetPassword(String codee);
}

class ResetPasswordControllerImp extends ResetPasswordController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  ResetPasswordRepositoryImpl resetPasswordRepository =
      ResetPasswordRepositoryImpl();

  bool isPasswordVisible = false;
  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    update();
  }

  bool isConfirmPasswordVisible = false;
  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible = !isConfirmPasswordVisible;
    update();
  }
@override
  Future<void> resetPassword(String codee) async {
    try {
      if (!formKey.currentState!.validate()) return;

      showLoadingDialog();

      final resetPassword = await resetPasswordRepository.resetPassword(
        password: passwordController.text.trim(),
        confirmPassword: confirmPasswordController.text.trim(),
        code: codee.toString(),
      );

      print('RRRRRRRRRRRRRRRRRRRRRR $resetPassword');
      if (resetPassword is ResetPasswordModel) {
        if (resetPassword.errors != null && resetPassword.errors!.isNotEmpty) {
          // عرض الخطأ من الـ errors
          Get.snackbar(
            'Error!',
            resetPassword.errors!.first.toString(),
            backgroundColor: Colors.red,
            snackPosition: SnackPosition.BOTTOM,
          );
        } else {
          // إذا لم يكن هناك خطأ، التوجه إلى الشاشة التالية
          Get.off(() => LoginScreen());
              Get.snackbar(
            'Success!',
           'Password has been reset successfully',
            backgroundColor: Colors.green,
            snackPosition: SnackPosition.BOTTOM,
          );
        }
      } else {
        // إذا كانت النتيجة ليست من نوع ResetPasswordModel
        Get.back();
        Get.snackbar(
          'Error!',
          'An unknown error occurred during password reset',
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      print('================================== $e');
      Get.snackbar(
        'Error!',
        'An exception occurred: $e',
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

}
