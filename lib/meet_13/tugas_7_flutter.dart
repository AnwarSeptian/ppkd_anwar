import 'package:flutter/material.dart';
import 'package:ppkd_anwar/meet_13/mode_gelap.dart';
import 'package:ppkd_anwar/meet_13/mode_tanggal.dart';
import 'package:ppkd_anwar/meet_13/mode_waktu.dart';
import 'package:ppkd_anwar/meet_14/kategori_produk.dart';
import 'package:ppkd_anwar/meet_14/kategori_produk_a.dart';
import 'package:ppkd_anwar/meet_14/pakaian_pria.dart';
import 'package:ppkd_anwar/meet_16/login_screen.dart';
import 'package:ppkd_anwar/meet_4/tugas_4_flutter.dart';

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
    // ModeSyarat(),
    ModeGelap(),
    KategoriProduk(),
    KategoriProdukA(),
    PakaianPria(),
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
        backgroundColor: Color(0xffE7EFC7),
        title: Text(
          "HOME",
          style: TextStyle(
            color: Color(0xff3B3B1A),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              // padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Color(0xffAEC8A4)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/enzo.png"),
                    // child: Image.asset(),
                  ),
                  SizedBox(height: 4),
                  Text("Enzo Fernandes"),
                  Text("e.fernandes8@gmail.com"),
                ],
              ),
            ),
            SizedBox(height: 24),

            // ListTile(
            //   leading: Icon(Icons.rule_sharp),
            //   title: Text("Syarat & Ketentuan"),
            //   onTap: () {
            //     _itemTapped(0);
            //     Navigator.pop(context);
            //   },
            // ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Belanja"),
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TugasEmpat()),
                  );
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.dark_mode_sharp),
              title: Text("Mode Gelap"),
              onTap: () {
                _itemTapped(0);
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("Atur Tanggal"),
              onTap: () {
                _itemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.watch_later_sharp),
              title: Text("Waktu"),
              onTap: () {
                _itemTapped(2);

                ListTile(
                  leading: Icon(Icons.shopping_bag),
                  title: Text("Pakaian Pria"),
                  onTap: () {
                    _itemTapped(4);
                    Navigator.pop(context);
                  },
                );

                ListTile(
                  leading: Icon(Icons.calendar_month),
                  title: Text("Tanggal lahir"),
                  onTap: () {
                    _itemTapped(5);
                    Navigator.pop(context);
                  },
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreenApp()),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),

      body: _screen[_selectedIndex],
    );
  }
}
