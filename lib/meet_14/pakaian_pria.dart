import 'package:flutter/material.dart';
import 'package:ppkd_anwar/meet_14/model.dart';

class PakaianPria extends StatefulWidget {
  const PakaianPria({super.key});

  @override
  State<PakaianPria> createState() => _PakaianPriaState();
}

class _PakaianPriaState extends State<PakaianPria> {
  final List<ProductName> _dataProduct = [
    ProductName(
      namaProduk: "T-Shirt biru",
      hargaProduk: "Rp. 30.000",
      fotoProduk: "assets/images/tshirt.webp",
      fotoDiskon: "assets/images/bestseller.png",
    ),
    ProductName(
      namaProduk: "Jeans Hitam",
      hargaProduk: "Rp. 200.000",
      fotoProduk: "assets/images/jeanshitam.webp",
      fotoDiskon: "assets/images/sale.jfif",
    ),
    ProductName(
      namaProduk: "Koko hijau",
      hargaProduk: "Rp. 150.000",
      fotoProduk: "assets/images/kokohijau.webp",
      fotoDiskon: "assets/images/sale.jfif",
    ),
    ProductName(
      namaProduk: "Kemeja Lengan Pendek",
      hargaProduk: "Rp. 150.000",
      fotoProduk: "assets/images/kemejahitam.jpg",
      fotoDiskon: "assets/images/sale.jfif",
    ),
    ProductName(
      namaProduk: "T-Shirt Semen Tiga Roda",
      hargaProduk: "Rp. 150.000",
      fotoProduk: "assets/images/tshirttigaroda.webp",
      fotoDiskon: "assets/images/bestseller.png",
    ),
    ProductName(
      namaProduk: "Kemeja Batik",
      hargaProduk: "Rp. 170.000",
      fotoProduk: "assets/images/kemajabatik.webp",
      fotoDiskon: "assets/images/bestseller.png",
    ),
    ProductName(
      namaProduk: "Tenun Kalimantan",
      hargaProduk: "Rp. 200.0000",
      fotoProduk: "assets/images/tenunkalimantan.webp",
      fotoDiskon: "assets/images/sale.jfif",
    ),
    ProductName(
      namaProduk: "Celana Pendek",
      hargaProduk: "Rp. 150.000",
      fotoProduk: "assets/images/celanapendek.webp",
      fotoDiskon: "assets/images/bestseller.png",
    ),
    ProductName(
      namaProduk: "Kemeja Flanel",
      hargaProduk: "Rp. 150.000",
      fotoProduk: "assets/images/flanel.jfif",
      fotoDiskon: "assets/images/sale.jfif",
    ),
    ProductName(
      namaProduk: "Kemeja Hawai",
      hargaProduk: "Rp. 150.000",
      fotoProduk: "assets/images/kemejahawai.webp",
      fotoDiskon: "assets/images/bestseller.png",
    ),
    ProductName(
      namaProduk: "Kemeja Lengan Pendek",
      hargaProduk: "Rp. 150.000",
      fotoProduk: "assets/images/kemejalenganpendek.jpg",
      fotoDiskon: "assets/images/sale.jfif",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: _dataProduct.length,
          itemBuilder: (BuildContext context, int index) {
            final product = _dataProduct[index];
            return Card(
              shadowColor: Colors.blueAccent,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(product.fotoProduk ?? ""),
                ),
                title: Text(product.namaProduk ?? ""),
                subtitle: Text(product.hargaProduk),
                trailing: CircleAvatar(
                  backgroundImage: AssetImage(product.fotoDiskon ?? ""),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
