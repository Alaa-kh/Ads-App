import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:ads_project/app/core/shared/custom_loading.dart';
import 'package:ads_project/app/data/helper/failures_handling.dart';
import 'package:ads_project/app/data/models/auth/register_model.dart';
import 'package:ads_project/app/data/repo/auth/register_repo.dart';
import 'package:ads_project/app/modules/auth/verify_email/views/verify_email_screen.dart';
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
  final TextEditingController workStatusController = TextEditingController();

  final RegisterRepositoryImpl registerRepository = RegisterRepositoryImpl();

  void setPdfFile(PlatformFile file) {
    pickedPdfFile = file;
    update();
  }

  bool isPasswordVisible = false;
  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    update();
  }

  @override
  Future<void> registerUser() async {
    if (!formKey.currentState!.validate()) return;
    showLoadingDialog();
    Get.back();
    if (pickedPdfFile == null) {
      Get.snackbar(
        'PDF Required',
        'Please upload your driving license (PDF)',
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }
    showLoadingDialog();
    Get.back();
    if (nationalityController.text.isEmpty ||
        placeController.text.isEmpty ||
        genderController.text.isEmpty ||
        workStatusController.text.isEmpty) {
      Get.snackbar(
        'Warning!',
        "You didn't choose from the list, Please fill in all fields",
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    Get.closeAllSnackbars();
    showLoadingDialog();
    Get.back();
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

      pdfFile: pickedPdfFile!.path!,
    );

    if (register is RegisterModel) {
      print('RRRRRRRRRRRRRRRR');
      Get.to(() => const VerifyEmailScreen());
    } else if (register is Failures) {
      Get.back();
      Get.snackbar(
        'Error!',
        register.errMessage,
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {
      Get.back();
      Get.snackbar(
        'Error!',
        'Unknown error occurred',
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  Future<void> requestStoragePermission() async {
    await Permission.storage.request();
    update();
  }

  @override
  Future<void> pickPdfFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      withData: true,
      allowedExtensions: ['pdf'],
    );

    if (result != null && result.files.isNotEmpty) {
      pickedPdfFile = result.files.first;
      update();
    } else {
      // Get.snackbar('Warning!', 'No file selected.');
    }
    update();
  }

  void select(String value, TextEditingController textEditingController) {
    textEditingController.text = value;
    update();
  }
}
