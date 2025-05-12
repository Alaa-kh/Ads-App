import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:ads_project/app/data/models/auth/verify_email_model.dart';
import 'package:ads_project/app/data/repo/auth/verify_email_repo.dart';

abstract class VerifyController extends GetxController {
  Future<void> verify(String code);
}

class VerifyControllerImp extends VerifyController {
  final VerifyRepositoryImpl verifyRepository = VerifyRepositoryImpl();

  @override
  Future<void> verify(String code) async {
    try {
      final verify = await verifyRepository.verify(code: code.toString());
      if (verify is VerifyModel) {
        if (code.isEmpty || code.length < 6) {
          Get.snackbar(
            'Error!',
            'Code Is Empty!',
            backgroundColor: Colors.red,
            snackPosition: SnackPosition.BOTTOM,
          );
        } else {
          Get.to(() => LoginScreen());
        }
      } else {
        Get.snackbar(
          'Error!',
          verify,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      print('================================== $e');
    }
  }
}
