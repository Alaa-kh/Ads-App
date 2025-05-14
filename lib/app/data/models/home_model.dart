
import 'dart:convert';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

class HomeModel {
    final dynamic message;
    final List<Datum> data;

    HomeModel({
        required this.message,
        required this.data,
    });

    factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    final int id;
    final int userId;
    final String name;
    final String description;
    final String terms;
    final int driversNumber;
    final int budget;
    final double kmPrice;
    final String status;
    final String from;
    final List<String> imagesUrl;
    final User user;

    Datum({
        required this.id,
        required this.userId,
        required this.name,
        required this.description,
        required this.terms,
        required this.driversNumber,
        required this.budget,
        required this.kmPrice,
        required this.status,
        required this.from,
        required this.imagesUrl,
        required this.user,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        userId: json["user_id"],
        name: json["name"],
        description: json["description"],
        terms: json["terms"],
        driversNumber: json["drivers_number"],
        budget: json["budget"],
        kmPrice: json["km_price"]?.toDouble(),
        status: json["status"],
        from: json["from"],
        imagesUrl: List<String>.from(json["images_url"].map((x) => x)),
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "name": name,
        "description": description,
        "terms": terms,
        "drivers_number": driversNumber,
        "budget": budget,
        "km_price": kmPrice,
        "status": status,
        "from": from,
        "images_url": List<dynamic>.from(imagesUrl.map((x) => x)),
        "user": user.toJson(),
    };
}

class User {
    final int id;
    final String username;
    final String role;
    final String accountStatus;

    User({
        required this.id,
        required this.username,
        required this.role,
        required this.accountStatus,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        role: json["role"],
        accountStatus: json["account_status"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "role": role,
        "account_status": accountStatus,
    };
}
