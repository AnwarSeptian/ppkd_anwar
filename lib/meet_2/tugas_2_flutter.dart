import 'package:flutter/material.dart';

class TugasDua extends StatelessWidget {
  const TugasDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: Text("Profil Saya", style: TextStyle(fontSize: 24)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white, size: 40),
            onPressed: () {
              // Action for search button
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "UCHIHA ASEP",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Column(
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    image: DecorationImage(
                      image: AssetImage("assets/images/uchiha.jpeg"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(24.4),
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: Row(
              children: [
                Icon(Icons.email_sharp),
                SizedBox(width: 8),
                Text.rich(
                  TextSpan(
                    text: "Email  : uchihaasep221@gmail.com",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(24),
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 8),
                Text.rich(
                  TextSpan(
                    text: "No Handphone : 085765442541",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: double.infinity,
                  height: 52,
                  color: Colors.red,
                  child: Text(
                    "Postingan",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  height: 52,
                  color: Colors.green,
                  child: Text(
                    "Pengikut",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
              color: Colors.white,
              child: Text.rich(
                TextSpan(
                  text:
                      "Asep Uchiha — Mobile Developer, penyuka kopi, dan pecinta seni. Berdomisili di Jakarta. ITAMI O KANJIRO , SHINRA TENSEIIII!  ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blueAccent,
              padding: EdgeInsets.only(bottom: 40, left: 140),
              child: Row(
                children: [
                  Icon(Icons.copyright),
                  SizedBox(width: 4),
                  Text.rich(
                    TextSpan(
                      text: "Copyright 2025",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
