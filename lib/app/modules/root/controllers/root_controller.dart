import 'package:ads_project/app/modules/account/views/account_screen.dart';
import 'package:ads_project/app/modules/home/views/home_screen.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  int currentIndex = 0;
  void seletedPage(int index) {
    currentIndex = index;
    update();
  }

  final screens = const [
  HomeScreen(), HomeScreen(), AccountScreen(),
  ];
}
