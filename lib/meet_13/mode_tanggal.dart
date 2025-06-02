import 'package:flutter/material.dart';

class ModeTanggal extends StatefulWidget {
  const ModeTanggal({super.key});
  static const String id = "/mode_tanggal";
  @override
  State<ModeTanggal> createState() => _ModeTanggalState();
}

class _ModeTanggalState extends State<ModeTanggal> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );
              if (picked != null) {
                setState(() {
                  selectedDate = picked;
                });
              }
            },
            child: Text("Pilih Tanggal"),
          ),
        ],
      ),
    );
  }
}
