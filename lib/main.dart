import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:ppkd_anwar/meet_4/meet_4a.dart';
import 'package:ppkd_anwar/meet_4/meet_4b.dart';
import 'package:ppkd_anwar/meet_4/tugas_3_flutter.dart';
=======
>>>>>>> d526b17ca9934fad889600c63f8212814c5c1d32
import 'package:ppkd_anwar/meet_4/tugas_4_flutter.dart';

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
      home: TugasEmpat(),
    );
  }
}
