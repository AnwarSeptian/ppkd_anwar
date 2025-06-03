import 'package:flutter/material.dart';
import 'package:ppkd_anwar/meet_6/tugas_6.dart';

class HalamanSukses extends StatelessWidget {
  const HalamanSukses({
    super.key,
    required this.email,
    required this.domisili,
    required this.nama,
  });
  final String email;
  final String domisili;
  final String nama;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Terima Kasih",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 50),

        child: Container(
          width: 500,
          height: 250,
          color: Colors.blueGrey,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                Text(
                  "Terima Kasih $nama dari $domisili sudah mendaftar ",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(height: 12),
                Text(
                  "Silahkan Login Menggunakan $email ",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 42),

                Container(
                  height: 40,
                  width: 160,
                  color: Colors.blueAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.arrow_forward_outlined, color: Colors.white),
                      TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TugasEnam(),
                            ),
                            (route) => false,
                          );
                        },
                        child: Text(
                          "Klik untuk Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
