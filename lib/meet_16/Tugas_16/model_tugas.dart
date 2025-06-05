import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ModelTugas {
  final int? id;
  final String nama;
  final String kondisi;
  final int umur;

  ModelTugas({
    this.id,
    required this.nama,
    required this.kondisi,
    required this.umur,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama': nama,
      'kondisi': kondisi,
      'umur': umur,
    };
  }

  factory ModelTugas.fromMap(Map<String, dynamic> map) {
    return ModelTugas(
      id: map['id'] != null ? map['id'] as int : null,
      nama: map['nama'] as String,
      kondisi: map['kondisi'] as String,
      umur: map['umur'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelTugas.fromJson(String source) =>
      ModelTugas.fromMap(json.decode(source) as Map<String, dynamic>);
}
