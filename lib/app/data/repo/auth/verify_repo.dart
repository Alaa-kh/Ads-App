// import 'package:ads_project/app/core/constants/app_api.dart';
// import 'package:ads_project/app/data/helper/failures_handling.dart';
// import 'package:ads_project/app/data/models/auth/login_model.dart';
// import 'package:ads_project/app/data/network/crud.dart';

// abstract class VerifyRepository {
//   Future login({required String name, required String password});
// }

// class VerifyRepositoryImpl extends VerifyRepository {
//   @override
//   Future verify({required String name, required String password}) async {
//     return _postData(
//       url: AppApi.login,
//       fromJson: (json) => LoginModel.fromJson(json),
//       body: {'username': name, 'password': password},
//     );
//   }

//   /// Generic method to post data to the API and handle errors.
//   Future _postData({
//     required String url,
//     required Function fromJson,
//     required Map<String, String> body,
//   }) async {
//     try {
//       final result = await Crud().post(url: url, body: body);
//       return result.fold((failure) => failure, (data) => fromJson(data));
//     } catch (e) {
//       print('Exception in _postData:::::::::::::::; $e');
//       return Failures(errMessage: 'An error occurred');
//     }
//   }
// }
