
import 'package:ads_project/app/core/constants/app_packages.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          LoginMainSectionWidget(),
          const CustomVerticalSizedBox(height: 30),
          LoginOrRegisterWidget(),
        ],
      ),
    );
  }
}
