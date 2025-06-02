import 'package:flutter/material.dart';

class KategoriProduk extends StatefulWidget {
  const KategoriProduk({super.key});

  @override
  State<KategoriProduk> createState() => _KategoriProdukState();
}

class _KategoriProdukState extends State<KategoriProduk> {
  final List<String> kategori = ["Buah-Buahan", "Sayuran", "Elektronik"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: kategori.length,
            itemBuilder: (BuildContext, int index) {
              return Text(
                "${index + 1}. ${kategori[index]} ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              );
            },
          ),
        ],
      ),
    );
  }
}
