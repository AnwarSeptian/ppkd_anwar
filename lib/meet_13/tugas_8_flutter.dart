import 'package:flutter/material.dart';
import 'package:ppkd_anwar/meet_13/about_us.dart';
import 'package:ppkd_anwar/meet_13/tugas_7_flutter.dart';

class TugasDelapan extends StatefulWidget {
  const TugasDelapan({super.key});
  static const String id = "/tugas_8_flutter";

  @override
  State<TugasDelapan> createState() => _TugasDelapanState();
}

class _TugasDelapanState extends State<TugasDelapan> {
  static const List<Widget> _screen = [TugasTujuh(), AboutUs()];
  int _buttonSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _buttonSelected = value;
          });
          print("Halaman saat ini : $_buttonSelected");
        },

        currentIndex: _buttonSelected,
        selectedItemColor: Color(0XFF3B3B1A),
        unselectedItemColor: Color(0XFFAEC8A4),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
        ],
      ),
      body: _screen[_buttonSelected],
    );
  }
}
