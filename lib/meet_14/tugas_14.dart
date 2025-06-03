import 'package:flutter/material.dart';
import 'package:ppkd_anwar/meet_14/halaman_sukses.dart';
import 'package:ppkd_anwar/utils/button.dart';

class Tugas14 extends StatefulWidget {
  const Tugas14({super.key});

  @override
  State<Tugas14> createState() => _Tugas14State();
}

class _Tugas14State extends State<Tugas14> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _domisiliController = TextEditingController();
  final TextEditingController _nohpController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Masukkan Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email tidak boleh kosong";
                    } else if (!value.contains("@")) {
                      return "Email tidak valid";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _namaController,
                  decoration: InputDecoration(
                    labelText: "Masukkan Nama",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "nama anda wajib di isi";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),

                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Masukkan No Handphone",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  controller: _nohpController,
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Masukkan Domisili",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  controller: _domisiliController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "domisili anda wajib di isi";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 12),
                DefaultButton(
                  text: "Daftar",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // print("Berhasil");
                      dialogSuccess(context);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> dialogSuccess(BuildContext context) {
    return showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text("Berhasil"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
              Text("Akun kamu berhasil di buat,"),
              // SizedBox(height: 8),
              Text("Klik Lanjut "),
              SizedBox(height: 24),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => HalamanSukses(
                          email: _emailController.text,
                          domisili: _domisiliController.text,
                          nama: _namaController.text,
                        ),
                  ),
                );
              },
              child: Text("Lanjut"),
            ),
          ],
        );
      },
    );
  }
}
