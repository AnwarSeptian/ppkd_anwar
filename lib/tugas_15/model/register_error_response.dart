// To parse this JSON data, do
//
//     final registerErrorResponse = registerErrorResponseFromJson(jsonString);

import 'dart:convert';

RegisterErrorResponse registerErrorResponseFromJson(String str) =>
    RegisterErrorResponse.fromJson(json.decode(str));

String registerErrorResponseToJson(RegisterErrorResponse data) =>
    json.encode(data.toJson());

class RegisterErrorResponse {
  String message;
  Errors errors;

  RegisterErrorResponse({required this.message, required this.errors});

  factory RegisterErrorResponse.fromJson(Map<String, dynamic> json) =>
      RegisterErrorResponse(
        message: json["message"],
        errors: Errors.fromJson(json["errors"]),
      );

  Map<String, dynamic> toJson() => {
    "message": message,
    "errors": errors.toJson(),
  };
}

class Errors {
  List<String> email;

  Errors({required this.email});

  factory Errors.fromJson(Map<String, dynamic> json) =>
      Errors(email: List<String>.from(json["email"].map((x) => x)));

  Map<String, dynamic> toJson() => {
    "email": List<dynamic>.from(email.map((x) => x)),
  };
}
