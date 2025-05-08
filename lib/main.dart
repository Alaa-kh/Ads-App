import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:ads_project/app/data/services/app_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const AdsApp());
}
