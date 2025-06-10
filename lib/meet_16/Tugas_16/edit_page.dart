import 'package:flutter/material.dart';
import 'package:ppkd_anwar/meet_16/Tugas_16/db_tugas16.dart';
import 'package:ppkd_anwar/meet_16/Tugas_16/model_tugas.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key, required this.modeltugas});
  final ModelTugas modeltugas;

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  late TextEditingController namaController;
  late TextEditingController umurController;
  late TextEditingController kondisiController;

  @override
  void initState() {
    namaController = TextEditingController(text: widget.modeltugas.nama);
    umurController = TextEditingController(
      text: widget.modeltugas.umur.toString(),
    );
    kondisiController = TextEditingController(text: widget.modeltugas.kondisi);
    super.initState();
  }

  void update() async {
    final updated = ModelTugas(
      id: widget.modeltugas.id,
      nama: namaController.text,
      kondisi: kondisiController.text,
      umur: int.parse(umurController.text),
    );
    print(updated.toJson());
    await DbTugas16.updateData(updated);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAEBD0),
      appBar: AppBar(title: Text("Edit Data Pasien"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: "Nama"),
            ),
            TextField(
              controller: umurController,
              decoration: InputDecoration(labelText: "Umur"),
              // keyboardType: Text,
            ),
            TextField(
              controller: kondisiController,
              decoration: InputDecoration(labelText: "Kondisi"),
            ),
            SizedBox(height: 24),
            ElevatedButton(onPressed: update, child: Text("Update")),
          ],
        ),
      ),
    );
  }
}
