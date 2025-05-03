import 'package:ads_project/app/core/constants/app_packages.dart';

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
          )
    ),
    Navigator(
      key: accountNavigatorKey,
      onGenerateRoute:
          (settings) =>
              MaterialPageRoute(builder: (_) => const AccountScreen()),
    ),
  ];
}
