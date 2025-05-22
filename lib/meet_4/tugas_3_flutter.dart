import 'package:flutter/material.dart';

class TugasTiga extends StatelessWidget {
  const TugasTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffFFFBDE), title: Text("Daftar")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              color: Color(0xff90D1CA),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text("Masukan Data Anda"),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukkan Nama Anda",
                      hintStyle: TextStyle(fontSize: 12),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffFFFBDE),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.vertical(),
                        borderSide: BorderSide(
                          color: Color(0xffFFFBDE),
                          width: 4,
                        ),
                      ),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukkan Email Anda",
                      hintStyle: TextStyle(fontSize: 12),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffFFFBDE),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.vertical(),
                        borderSide: BorderSide(
                          color: Color(0xffFFFBDE),
                          width: 4,
                        ),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukkan No Handphone",
                      hintStyle: TextStyle(fontSize: 12),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffFFFBDE),
                          width: 10,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.vertical(),
                        borderSide: BorderSide(
                          color: Color(0xffFFFBDE),
                          width: 4,
                        ),
                      ),
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),

                  SizedBox(height: 10),
                  Text("Note"),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Tulis disini",
                      hintStyle: TextStyle(fontSize: 12),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffFFFBDE),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.vertical(),
                        borderSide: BorderSide(
                          color: Color(0xffFFFBDE),
                          width: 4,
                        ),
                      ),
                      prefixIcon: Icon(Icons.note),
                    ),
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ),
          Text.rich(
            TextSpan(text: "GALERI KITA", style: TextStyle(fontSize: 24)),
          ),
          SizedBox(height: 38),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,

              // physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color:
                          index % 2 == 0
                              ? Color(0xff73946B)
                              : Color(0xffD2D0A0),
                      child: Text(
                        index.toString(),

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Column(children: [Text("GAMBAR")]),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
