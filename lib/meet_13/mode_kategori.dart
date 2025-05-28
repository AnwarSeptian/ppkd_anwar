import 'package:flutter/material.dart';

class ModeKategori extends StatefulWidget {
  const ModeKategori({super.key});
  static const String id = "/mode_kategori";

  @override
  State<ModeKategori> createState() => _ModeKategoriState();
}

class _ModeKategoriState extends State<ModeKategori> {
  final List<String> _kategori = ["Makanan", "Elekteronik", "Pakaian"];

  String? isSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton<String>(
            value: isSelected,
            hint: Text("Pilih Kategori"),
            items:
                _kategori.map((String value) {
                  return DropdownMenuItem(value: value, child: Text(value));
                }).toList(),
            onChanged: (value) {
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
