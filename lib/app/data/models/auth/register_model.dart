
import 'dart:convert';

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  final String message;

  RegisterModel({required this.message});

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      RegisterModel(message: json["message"]);

  Map<String, dynamic> toJson() => {"message": message};
}
