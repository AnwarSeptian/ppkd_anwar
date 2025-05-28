import 'package:flutter/material.dart';

class ModeSyarat extends StatefulWidget {
  const ModeSyarat({super.key, this.valueCheck});
  static const String id = "/mode_syarat";
  final bool? valueCheck;

  @override
  State<ModeSyarat> createState() => _ModeSyaratState();
}

class _ModeSyaratState extends State<ModeSyarat> {
  bool _isChecked = false;
  bool valueCheck = false;
  @override
  void initState() {
    valueCheck = widget.valueCheck ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Checkbox(
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value ?? false;
                  });
                },
              ),
              Text("Saya menyetujui semua persyaratan yang berlaku"),
            ],
          ),
          Text(
            _isChecked
                ? "Lanjutkan Pendaftaran"
                : "Anda belum bisa melanjutkan",
          ),
        ],
      ),
    );
  }
}
