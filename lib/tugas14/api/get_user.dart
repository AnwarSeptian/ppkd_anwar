import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_anwar/tugas14/models/user_model.dart';

Future<List<DataUser>> getUser() async {
  final response = await http.get(
    Uri.parse('https://thronesapi.com/api/v2/Characters'),
  );
  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    return userJson.map((json) => DataUser.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load users');
  }
}
