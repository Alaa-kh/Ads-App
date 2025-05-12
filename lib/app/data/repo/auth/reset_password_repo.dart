import 'package:ads_project/app/core/constants/app_api.dart';
import 'package:ads_project/app/data/helper/failures_handling.dart';
import 'package:ads_project/app/data/models/auth/reset_password_model.dart';
import 'package:ads_project/app/data/network/crud.dart';

abstract class ResetPasswordRepository {
  Future resetPassword({
    required String password,
    required String confirmPassword,
    required String code,
  });
}

class ResetPasswordRepositoryImpl extends ResetPasswordRepository {
  @override
  Future resetPassword({
    required String password,
    required String confirmPassword,
    required String code,
  }) async {
    return _postData(
      url: AppApi.resetPassword,
      fromJson: (json) => ResetPasswordModel.fromJson(json),
      body: {
        'password': password,
        'password_confirmation': confirmPassword,
        'code': code,
      },
    );
  }

  /// Generic method to post data to the API and handle errors.
  Future _postData({
    required String url,
    required Function fromJson,
    required Map<String, String> body,
  }) async {
    try {
      final result = await Crud().patch(url: url, body: body);
      return result.fold((failure) => failure, (data) => fromJson(data));
    } catch (e) {
      print('Exception in _patchData:::::::::::::::; $e');
      return Failures(errMessage: 'An error occurred');
    }
  }
}

