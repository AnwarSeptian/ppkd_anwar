import 'package:flutter/material.dart';
import 'package:ppkd_anwar/constant/app_color.dart';
import 'package:ppkd_anwar/constant/app_format.dart';

class MeetDuabelas extends StatefulWidget {
  const MeetDuabelas({super.key});
  static const String id = "/meet_12a";

  @override
  State<MeetDuabelas> createState() => _MeetDuabelasState();
}

class _MeetDuabelasState extends State<MeetDuabelas> {
  Map<String, Color> warna = {
    "merah": Colors.red,
    "hijau": Colors.green,
    "kuning": Colors.amber,
  };
  String? isSelected;
  @override
  Widget build(BuildContext context) {
    bool isSwitchOn = false;
    return Scaffold(
      backgroundColor: isSwitchOn ? AppColor.gray88 : Colors.white,
      appBar: AppBar(
        backgroundColor: AppColor.army1,
        title: Text(
          "Meet 12A Input Widget",
          style: AppStyle.fontBold(fontSize: 14),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          DropdownButton<String>(
            value: isSelected,
            hint: Text("Pilih"),
            items:
                warna.entries.map((entry) {
                  return DropdownMenuItem<String>(
                    value: entry.key,
                    child: Text(entry.key),
                  );
                }).toList(),
            onChanged: (String? value) {
              setState(() {
                isSelected = value;
              });
            },
          ),
          Container(
            height: 150,
            width: 150,
            color: warna[isSelected] ?? Colors.grey,
          ),
        ],
      ),
    );
  }
}
