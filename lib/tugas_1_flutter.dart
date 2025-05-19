import 'package:flutter/material.dart';

class TugasSatu extends StatefulWidget {
  const TugasSatu({super.key});

  @override
  State<TugasSatu> createState() => _TugasSatuState();
}

class _TugasSatuState extends State<TugasSatu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Profil Saya"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              text: "Nama : Andi Rahmat",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.location_on),
              Text(
                "Jakarta",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Seorang pelajar yang sedang belajar Flutter",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
