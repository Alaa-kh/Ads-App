import 'package:ads_project/app/core/constants/app_packages.dart';

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
                        (name) => FormsValidate.getNameValidate(context, name),
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
                          onTap: () {},
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

                  const CustomVerticalSizedBox(height: 18),
                  CustomButtonWidget(
                    text: 'Login',
                    onTap: () {
                      controller.login();
                    },
                  ),
                  const CustomVerticalSizedBox(height: 35),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppIcons.lineIcon),
                      const CustomHorizontalSizedBox(width: 10),
                      Text(
                        'Or login with',
                        style: AppTextTheme.textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.yellowColor,
                        ),
                      ),
                      CustomHorizontalSizedBox(width: 10),
                      SvgPicture.asset(AppIcons.lineIcon),
                    ],
                  ),
                  CustomVerticalSizedBox(height: 35),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        border: Border.all(color: AppColors.lightDarkColor),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons.googleIcon,
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Google',
                            style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                              color: AppColors.darkColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const CustomVerticalSizedBox(height: 25),
                ],
              ),
            ),
      ),
    );
  }
}
