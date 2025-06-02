import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HalamanSukses extends StatefulWidget {
  const HalamanSukses({super.key, required this.email, required this.domisili});
  final String email;
  final String domisili;
  @override
  State<HalamanSukses> createState() => _HalamanSuksesState();
}

class _HalamanSuksesState extends State<HalamanSukses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Terima Kasih")),
      body: Center(child: Text("Terima Kasih sudah mendaftar")),
    );
  }
}
