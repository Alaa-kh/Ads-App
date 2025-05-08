import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:ads_project/app/core/shared/custom_loading.dart';
import 'package:ads_project/app/data/models/auth/register_model.dart';
import 'package:ads_project/app/data/repo/auth/register_repo.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class RegisterController extends GetxController {
  Future<void> registerUser();
  Future<void> pickPdfFile();
}

class RegisterControllerImpl extends RegisterController {
  PlatformFile? pickedPdfFile;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController placeController = TextEditingController();
  final TextEditingController carNumberController = TextEditingController();
  final TextEditingController carYearController = TextEditingController();
  final TextEditingController carColorController = TextEditingController();
  final TextEditingController carNameController = TextEditingController();
  final TextEditingController nationalityController = TextEditingController();
  TextEditingController workStatusController = TextEditingController();

  final RegisterRepositoryImpl registerRepository = RegisterRepositoryImpl();

  // ✅ تعيين الملف من الواجهة
  void setPdfFile(PlatformFile file) {
    pickedPdfFile = file;
    update(); // إعادة بناء الواجهة
  }

  // ✅ إظهار/إخفاء كلمة المرور
  bool isPasswordVisible = false;
  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    update();
  }

  @override
  Future<void> registerUser() async {
    
      if (!formKey.currentState!.validate()) return;

      // ✅ تحقق من وجود ملف PDF
      if (pickedPdfFile == null) {
        Get.snackbar(
          'PDF Required',
          'Please upload your driving license (PDF)',
          backgroundColor: Colors.orange,
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      Get.closeAllSnackbars();
      showLoadingDialog();

      // ✅ رفع البيانات مع الملف
      final register = await registerRepository.registerUser(
        name: nameController.text.trim(),
        email: emailController.text.trim(),
        number: numberController.text.trim(),
        password: passwordController.text.trim(),
        age: ageController.text.trim(),
        gender: genderController.text.trim(),
        place: placeController.text.trim(),
        carNumber: carNumberController.text.trim(),
        carColor: carColorController.text.trim(),
        carName: carNameController.text.trim(),
        carYear: carYearController.text.trim(),
        nationality: nationalityController.text.trim(),
        workStatus: workStatusController.text.trim(),

        // ✅ أضف الملف هنا إذا كانت الدالة تدعمه
        pdfFile: pickedPdfFile!.path!, // تأكد أن الدالة تدعم هذا البراميتر
      );

      if (register is RegisterModel) {
        Get.off(() => const RootScreen());
      } else {
        Get.back();
        Get.snackbar(
          'Error!',
          '$register',
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
   
  }
  Future<void> requestStoragePermission() async {
    // var status = await Permission.storage.status;
    // if (!status.isGranted) {
      await Permission.storage.request();
    // }
  }

@override
  Future<void> pickPdfFile() async {
    // await requestStoragePermission(); // ✅ اطلب الإذن أولًا

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null && result.files.isNotEmpty) {
      pickedPdfFile = result.files.first;
      update();
    } else {
      Get.snackbar('تنبيه', 'لم يتم اختيار أي ملف.');
    }
  }

}

// abstract class RegisterController extends GetxController {
//   Future<void> registerUser();
// }

// class RegisterControllerImpl extends RegisterController {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController genderController = TextEditingController();
//   final TextEditingController ageController = TextEditingController();
//   final TextEditingController numberController = TextEditingController();
//   final TextEditingController placeController = TextEditingController();
//   final TextEditingController carNumberController = TextEditingController();
//   final TextEditingController carYearController = TextEditingController();
//   final TextEditingController carColorController = TextEditingController();
//   final TextEditingController carNameController = TextEditingController();
//   final TextEditingController nationalityController = TextEditingController();
//   TextEditingController workStatusController = TextEditingController();
//   final RegisterRepositoryImpl registerRepository = RegisterRepositoryImpl();

//   @override
//   Future<void> registerUser() async {
//     try {
//       if (!formKey.currentState!.validate()) return;
//       Get.closeAllSnackbars();

//       showLoadingDialog();

//       final register = await registerRepository.registerUser(
//         name: nameController.text.trim(),
//         email: emailController.text.trim(),
//         number: numberController.text.trim(),
//         password: passwordController.text.trim(),
//         age: ageController.text.trim(),
//         gender: genderController.text.trim(),
//         place: placeController.text.trim(),
//         carNumber: carNumberController.text.trim(),
//         carColor: carColorController.text.trim(),
//         carName: carNameController.text.trim(),
//         carYear: carYearController.text.trim(),
//         nationality: nationalityController.text.trim(),
//         workStatus: workStatusController.text.trim()
//       );
//       if (register is RegisterModel) {
//         Get.off(() => const RootScreen());
//       } else {
//         Get.back();
//         Get.snackbar(
//           'Error!',
//           '$register',
//           backgroundColor: Colors.red,
//           snackPosition: SnackPosition.BOTTOM,
//         );
//       }
//     } catch (e) {
//       print('================================== $e');
//     }
//   }

//   bool isPasswordVisible = false;

//   // Toggles the visibility of the password field.
//   void togglePasswordVisibility() {
//     isPasswordVisible = !isPasswordVisible;
//     update();
//   }
// }
