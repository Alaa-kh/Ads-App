import 'package:ads_project/app/core/constants/app_packages.dart';

class RegisterTabWidget extends StatelessWidget {
  const RegisterTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomTextField(
            prefixIcon: SvgPicture.asset(AppIcons.nameIcon),
            hintText: 'Full Name',
          ),
          const CustomVerticalSizedBox(height: 18),

          CustomTextField(
            prefixIcon: SvgPicture.asset(AppIcons.phoneIcon),
            hintText: 'Phone No.',
          ),
          const CustomVerticalSizedBox(height: 18),
          CustomTextField(
            prefixIcon: SvgPicture.asset(AppIcons.passwordIcon),
            hintText: 'Password',
          ),
          const CustomVerticalSizedBox(height: 18),
          CustomTextField(
            prefixIcon: SvgPicture.asset(AppIcons.ageIcon),
            hintText: 'Your age',
          ),
          const CustomVerticalSizedBox(height: 18),
          CustomButtonWidget(text: 'Register'),
          const CustomVerticalSizedBox(height: 25),
        ],
      ),
    );
  }
}
