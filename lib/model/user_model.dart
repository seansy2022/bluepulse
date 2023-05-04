// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);
import 'dart:convert';

class UserModel {
  final int age;
  final String name;
  final String gender;
  final int height;
  final int l;
  final int the1;
  final int userModel1;
  final int the2;
  final int userModel2;

  UserModel({
    required this.age,
    required this.name,
    required this.gender,
    required this.height,
    required this.l,
    required this.the1,
    required this.userModel1,
    required this.the2,
    required this.userModel2,
  });

  UserModel copyWith({
    int? age,
    String? name,
    String? gender,
    int? height,
    int? l,
    int? the1,
    int? userModel1,
    int? the2,
    int? userModel2,
  }) =>
      UserModel(
        age: age ?? this.age,
        name: name ?? this.name,
        gender: gender ?? this.gender,
        height: height ?? this.height,
        l: l ?? this.l,
        the1: the1 ?? this.the1,
        userModel1: userModel1 ?? this.userModel1,
        the2: the2 ?? this.the2,
        userModel2: userModel2 ?? this.userModel2,
      );

  factory UserModel.fromRawJson(String str) =>
      UserModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        age: json["age"],
        name: json["name"],
        gender: json["Gender"],
        height: json["Height"],
        l: json["△L"],
        the1: json["α1"],
        userModel1: json["β1"],
        the2: json["α2"],
        userModel2: json["β2"],
      );

  Map<String, dynamic> toJson() => {
        "age": age,
        "name": name,
        "Gender": gender,
        "Height": height,
        "△L": l,
        "α1": the1,
        "β1": userModel1,
        "α2": the2,
        "β2": userModel2,
      };
}
