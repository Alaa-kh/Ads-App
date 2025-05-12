import 'package:ads_project/app/data/models/home_model.dart';
import 'package:ads_project/app/data/repo/home_repo.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  Future<void> ads();
}

class HomeControllerImpl extends HomeController {
  final HomeRepositoryImpl homeRepository = HomeRepositoryImpl();
  HomeModel? homeModel;

  @override
  Future<void> ads() async {
    final result = await homeRepository.getAds();
    if (result is HomeModel) {
      homeModel = result;
      print('=================== Succcus ADS');
    } else {
      await ads();
    }
    update();
  }

  @override
  void onInit() {
    super.onInit();
    ads();
  }
}
