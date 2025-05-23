import 'package:flutter/material.dart';

class TugasLima extends StatefulWidget {
  const TugasLima({super.key});

  @override
  State<TugasLima> createState() => _TugasLimaState();
}

class _TugasLimaState extends State<TugasLima> {
  int nilaiTambah = 0;
  final nilaiNama = Text(
    "Anwar Septian",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
  );
  bool favoritIcons = false;
  bool tampilkanNama = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text(
          "Tugas Lima",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // tampilkanNama ? nilaiNama : SizedBox(),
          buildElevatedButton(),
          SizedBox(height: 30),
          buildIconButton(),
          SizedBox(height: 30),
          buildTextbutton(),
          SizedBox(height: 30),
          buildFloatingactionbutton(),
          SizedBox(height: 12),
          nilaiWidget(),
          InkWell(
            splashColor: Colors.lightBlueAccent,
            onTap: () {
              print("Kotak Disentuh");
              setState(() {
                nilaiTambah;
              });
            },
          ),
        ],
      ),
    );
  }

  Column buildFloatingactionbutton() {
    return Column(
      children: [
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            // print("Tekan Untuk Menambahkan");
            setState(() {
              nilaiTambah++;
            });
            print(nilaiTambah);
          },
        ),
      ],
    );
  }

  Column buildIconButton() {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            print("Disukai");
            setState(() {
              favoritIcons = !favoritIcons;
            });
          },
          icon: Icon(
            Icons.favorite,
            color: favoritIcons ? Colors.red : Colors.blueGrey,
          ),
        ),
      ],
    );
  }

  Column buildTextbutton() {
    return Column(
      children: [
        // tampilkanNama?nilaiNama:SizedBox();
        TextButton(
          // tampilkanNama?nilaiNama:SizedBox();
          onPressed: () {
            tampilkanNama ? nilaiNama : SizedBox();
            setState(() {
              tampilkanNama = !tampilkanNama;
            });
          },
          child: Text("Lihat Selengkapnya"),
        ),
      ],
    );
  }

  Column buildElevatedButton() {
    return Column(
      children: [
        // Text(
        //   ("${Nama}"),
        //   style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
        // ),
        tampilkanNama ? nilaiNama : SizedBox(height: 70),
        Row(
          children: [
            // nilaiWidget(),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  print('Menekan Tombol Nama');
                  setState(() {
                    tampilkanNama = !tampilkanNama;
                  });
                },
                child: Text("Tampilkan Nama"),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Text nilaiWidget() {
    return Text(
      nilaiTambah.toString(),
      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
    );
  }
}
