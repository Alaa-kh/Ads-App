import 'package:ads_project/app/modules/account/views/account_screen.dart';
import 'package:ads_project/app/modules/home/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class RootController extends GetxController {
//   int currentIndex = 0;
//   void seletedPage(int index) {
//     currentIndex = index;
//     update();
//   }

//   final screens = const [
//   HomeScreen(), HomeScreen(), AccountScreen(),
//   ];
// }
class RootController extends GetxController {
  int currentIndex = 0;
  void seletedPage(int index) {
    currentIndex = index;
    update();
  }

  final GlobalKey<NavigatorState> homeNavigatorKey =
      GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> scanNavigatorKey =
      GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> accountNavigatorKey =
      GlobalKey<NavigatorState>();

  List<Widget> get screens => [
    Navigator(
      key: homeNavigatorKey,
      onGenerateRoute:
          (settings) => MaterialPageRoute(builder: (_) => const HomeScreen()),
    ),
    Navigator(
      key: scanNavigatorKey,
      onGenerateRoute:
          (settings) => MaterialPageRoute(
            builder: (_) => const HomeScreen(),
          ), // ScanScreen هنا بدل HomeScreen لاحقًا
    ),
    Navigator(
      key: accountNavigatorKey,
      onGenerateRoute:
          (settings) =>
              MaterialPageRoute(builder: (_) => const AccountScreen()),
    ),
  ];
}
