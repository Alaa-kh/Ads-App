

import 'package:ads_project/app/core/constants/app_api.dart';
import 'package:ads_project/app/data/helper/failures_handling.dart';
import 'package:ads_project/app/data/models/auth/register_model.dart';
import 'package:ads_project/app/data/network/crud.dart';


abstract class RegisterRepository {
  Future registerUser({
    required String name,
    required String email,
    required String password,
    required String gender,
    required String age,
    required String number,
    required String place,
    required String carNumber,
    required String carYear,
    required String carColor,
    required String carName,
    required String nationality,
    required String workStatus,
    required String pdfFile,
  });
}

class RegisterRepositoryImpl extends RegisterRepository {
  @override
  Future registerUser({
    required String name,
    required String email,
    required String password,
    required String gender,
    required String age,
    required String number,
    required String place,
    required String carNumber,
    required String carYear,
    required String carColor,
    required String carName,
    required String nationality,
    required String workStatus,
    required String pdfFile,
  }) async {
    return _postData(
      url: AppApi.register,
      fromJson: (json) => RegisterModel.fromJson(json),
      body: {
        'username': name,
        'email': email,
        'number': number,
        'password': password,
        'age': age,
        'place_of_residence': place,
        'gender': gender,
        'car_number': carNumber,
        'nationality': nationality,
        'car_name': carName,
        'car_color': carColor,
        'car_year': carYear,
        'work_status': workStatus,
      },
      isFormData: true,
      file: pdfFile,
      keyFile: 'details_file'
    );
  }

}

  /// Generic method to post data to the API and handle errors.
  Future _postData({
    required String url,
    required Function fromJson,
    required Map<String, String> body,
    bool? isFormData,
    String? file,
    String? keyFile,
  }) async {
    try {
      final result = await Crud().post(url: url, body: body, isFormData: isFormData?? false, photo: file, keyPhoto: keyFile, );
      return result.fold((failure) => failure, (data) => fromJson(data));
    } catch (e) {
      print('Exception in _postData:::::::::::::::; $e');
      return Failures(errMessage: 'An error occurred');
    }
}
