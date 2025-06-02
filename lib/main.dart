import 'package:flutter/material.dart';
import 'package:ppkd_anwar/meet_12/meet_12a.dart';
import 'package:ppkd_anwar/meet_13/mode_gelap.dart';
import 'package:ppkd_anwar/meet_13/mode_kategori.dart';
import 'package:ppkd_anwar/meet_13/mode_syarat.dart';
import 'package:ppkd_anwar/meet_13/mode_tanggal.dart';
import 'package:ppkd_anwar/meet_13/mode_waktu.dart';
import 'package:ppkd_anwar/meet_13/tugas_8_flutter.dart';
import 'package:ppkd_anwar/meet_6/tugas_6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => TugasEnam(),
        MeetDuabelas.id: (context) => MeetDuabelas(),
        ModeGelap.id: (context) => ModeGelap(),
        ModeTanggal.id: (context) => ModeTanggal(),
        ModeSyarat.id: (context) => ModeSyarat(),
        ModeKategori.id: (context) => ModeKategori(),
        ModeWaktu.id: (context) => ModeKategori(),
      },
      debugShowCheckedModeBanner: false,
      title: 'PPKD B 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
      ),
      // home: MeetDuabelas(),
    );
  }
}
