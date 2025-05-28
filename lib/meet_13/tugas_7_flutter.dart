import 'package:flutter/material.dart';
import 'package:ppkd_anwar/constant/app_format.dart';
import 'package:ppkd_anwar/meet_13/mode_gelap.dart';
import 'package:ppkd_anwar/meet_13/mode_kategori.dart';
import 'package:ppkd_anwar/meet_13/mode_syarat.dart';
import 'package:ppkd_anwar/meet_13/mode_tanggal.dart';
import 'package:ppkd_anwar/meet_13/mode_waktu.dart';

class TugasTujuh extends StatefulWidget {
  const TugasTujuh({super.key});

  @override
  State<TugasTujuh> createState() => _TugasTujuhState();
  static const String id = "/tugas_7_flutter";
}

class _TugasTujuhState extends State<TugasTujuh> {
  @override
  bool isSwitchOn = false;
  int _selectedIndex = 0;
  final int _buttonSelected = 0;

  static const List<Widget> _screen = [
    ModeSyarat(),
    ModeGelap(),
    ModeKategori(),
    ModeTanggal(),
    ModeWaktu(),
  ];

  void _itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // print("Halaman Saat ini : $_selectedIndex");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isSwitchOn ? Colors.grey : Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Tugas Pertemuan Tujuh", style: AppStyle.fontBold()),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              // padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/fotoprofil.png"),
                    // child: Image.asset(),
                  ),
                  SizedBox(height: 4),
                  Text("SASASS"),
                  Text("sasasas@gmail.com"),
                ],
              ),
            ),
            SizedBox(height: 24),
            ListTile(
              leading: Icon(Icons.rule_sharp),
              title: Text("Syarat & Ketentuan"),
              onTap: () {
                _itemTapped(0);
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.dark_mode_sharp),
              title: Text("Mode Gelap"),
              onTap: () {
                _itemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Pilih Kategori Produk"),
              onTap: () {
                _itemTapped(2);
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("Tanggal lahir"),
              onTap: () {
                _itemTapped(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.watch_later_sharp),
              title: Text("Waktu"),
              onTap: () {
                _itemTapped(4);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _screen[_selectedIndex],
    );
  }
}
