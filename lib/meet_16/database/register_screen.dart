import 'package:flutter/material.dart';
import 'package:ppkd_anwar/meet_16/database/db_helper.dart';
import 'package:ppkd_anwar/meet_16/model/user_model.dart';

class RegisterScreenApp extends StatefulWidget {
  const RegisterScreenApp({super.key});
  static const String id = "/register_screen_app";
  @override
  State<RegisterScreenApp> createState() => _RegisterScreenAppState();
}

class _RegisterScreenAppState extends State<RegisterScreenApp> {
  bool isVisibility = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Stack(children: [buildBackground(), buildLayer()]),
      ),
    );
  }

  SafeArea buildLayer() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Register",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                height(12),
                Text(
                  "Register your account",
                  style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                ),
                height(24),
                buildTitle("Email Address"),
                height(12),
                buildTextField(
                  hintText: "Enter your email",
                  controller: emailController,
                ),
                height(16),
                buildTitle("Nama"),
                height(12),
                buildTextField(
                  hintText: "Enter your name",
                  controller: nameController,
                ),
                height(16),
                buildTitle("Username"),
                height(12),
                buildTextField(
                  hintText: "Enter your username",
                  controller: usernameController,
                ),
                height(16),
                buildTitle("Phone Number"),
                height(12),
                buildTextField(
                  hintText: "Enter your phone number",
                  controller: phoneController,
                ),
                height(16),
                buildTitle("Password"),
                height(12),
                buildTextField(
                  hintText: "Enter your password",
                  isPassword: true,
                  controller: passwordController,
                ),
                height(12),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                height(24),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("Email: ${emailController.text}");
                        print("Name: ${nameController.text}");
                        print("Username: ${usernameController.text}");
                        print("Phone: ${phoneController.text}");
                        print("Password: ${passwordController.text}");
                        DbHelper.registerUser(
                          data: UserModel(
                            email: emailController.text,
                            password: passwordController.text,
                            name: nameController.text,
                            phone: phoneController.text,
                            username: usernameController.text,
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Registration Successful!"),
                            backgroundColor: Colors.green,
                          ),
                        );
                        Navigator.pop(context);
                      }
                      // Navigator.pushNamed(context, LoginScreenApp.id);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                height(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have an account?",
                      style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.blueGrey,

                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildBackground() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.jfif"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildTextField({
    String? hintText,
    bool isPassword = false,
    required TextEditingController controller,
  }) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      obscureText: isPassword ? isVisibility : false,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        suffixIcon:
            isPassword
                ? IconButton(
                  onPressed: () {
                    setState(() {
                      isVisibility = !isVisibility;
                    });
                  },
                  icon: Icon(
                    isVisibility ? Icons.visibility_off : Icons.visibility,
                    color: Colors.blueGrey,
                  ),
                )
                : null,
      ),
    );
  }

  SizedBox height(double height) => SizedBox(height: height);
  SizedBox width(double width) => SizedBox(width: width);

  Widget buildTitle(String text) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 12, color: Colors.blueGrey)),
      ],
    );
  }
}
