import 'package:flutter/material.dart';
import 'package:ppkd_anwar/constant/app_color.dart';
import 'package:ppkd_anwar/constant/app_format.dart';

class CheckboxCustom extends StatefulWidget {
  const CheckboxCustom({super.key, this.valueCheck});

  final bool? valueCheck;

  @override
  State<CheckboxCustom> createState() => _CheckboxCustomState();
}

class _CheckboxCustomState extends State<CheckboxCustom> {
  bool valueCheck = false;

  @override
  void initState() {
    valueCheck = widget.valueCheck ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: valueCheck,
          activeColor: AppColor.army2,
          checkColor: Colors.white,
          shape: CircleBorder(),
          side: BorderSide(color: AppColor.army2, width: 0),

          onChanged: (value) {
            setState(() {
              print("checkbox value changed : $value");
              valueCheck = value ?? false;
            });
          },
        ),
        Text(
          valueCheck ? "Sudah Bagus" : "Belum bagus",
          style: AppStyle.fontBold(fontSize: 18),
        ),
      ],
    );
  }
}
