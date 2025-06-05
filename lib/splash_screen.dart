import 'package:flutter/material.dart';
import 'package:ppkd_anwar/helper/preference.dart';
import 'package:ppkd_anwar/meet_16/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changePage() {
    Future.delayed(Duration(seconds: 3), () async {
      bool isLogin = await PreferenceHandler.getLogin();
      print("isLogin : $isLogin");
      // if (isLogin) {
      //   return Navigator.pushNamedAndRemoveUntil(
      //     context,
      //     TugasDelapan.id,
      //     (route) => false,
      //   );
      // } else {
      Navigator.pushNamedAndRemoveUntil(
        context,
        LoginScreenApp.id,
        (route) => false,
      );
    });
  }

  @override
  void initState() {
    changePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),

            Image.asset("assets/images/enzo.png"),
            SizedBox(height: 20),
            Text("Welcomee", style: TextStyle(fontWeight: FontWeight.bold)),
            Spacer(),
            SafeArea(child: Text("v 1.0.0", style: TextStyle(fontSize: 10))),
          ],
        ),
      ),
    );
  }
}
