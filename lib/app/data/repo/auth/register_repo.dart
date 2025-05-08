import 'dart:convert';

import 'package:ads_project/app/core/constants/app_api.dart';
import 'package:ads_project/app/data/helper/failures_handling.dart';
import 'package:ads_project/app/data/models/auth/register_model.dart';
import 'package:ads_project/app/data/network/crud.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

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

  /// Method to send multipart/form-data with a file
  Future _postMultipartData({
    required String url,
    required Function fromJson,
    required Map<String, String> fields,
    required PlatformFile file,
  }) async {
    try {
      var request = http.MultipartRequest('POST', Uri.parse(url));

      request.fields.addAll(fields);

      request.files.add(
        http.MultipartFile.fromBytes(
          'details_file', // اسم الحقل الذي يستقبله السيرفر
          file.bytes!,
          filename: file.name,
          contentType: MediaType('application', 'pdf'),
        ),
      );

      var response = await request.send();
      final responseBody = await response.stream.bytesToString();

      if (response.statusCode == 200 || response.statusCode == 201) {
        return fromJson(json.decode(responseBody));
      } else {
        print('Error Response: $responseBody');
        return 'Registration failed: ${response.statusCode}';
      }
    } catch (e) {
      print('Exception in _postMultipartData: $e');
      return Failures(errMessage: 'An error occurred');
    }
  }
}
// class RegisterRepositoryImpl extends RegisterRepository {
//   @override
//   Future registerUser({
//     required String name,
//     required String email,
//     required String password,
//     required String gender,
//     required String age,
//     required String number,
//     required String place,
//     required String carNumber,
//     required String carYear,
//     required String carColor,
//     required String carName,
//     required String nationality,
//     required String workStatus,
//     required PlatformFile pdfFile,
//   }) async {
//     return _postData(
//       url: AppApi.register,
//       fromJson: (json) => RegisterModel.fromJson(json),
//       body: {
//         'username': name,
//         'email': email,
//         'number': number,
//         'password': password,
//         'age': age,
//         'place_of_residence': place,
//         'gender': gender,
//         'car_number': carNumber,
//         'nationality': nationality,
//         'car_name': carName,
//         'car_color': carColor,
//         'car_year': carYear,
//         'work_status': workStatus,
//         'details_file': pdfFile,
//       },
//     );
//   }

  /// Generic method to post data to the API and handle errors.
  Future _postData({
    required String url,
    required Function fromJson,
    required Map<String, String> body,
    bool? isFormData,
    String? file,
    String? keyFile,
  }) async {
    // try {
      final result = await Crud().post(url: url, body: body, isFormData: isFormData?? false, photo: file, keyPhoto: keyFile, );
      return result.fold((failure) => failure, (data) => fromJson(data));
    // } catch (e) {
    //   print('Exception in _postData:::::::::::::::; $e');
    //   return Failures(errMessage: 'An error occurred');
    // }
}
