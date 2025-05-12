
import 'package:ads_project/app/core/constants/app_packages.dart';

class AdsApp extends StatelessWidget {
  const AdsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: AppRoutes.root,
      // getPages: AppPages.pages,
      home: RootScreen(),
      theme: ThemeData(fontFamily: 'Inter'),
    );
  }
}
