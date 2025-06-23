import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_anwar/tugas_15/endpoint.dart';
import 'package:ppkd_anwar/tugas_15/model/profile_response.dart';
import 'package:ppkd_anwar/tugas_15/model/register_error_response.dart';
import 'package:ppkd_anwar/tugas_15/model/register_response.dart';
import 'package:ppkd_anwar/tugas_15/preference.dart';

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

  static Future<Map<String, dynamic>> loginUser({
    required String email,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse(Endpoint.login),
      headers: {"Accept": "application/json"},
      body: {"email": email, "password": password},
    );
    print(response.body);

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      return result;
    } else {
      throw Exception('Login gagal: ${response.statusCode}');
    }
  }

  static Future<Map<String, dynamic>> getProfile() async {
    String? token = await PreferenceHandler.getToken();
    final response = await http.get(
      Uri.parse(Endpoint.profile),
      headers: {"Accept": "application/json", "Authorization": "Bearer $token"},
    );
    print(response.body);
    print(response.body);
    if (response.statusCode == 200) {
      print(profileResponsesFromJson(response.body).toJson());
      return profileResponsesFromJson(response.body).toJson();
    } else if (response.statusCode == 422) {
      return profileResponsesFromJson(response.body).toJson();
    } else {
      print('${response.statusCode}');
      throw Exception("${response.statusCode}");
    }
  }

  static Future<Map<String, dynamic>> updateProfile({
    required String name,
  }) async {
    String? token = await PreferenceHandler.getToken();

    final response = await http.put(
      Uri.parse(Endpoint.profile),
      headers: {"Accept": "application/json", "Authorization": "Bearer $token"},
      body: {"name": name},
    );
    print(response.body);

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      return result;
    } else {
      throw Exception('Login gagal: ${response.statusCode}');
    }
  }
}
