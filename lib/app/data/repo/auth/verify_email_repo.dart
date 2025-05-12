import 'package:ads_project/app/core/constants/app_api.dart';
import 'package:ads_project/app/data/helper/failures_handling.dart';
import 'package:ads_project/app/data/models/auth/resend_code_model.dart';
import 'package:ads_project/app/data/models/auth/verify_email_model.dart';
import 'package:ads_project/app/data/network/crud.dart';
import 'package:dio/dio.dart';

abstract class VerifyRepository {
  Future verify({required String code});
  Future resendCode();
}

class VerifyRepositoryImpl extends VerifyRepository {
  @override
  Future verify({required String code}) async {
    return _patchData(
      url: AppApi.verify,
      fromJson: (json) => VerifyModel.fromJson(json),
      body: {'code': code},
    );
  }

  /// Generic method to post data to the API and handle errors.
  Future _patchData({
    required String url,
    required Function fromJson,
    required Map<String, String> body,
  }) async {
    try {
      final result = await Crud().patch(url: url, body: body);
      return result.fold((failure) => failure, (data) => fromJson(data));
    } catch (e) {
      print('Exception in _postData:::::::::::::::; $e');
      return Failures(errMessage: 'An error occurred');
    }
  }

  /////////////

  @override
  Future resendCode() async {
    return _fetchData(
      url: AppApi.resendCode,
      fromJson: (json) => ResendCodeModel.fromJson(json),
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
