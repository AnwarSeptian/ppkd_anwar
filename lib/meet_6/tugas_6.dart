import 'package:flutter/material.dart';

class TugasEnam extends StatelessWidget {
  const TugasEnam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffffff),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: 16),
            buildLogin(),
            SizedBox(height: 30),
            buildWelcome(),
            SizedBox(height: 16),
            buildSignin(),
            SizedBox(height: 32),
            buildEmail(),
            SizedBox(height: 20),
            buildFieldemail(),
            SizedBox(height: 24),
            buildPassword(),
            SizedBox(height: 20),
            buildFieldpassword(),
            SizedBox(height: 8),
            buildForgotpassword(),
            SizedBox(height: 18),
            buildButtonlogin(),
            SizedBox(height: 12),
            buildSignup(),
          ],
        ),
      ),
    );
  }

  Row buildSignup() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(
          TextSpan(
            text: "Don't have an account?",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
          ),
        ),
        SizedBox(width: 10),
        Text.rich(
          TextSpan(
            text: "Sign Up",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: Color(0xffEA9459),
            ),
          ),
        ),
      ],
    );
  }

  GestureDetector buildButtonlogin() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 56,
        width: 327,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Color(0xff283FB1),
        ),

        child: Center(
          child: Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xffFFFFFF),
            ),
          ),
        ),
      ),
    );
  }

  Align buildForgotpassword() {
    return Align(
      alignment: Alignment.centerRight,
      child: Text.rich(
        TextSpan(
          text: "Forgot Password?",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Color(0xffEA9459),
          ),
        ),
      ),
    );
  }

  TextField buildFieldpassword() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
      ),
    );
  }

  Text buildPassword() {
    return Text.rich(
      TextSpan(
        text: "Password",
        style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
      ),
    );
  }

  TextField buildFieldemail() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
      ),
    );
  }

  Column buildEmail() {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            text: "Email Address",
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
          ),
        ),
      ],
    );
  }

  Column buildSignin() {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            text: "Sign In your account",
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
          ),
        ),
      ],
    );
  }

  Row buildWelcome() {
    return Row(
      children: [
        Text(
          "Welcome Back",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Column buildLogin() {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(height: 30),
            Container(
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},

                    child: Icon(
                      Icons.navigate_before_sharp,
                      color: Color(0xff262626),
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 24),
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
