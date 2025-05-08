import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:ads_project/app/core/validators/forms_validators.dart';
import 'package:ads_project/app/data/services/app_services.dart';
import 'package:ads_project/app/modules/auth/login/controllers/register_controller.dart';

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
                  ),
                  const CustomVerticalSizedBox(height: 18),

                  CustomTextField(
                    prefixIcon: Image.asset(AppIcons.emailIcon, width: 20),
                    hintText: 'Email',
                    controller: controller.emailController,
                    validator:
                        (email) =>
                            FormsValidate.getEmailValidate(context, email),
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
                  ),
                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: Image.asset(
                      AppIcons.nationalityIcon,
                      width: 20,
                    ),
                    hintText: 'Nationality',
                    controller: controller.nationalityController,
                    validator:
                        (nationality) => FormsValidate.getEmptyValidate(
                          context,
                          nationality,
                        ),
                  ),

                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: Image.asset(AppIcons.genderIcon, width: 20),
                    hintText: 'Gender',
                    controller: controller.genderController,
                    validator:
                        (gender) =>
                            FormsValidate.getNameValidate(context, gender),
                  ),
                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: SvgPicture.asset(AppIcons.ageIcon),
                    hintText: 'Your age',
                    textInputType: TextInputType.number,
                    controller: controller.ageController,
                    validator:
                        (age) => FormsValidate.getAgeValidate(context, age),
                  ),
                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: SvgPicture.asset(AppIcons.phoneIcon),
                    hintText: 'Phone No.',
                    controller: controller.numberController,
                    validator:
                        (phone) => FormsValidate.getPhoneNumberValidate(
                          context,
                          phone,
                        ),
                  ),
                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: Image.asset(AppIcons.placeIcon, width: 20),
                    hintText: 'Place of residence',
                    controller: controller.placeController,
                    validator:
                        (place) =>
                            FormsValidate.getNameValidate(context, place),
                  ),
                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: Image.asset(AppIcons.statusIcon, width: 20),
                    hintText: 'Work Status',
                    controller: controller.workStatusController,
                    validator:
                        (workStatus) =>
                            FormsValidate.getEmptyValidate(context, workStatus),
                  ),
                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: Image.asset(AppIcons.carNumberIcon, width: 20),
                    hintText: 'Car number',
                    controller: controller.carNumberController,
                    textInputType: TextInputType.number,
                    validator:
                        (carNumber) =>
                            FormsValidate.getEmptyValidate(context, carNumber),
                  ),

                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: Image.asset(AppIcons.carNumberIcon, width: 20),
                    hintText: 'Car Year',
                    controller: controller.carYearController,
                    textInputType: TextInputType.number,
                    validator:
                        (carYear) =>
                            FormsValidate.getEmptyValidate(context, carYear),
                  ),
                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: Image.asset(AppIcons.carNameIcon, width: 20),
                    hintText: 'Car Name',
                    controller: controller.carNameController,
                    validator:
                        (carName) =>
                            FormsValidate.getEmptyValidate(context, carName),
                  ),

                  const CustomVerticalSizedBox(height: 18),
                  CustomTextField(
                    prefixIcon: Image.asset(AppIcons.carColorIcon, width: 20),
                    hintText: 'Car Color',
                    controller: controller.carColorController,
                    validator:
                        (carColor) =>
                            FormsValidate.getEmptyValidate(context, carColor),
                  ),
                  const CustomVerticalSizedBox(height: 18),
                  InkWell(
                    onTap: () => controller.pickPdfFile(),
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
