// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductName {
  final String namaProduk;
  final String hargaProduk;
  String fotoProduk;
  bool? fotoDiskon;
  ProductName({
    required this.namaProduk,
    required this.hargaProduk,
    required this.fotoProduk,
    this.fotoDiskon,
  });
}
