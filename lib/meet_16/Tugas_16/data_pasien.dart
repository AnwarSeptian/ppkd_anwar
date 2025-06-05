import 'package:flutter/material.dart';
import 'package:ppkd_anwar/meet_16/Tugas_16/db_tugas16.dart';
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
    final nama = namaController.text;
    final umur = int.tryParse(umurController.text) ?? 0;
    final kondisi = kondisiController.text;

    if (nama.isNotEmpty && kondisi.isNotEmpty && umur > 0) {
      await DbTugas16.insertTugas(
        ModelTugas(nama: nama, umur: umur, kondisi: kondisi),
      );
      namaController;
      umurController;
      kondisiController;
      muatData();
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
      body: Column(
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
                    TextField(
                      controller: namaController,
                      decoration: InputDecoration(
                        labelText: "Nama",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),

                    TextField(
                      controller: umurController,
                      decoration: InputDecoration(
                        labelText: "Umur",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    TextField(
                      controller: kondisiController,
                      decoration: InputDecoration(
                        labelText: "Kondisi",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),

                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: simpanData,
                      child: Text("Simpan"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 12),

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
          SizedBox(height: 12),
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
                        leading: CircleAvatar(child: Text("${tugas.id}")),
                        title: Text(tugas.nama),
                        subtitle: Text("Umur : ${tugas.umur}"),
                        trailing: Text(
                          "Kondisi :${tugas.kondisi}",
                          style: TextStyle(fontWeight: FontWeight.bold),
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
    );
  }
}
