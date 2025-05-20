import 'package:flutter/material.dart';
import 'package:ppkd_anwar/meet_2/meet_2.dart';
import 'package:ppkd_anwar/meet_2/tugas_2_flutter.dart';
import 'package:ppkd_anwar/my_home.dart';
import 'tugas_1_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PPKD B 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
      ),
      home: TugasDua(),
    );
  }
}
