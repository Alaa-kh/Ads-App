import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:ads_project/app/modules/auth/forgot_password/views/forgot_password_screen.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LoginTabWidget extends StatelessWidget {
  const LoginTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginControllerImp());

    return SingleChildScrollView(
      child: GetBuilder<LoginControllerImp>(
        builder:
            (_) => Form(
              key: controller.formKey,
              child: Column(
                children: [
                  CustomTextField(
                    prefixIcon: SvgPicture.asset(AppIcons.nameIcon),
                    hintText: 'Full Name',
                    controller: controller.nameController,
                    validator:
                        (name) => FormsValidate.getEmptyValidate(context, name),
                  ).animate().slideX(
                    delay: Duration(microseconds: 1200),
                    duration: Duration(milliseconds: 500),
                  ),
                  const CustomVerticalSizedBox(height: 18),

                  CustomTextField(
                    obscureText: !controller.isPasswordVisible,
                    prefixIcon: SvgPicture.asset(AppIcons.passwordIcon),
                    hintText: 'Password',
                    controller: controller.passwordController,
                    validator:
                        (password) =>
                            FormsValidate.getEmptyValidate(context, password),
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
                    duration: Duration(milliseconds: 1000),
                  ),

                  Theme(
                    data: Theme.of(context).copyWith(
                      checkboxTheme: CheckboxThemeData(
                        visualDensity: VisualDensity(
                          horizontal: -4,
                          vertical: 0,
                        ),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(
                          side: const BorderSide(color: AppColors.yellowColor),
                          hoverColor: AppColors.yellowColor,
                          activeColor: AppColors.yellowColor,
                          focusColor: AppColors.yellowColor,
                          value: controller.isChecked,
                          onChanged: (bool? value) {
                            controller.checked(value!);
                          },
                        ),
                        const CustomHorizontalSizedBox(width: 4),
                        Text(
                          'Remember me',
                          style: AppTextTheme.textTheme.labelLarge!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.darkColor,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            Get.to(
                              () => ForgotPasswordScreen(),
                              transition: Transition.cupertinoDialog,
                              duration: Duration(seconds: 1),
                            );
                          },
                          child: Text(
                            'Forget Password?',
                            style: AppTextTheme.textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.yellowColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const CustomVerticalSizedBox(height: 40),
                  CustomButtonWidget(
                    text: 'Login',
                    onTap: () {
                      controller.login();
                    },
                  ),

                  const CustomVerticalSizedBox(height: 25),
                ],
              ),
            ),
      ),
    );
  }
}
