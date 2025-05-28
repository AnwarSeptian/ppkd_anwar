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
      body: Center(
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   // children: [
        //     // bool? valueCheck
        //     // CheckBoxCustom(valueCheck: valueCheck),
        //     // Checkbox(
        //     //   value: ValueCheck,
        //     //   onChanged: (value) {
        //     //     setState(() {
        //     //       print("CheckBox value change:$value");
        //     //          valueCheck = value ?? false;
        //         });
        //       },
        //     ),
        //   ],
      ),
      // ),
    );
  }
}
