import 'package:flutter/material.dart';

class ModeGelap extends StatefulWidget {
  const ModeGelap({super.key});
  static const String id = "/mode_gelap";
  @override
  State<ModeGelap> createState() => _ModeGelapState();
}

class _ModeGelapState extends State<ModeGelap> {
  bool isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isSwitchOn ? Colors.black87 : Colors.white,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox(height: 24),
          Row(
            children: [
              Switch(
                value: isSwitchOn,
                onChanged: (value) {
                  print(isSwitchOn);
                  setState(() {
                    isSwitchOn = value;
                  });
                },
              ),
              Text(
                isSwitchOn ? "Mode Terang" : "Mode Gelap",
                style: TextStyle(
                  fontSize: isSwitchOn ? 25 : 18,
                  color: isSwitchOn ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
