import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("About Us"),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                ),
                SizedBox(height: 24),
                Text(
                  "Pembuat Aplikasi  : Anwar Septian",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Versi  : 1.0",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
