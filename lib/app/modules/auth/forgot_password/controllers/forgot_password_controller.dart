import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:ads_project/app/core/shared/custom_loading.dart';
import 'package:ads_project/app/data/models/auth/forgot_password_model.dart';
import 'package:ads_project/app/data/repo/auth/forgot_password_repo.dart';
import 'package:ads_project/app/modules/auth/verify/views/verify_screen.dart';
import 'package:flutter_animate/flutter_animate.dart';

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

      Get.back();

      if (forgotPassword is ForgotPasswordModel) {
        print('Errors from server: ${forgotPassword.errors}');

        if (forgotPassword.errors != null &&
            forgotPassword.errors!.isNotEmpty) {
          Get.snackbar(
            'Error!',
            forgotPassword.errors!.join(", "),
            backgroundColor: Colors.red,
            snackPosition: SnackPosition.BOTTOM,
          );
        } else {
          Get.dialog(
            AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              surfaceTintColor: AppColors.yellowColor,
              backgroundColor: AppColors.whiteColor,
              contentPadding: EdgeInsets.zero,
              content: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SvgPicture.asset(
                      AppIcons.messageIcon,
                      width: 44,
                      height: 44,
                    ),
                    const CustomVerticalSizedBox(height: 15),
                    Text(
                      'Check your Email',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const CustomVerticalSizedBox(height: 10),
                    Text(
                      'We have sent password recovery instructions to your email',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xff7D848D),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const CustomVerticalSizedBox(height: 10),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () => Get.off(() => VerifyScreen()),
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(6),
                          width: 36,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              actionsAlignment: MainAxisAlignment.center,
            ).animate().scaleY(
              delay: Duration(microseconds: 100),
              duration: Duration(milliseconds: 800),
            ),
            barrierDismissible: true,
          );
        }
      } else {
        Get.snackbar(
          'Error!',
          'An unexpected error occurred: $forgotPassword',
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      Get.back();
      Get.snackbar(
        'Error!',
        'An exception occurred: $e',
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
      print('Exception: $e');
    }
  }
}
