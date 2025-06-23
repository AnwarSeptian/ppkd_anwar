import 'package:flutter/material.dart';
import 'package:ppkd_anwar/tugas_15/preference.dart';
import 'package:ppkd_anwar/tugas_15/view/home.dart';
import 'package:ppkd_anwar/tugas_15/view/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changePage() {
    Future.delayed(Duration(seconds: 3), () async {
      String? isLogin = await PreferenceHandler.getToken();
      print("isLogin : $isLogin");
      if (isLogin != null) {
        return Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomeApi()),
          (route) => false,
        );
      } else {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
          (route) => false,
        );
      }
    }); // <- kurung ini tadi kurang
  }

  @override
  void initState() {
    super.initState(); // super.initState() harus dipanggil dulu
    changePage();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/login.jpg"),
                SizedBox(height: 20),
                Text("Welcomee", style: TextStyle(fontWeight: FontWeight.bold)),
                SafeArea(
                  child: Text("v 1.0.0", style: TextStyle(fontSize: 10)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
