import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:flutter_animate/flutter_animate.dart';

final List<String> nationalitiesList = ['مصري', 'سوري'];
final List<String> genderList = ['انثى', 'ذكر'];
final List<String> placesList = ['القاهرة', 'دمشق'];
final List<String> workStatusList = [
  'سائق حر',
  'يعمل ضمن برنامج توصيل',
  "لا يعمل ضمن أي برنامج",
];

class RegisterTabWidget extends StatelessWidget {
  const RegisterTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterControllerImpl());
    Get.put(MyServices());

    return GetBuilder<RegisterControllerImpl>(
      builder:
          (_) => SingleChildScrollView(
            child: Form(
              key: controller.formKey,
              child: Column(
                children: [
                  CustomTextField(
                    prefixIcon: SvgPicture.asset(AppIcons.nameIcon),
                    hintText: 'Full Name',
                    controller: controller.nameController,
                    validator:
                        (name) => FormsValidate.getNameValidate(context, name),
                  ).animate().slideX(delay: Duration(microseconds: 1000),
                    duration: Duration(milliseconds: 500) ,),
                  const CustomVerticalSizedBox(height: 18),

                  CustomTextField(
                    prefixIcon: Image.asset(AppIcons.emailIcon, width: 20),
                    hintText: 'Email',
                    controller: controller.emailController,
                    validator:
                        (email) =>
                            FormsValidate.getEmailValidate(context, email),
                  ).animate().slideX(
                    delay: Duration(microseconds: 1000),
                    duration: Duration(milliseconds: 700),
                  ),
                  const CustomVerticalSizedBox(height: 18),

                  CustomTextField(
                    obscureText: !controller.isPasswordVisible,
                    prefixIcon: SvgPicture.asset(AppIcons.passwordIcon),
                    hintText: 'Password',
                    controller: controller.passwordController,
                    validator:
                        (password) => FormsValidate.getPasswordValidate(
                          context,
                          password,
                          isFillOldPassword: true,
                        ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () => controller.togglePasswordVisibility(),
                        child: SvgPicture.asset(
                          controller.isPasswordVisible
                              ? AppIcons.eyeIcon
                              : AppIcons.eyeVisibilityIcon,
                          width: 19,
                          height: 19,
                          colorFilter: ColorFilter.mode(
                            AppColors.warmGrayColor,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ).animate().slideX(
                    delay: Duration(microseconds: 1000),
                    duration: Duration(milliseconds: 900),
                  ),
                  const CustomVerticalSizedBox(height: 18),

                  RegisterDropdownWidget(
                    labelText: 'Nationality',
                    textController: controller.nationalityController,
                    icon: AppIcons.nationalityIcon,
                    value: 'nationality',
                    list: nationalitiesList,
                  ).animate().slideX(
                    delay: Duration(microseconds: 1000),
                    duration: Duration(milliseconds: 1100),
                  ),

                  const CustomVerticalSizedBox(height: 18),

                  RegisterDropdownWidget(
                    labelText: 'Gender',
                    textController: controller.genderController,
                    icon: AppIcons.genderIcon,
                    value: 'gender',
                    list: genderList,
                  ).animate().slideX(
                    delay: Duration(microseconds: 1000),
                    duration: Duration(milliseconds: 1300),
                  ),
                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: SvgPicture.asset(AppIcons.ageIcon),
                    hintText: 'Your age',
                    textInputType: TextInputType.number,
                    controller: controller.ageController,
                    validator:
                        (age) => FormsValidate.getAgeValidate(context, age),
                  ).animate().slideX(
                    delay: Duration(microseconds: 1000),
                    duration: Duration(milliseconds: 1500),
                  ),
                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: SvgPicture.asset(AppIcons.phoneIcon),
                    hintText: 'Phone No.',
                    textInputType: TextInputType.number,
                    controller: controller.numberController,
                    validator:
                        (phone) => FormsValidate.getPhoneNumberValidate(
                          context,
                          phone,
                        ),
                  ).animate().slideX(
                    delay: Duration(microseconds: 1000),
                    duration: Duration(milliseconds: 1700)),
                  const CustomVerticalSizedBox(height: 18),

                  RegisterDropdownWidget(
                    labelText: 'Place of residence',
                    textController: controller.placeController,
                    icon: AppIcons.placeIcon,
                    value: 'place',
                    list: placesList,
                  ).animate().slideX(
                    delay: Duration(microseconds: 1000),
                    duration: Duration(milliseconds: 1900),
                  ),
                  const CustomVerticalSizedBox(height: 18),

                  RegisterDropdownWidget(
                    labelText: 'Work Status',
                    textController: controller.workStatusController,
                    icon: AppIcons.statusIcon,
                    value: 'workStatus',
                    list: workStatusList,
                  ).animate().slideX(
                    delay: Duration(microseconds: 1000),
                    duration: Duration(milliseconds: 2100),
                  ),
                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: Image.asset(AppIcons.carNumberIcon, width: 20),
                    hintText: 'Car number',
                    controller: controller.carNumberController,
                    validator:
                        (carNumber) =>
                            FormsValidate.getCarNumberValidate(context, carNumber),
                  ).animate().slideX(
                    delay: Duration(microseconds: 1000),
                    duration: Duration(milliseconds: 2300),
                  ),

                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: Image.asset(AppIcons.carNumberIcon, width: 20),
                    hintText: 'Car Year',
                    controller: controller.carYearController,
                    textInputType: TextInputType.number,
                    validator:
                        (carYear) =>
                            FormsValidate.getCarYearValidate(context, carYear),
                  ).animate().slideX(
                    delay: Duration(microseconds: 1000),
                    duration: Duration(milliseconds: 2500),
                  ),
                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: Image.asset(AppIcons.carNameIcon, width: 20),
                    hintText: 'Car Name',
                    controller: controller.carNameController,
                    validator:
                        (carName) =>
                            FormsValidate.getCarNameValidate(context, carName),
                  ).animate().slideX(
                    delay: Duration(microseconds: 1000),
                    duration: Duration(milliseconds: 2700),
                  ),

                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: Image.asset(AppIcons.carColorIcon, width: 20),
                    hintText: 'Car Color',
                    controller: controller.carColorController,
                    validator:
                        (carColor) =>
                            FormsValidate.getCarColorValidate(context, carColor),
                  ).animate().slideX(
                    delay: Duration(microseconds: 1000),
                    duration: Duration(milliseconds: 2900),
                  ),
                  const CustomVerticalSizedBox(height: 18),
                  InkWell(
                    onTap: () {
                      controller.pickPdfFile();
                      print(' ====== ${controller.pickedPdfFile?.name}');

                    },
                    child: Container(
                      height: 52,
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.lightDarkColor),
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Image.asset(AppIcons.fileIcon, width: 20),
                          CustomHorizontalSizedBox(width: 12),
                          Expanded(
                            child: Text(
                              controller.pickedPdfFile?.name ?? 'Document file',
                              style: AppTextTheme.textTheme.bodyMedium!
                                  .copyWith(color: AppColors.darkColor),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const CustomHorizontalSizedBox(width: 12),
                          Image.asset(AppIcons.uploadIcon, width: 20),
                        ],
                      ),
                    ),
                  ).animate().slideX(
                    delay: Duration(microseconds: 1000),
                    duration: Duration(milliseconds: 3100),
                  ),

                  const CustomVerticalSizedBox(height: 18),
                  CustomButtonWidget(
                    text: 'Register',
                    onTap: () => controller.registerUser(),
                  ),
                  const CustomVerticalSizedBox(height: 25),
                ],
              ),
            ),
          ),
    );
  }
}
