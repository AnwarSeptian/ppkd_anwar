import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_anwar/tugas_15/endpoint.dart';
import 'package:ppkd_anwar/tugas_15/model/register_error_response.dart';
import 'package:ppkd_anwar/tugas_15/model/register_response.dart';

class UserService {
  static Future<Map<String, dynamic>> registerUser({
    required String email,
    required String name,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse(Endpoint.register),
      headers: {"Accept": "application/json"},
      body: {"name": name, "email": email, "password": password},
    );
    if (response.statusCode == 200) {
      print(registerResponseFromJson(response.body).toJson());
      return registerResponseFromJson(response.body).toJson();
    } else if (response.statusCode == 422) {
      return registerErrorResponseFromJson(response.body).toJson();
    } else {
      throw Exception("Failed to register user : ${response.statusCode}");
    }
  }
}

class UserLogin {
  static Future<Map<String, dynamic>> loginUser({
    required String email,
    required String name,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse(Endpoint.login),
      headers: {"Accept": "application/json"},
      body: jsonEncode({"email": email, "password": password}),
    );

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      return result;
    } else {
      throw Exception('Login gagal: ${response.statusCode}');
    }
  }
}
