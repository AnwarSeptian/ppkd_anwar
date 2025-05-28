import 'package:flutter/material.dart';

class ModeWaktu extends StatefulWidget {
  const ModeWaktu({super.key});
  static const String id = "/mode_waktu";

  @override
  State<ModeWaktu> createState() => _ModeWaktuState();
}

class _ModeWaktuState extends State<ModeWaktu> {
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              final TimeOfDay? picked = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              if (picked != null) {
                setState(() {
                  selectedTime = picked;
                });
              }
            },
            child: Text("Pilih Jam"),
          ),
        ],
      ),
    );
  }
}
