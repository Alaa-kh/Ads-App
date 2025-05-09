import 'package:ads_project/app/core/constants/app_packages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const AdsApp());
}
