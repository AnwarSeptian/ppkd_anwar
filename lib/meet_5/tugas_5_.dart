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
          buildElevatedButton(),
          SizedBox(height: 5),

          ///button tampilkan nama
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lightBlueAccent, width: 2),
            ),

            child: buildInkwell(),
          ),
          SizedBox(height: 10),

          ///Foto
          Container(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              border: Border.all(color: Colors.lightBlueAccent, width: 2),
            ),
            child: buildIconButton(),
          ),

          ///Like
          buildTextbutton(),
          SizedBox(height: 10),
          //text tampilkan nama
          buildFloatingactionbutton(),
          SizedBox(height: 12),
          //Container
          nilaiWidget(),

          buildGestureDetector(),
        ],
      ),
    );
  }

  Center buildGestureDetector() {
    return Center(
      child: GestureDetector(
        onTap: () {
          print("Klik Sekali");
          setState(() {
            nilaiTambah++;
          });
        },
        onDoubleTap: () {
          print("Ditekan dua kali");
          setState(() {
            nilaiTambah--;
          });
        },
        onLongPress: () {
          print("Tahan Lama");
          setState(() {
            nilaiTambah = 0;
          });
        },

        child: Container(
          height: 100,
          width: 200,
          color: Colors.amber,
          child: Center(
            child: Text(
              "Container",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column buildInkwell() {
    return Column(
      children: [
        InkWell(
          splashColor: Colors.lightBlueAccent,
          onTap: () {
            print("Foto Disentuh");
            setState(() {
              nilaiTambah;
            });
          },
          onLongPress: () {
            tampilkanNama ? nilaiNama : SizedBox();
            print("tekan lama");
            setState(() {
              tampilkanNama = !tampilkanNama;
            });
          },
          onDoubleTap: () {
            tampilkanNama ? SizedBox() : nilaiNama;
            print("tekan lama");
            setState(() {
              tampilkanNama = !tampilkanNama;
            });
          },
          child: Image.asset("assets/images/fotoprofil.png", height: 150),
        ),
      ],
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
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite,
                color: favoritIcons ? Colors.red : Colors.blueGrey,
              ),
              Text(" Like foto"),
            ],
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("Tampilkan Nama ")],
          ),
        ),
      ],
    );
  }

  Column buildElevatedButton() {
    return Column(
      children: [
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
