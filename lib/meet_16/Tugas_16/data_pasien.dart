import 'package:flutter/material.dart';
import 'package:ppkd_anwar/meet_16/Tugas_16/db_tugas16.dart';
import 'package:ppkd_anwar/meet_16/Tugas_16/edit_page.dart';
import 'package:ppkd_anwar/meet_16/Tugas_16/model_tugas.dart';

class DataPasien extends StatefulWidget {
  const DataPasien({super.key});

  @override
  State<DataPasien> createState() => _DataPasienState();
}

class _DataPasienState extends State<DataPasien> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController umurController = TextEditingController();
  final TextEditingController kondisiController = TextEditingController();
  List<ModelTugas> daftarPasien = [];
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    muatData();
  }

  Future<void> muatData() async {
    final data = await DbTugas16.getModelTugas();
    setState(() {
      daftarPasien = data;
    });
  }

  Future<void> simpanData() async {
    if (_formkey.currentState!.validate()) {
      final nama = namaController.text;
      final umur = int.tryParse(umurController.text) ?? 0;
      final kondisi = kondisiController.text;

      if (nama.isNotEmpty && kondisi.isNotEmpty && umur > 0) {
        await DbTugas16.insertTugas(
          ModelTugas(nama: nama, umur: umur, kondisi: kondisi),
        );
        namaController.clear();
        umurController.clear();
        kondisiController.clear();
        muatData();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Input Kondisi Pasien",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffAF3E3E),
        leading: Icon(Icons.medical_services_rounded),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Color(0xffEAEBD0),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text(
                        "Masukkan Kondisi Pasien",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 12),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Lengkapi data pasien";
                          }
                          return null;
                        },
                        controller: namaController,
                        decoration: InputDecoration(
                          labelText: "Nama",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                      ),
                      SizedBox(height: 12),

                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Lengkapi data pasien";
                          }
                          return null;
                        },
                        controller: umurController,
                        decoration: InputDecoration(
                          labelText: "Umur",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Lengkapi data pasien";
                          }
                          return null;
                        },
                        controller: kondisiController,
                        decoration: InputDecoration(
                          labelText: "Kondisi",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                      ),

                      SizedBox(height: 4),
                      ElevatedButton(
                        onPressed: () {
                          simpanData();
                        },
                        child: Text("Simpan"),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: Divider(thickness: 4, endIndent: 8)),
                Text(
                  "Data Pasien",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(child: Divider(thickness: 4, indent: 8)),
              ],
            ),
            Expanded(
              child: Container(
                color: Color(0xffAF3E3E),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: ListView.builder(
                    itemCount: daftarPasien.length,
                    itemBuilder: (context, index) {
                      final tugas = daftarPasien[index];
                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(child: Text("${index + 1}")),
                          title: Text(tugas.nama),
                          subtitle: Text("Umur : ${tugas.umur}"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Kondisi :${tugas.kondisi}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    iconSize: 20,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (_) => EditPage(
                                                modeltugas: ModelTugas(
                                                  id: tugas.id,
                                                  nama: tugas.nama,
                                                  kondisi: tugas.kondisi,
                                                  umur: tugas.umur,
                                                ),
                                              ),
                                        ),
                                      ).then((value) => muatData());
                                    },
                                    icon: Icon(Icons.edit),
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      await DbTugas16.deleteData(tugas.id!);
                                      setState(() {
                                        muatData();
                                      });
                                    },
                                    icon: Icon(Icons.delete),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
