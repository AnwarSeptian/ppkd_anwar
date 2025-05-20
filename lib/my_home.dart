import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Profil Saya"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Action for search button
            },
          ),
        ],
      ),
      body: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text.rich(
            TextSpan(
              text: "Nama: Vino",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.black
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text.rich(
            TextSpan(
              text: "Nama 1 : Vino",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.black
              ),
            ),
          ),
        ],
      ) ,
    );
  }
}