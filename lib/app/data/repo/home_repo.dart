import 'package:ads_project/app/core/constants/app_api.dart';
import 'package:ads_project/app/data/helper/failures_handling.dart';
import 'package:ads_project/app/data/models/home_model.dart';
import 'package:ads_project/app/data/network/crud.dart';
import 'package:dio/dio.dart';

abstract class HomeRepository {
  Future getAds();
}

class HomeRepositoryImpl extends HomeRepository {
  @override
  Future getAds() async {
    return _fetchData(
      url: AppApi.ads,
      fromJson: (json) => HomeModel.fromJson(json),
    );
  }

  Future _fetchData({
    required String url,
    required Function fromJson,
    CancelToken? cancelToken,
  }) async {
    try {
      final result = await Crud().get(url: url, cancelToken: cancelToken);
      return result.fold((failure) => failure, (data) => fromJson(data));
    } catch (_) {
      return Failures(errMessage: 'An error occurred');
    }
  }
}
