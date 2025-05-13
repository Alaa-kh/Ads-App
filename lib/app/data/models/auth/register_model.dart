
import 'dart:convert';

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  final String? message;
  final List<String>? errors;

  RegisterModel({this.message, this.errors});

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
    message: json["message"],
    errors: json["errors"] == null ? null : List<String>.from(json["errors"]),
  );

  Map<String, dynamic> toJson() => {"message": message, "errors": errors};

  String get displayMessage {
    if (errors != null && errors!.isNotEmpty) {
      return errors!.first;
    } else if (message != null) {
      return message!;
    } else {
      return "An unknown error occurred.";
    }
  }
}
