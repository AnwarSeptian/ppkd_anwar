import 'package:flutter/material.dart';

class KategoriProdukA extends StatefulWidget {
  const KategoriProdukA({super.key});

  @override
  State<KategoriProdukA> createState() => _KategoriProdukAState();
}

class _KategoriProdukAState extends State<KategoriProdukA> {
  final List<Map<String, dynamic>> _produkDetail = [
    {"nama": "Apel", 'harga': "20000", "icon": Icons.apple},
    {"nama": "Jeruk", 'harga': "10000", "icon": Icons.free_breakfast_outlined},
    {"nama": "Mangga", 'harga': "19000", "icon": Icons.access_alarm_outlined},
    {"nama": "Belimbing", 'harga': "18000", "icon": Icons.ac_unit_outlined},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _produkDetail.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(_produkDetail[index]["icon"]),
            title: Text("${_produkDetail[index]["nama"]}"),
            subtitle: Text("${_produkDetail[index]["harga"]}"),
          );
        },
      ),
    );
  }
}
