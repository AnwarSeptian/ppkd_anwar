import 'package:flutter/material.dart';
import 'package:ppkd_anwar/meet_16/study_case/db_siswa.dart';
import 'package:ppkd_anwar/meet_16/study_case/model_siswa.dart';

class SiswaApp extends StatefulWidget {
  const SiswaApp({super.key});

  @override
  // State<SiswaApp> createState() => _SiswaAppState();
  _SiswaAppState createState() => _SiswaAppState();
}

class _SiswaAppState extends State<SiswaApp> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController umurController = TextEditingController();

  List<Siswa> daftarSiswa = [];
  @override
  void initState() {
    super.initState();
    muatData();
  }

  Future<void> muatData() async {
    final data = await DBHelper().getAllSiswa();
    setState(() {
      daftarSiswa = data;
    });
  }

  Future<void> simpanData() async {
    final nama = namaController.text;
    final umur = int.tryParse(umurController.text) ?? 0;
    if (nama.isNotEmpty && umur > 0) {
      await DBHelper().insertSiswa(Siswa(nama: nama, umur: umur));
      namaController.clear();
      umurController.clear();
      muatData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pendaftaran Siswa")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: umurController,
              decoration: InputDecoration(labelText: 'Umur'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(onPressed: simpanData, child: Text('Simpan')),
            Divider(height: 32),
            Expanded(
              child: ListView.builder(
                itemCount: daftarSiswa.length,
                itemBuilder: (context, index) {
                  final siswa = daftarSiswa[index];
                  return ListTile(
                    leading: CircleAvatar(child: Text('${siswa.id}')),
                    title: Text(siswa.nama),
                    subtitle: Text('Umur : ${siswa.umur}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
