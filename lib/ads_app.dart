
import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:ads_project/app/modules/auth/forgot_password/views/forgot_password_screen.dart';

class AdsApp extends StatelessWidget {
  const AdsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: AppRoutes.root,
      // getPages: AppPages.pages,
      home: ForgotPasswordScreen(),
      theme: ThemeData(fontFamily: 'Inter'),
    );
  }
}
