import 'dart:convert';

List<DataUser> dataUserFromJson(String str) =>
    List<DataUser>.from(json.decode(str).map((x) => DataUser.fromJson(x)));

String dataUserToJson(List<DataUser> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DataUser {
  int id;
  String firstName;
  String lastName;
  String fullName;
  String title;
  String family;
  String image;
  String imageUrl;

  DataUser({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.title,
    required this.family,
    required this.image,
    required this.imageUrl,
  });

  factory DataUser.fromJson(Map<String, dynamic> json) => DataUser(
    id: json["id"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    fullName: json["fullName"],
    title: json["title"],
    family: json["family"],
    image: json["image"],
    imageUrl: json["imageUrl"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "firstName": firstName,
    "lastName": lastName,
    "fullName": fullName,
    "title": title,
    "family": family,
    "image": image,
    "imageUrl": imageUrl,
  };
}
