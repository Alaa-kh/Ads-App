import 'dart:convert';

ResetPasswordModel resetPasswordModelFromJson(String str) =>
    ResetPasswordModel.fromJson(json.decode(str));

String resetPasswordModelToJson(ResetPasswordModel data) =>
    json.encode(data.toJson());

class ResetPasswordModel {
  final String? message;
  final dynamic data;
  final List? errors;

  ResetPasswordModel({this.message, this.data, this.errors});

  factory ResetPasswordModel.fromJson(Map<String, dynamic> json) =>
      ResetPasswordModel(
        message:  json["message"]  ,
        data: json["data"],
        errors: json['errors'],
      );

  Map<String, dynamic> toJson() => {
    "message": message,
    "data": data,
    'errors': errors,
  };
}
