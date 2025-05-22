import 'package:flutter/material.dart';

class TugasEmpat extends StatelessWidget {
  const TugasEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffB0DB9C),
        title: Text("Belanja Online"),
      ),
      body: ListView(
        // padding: EdgeInsets.symmetric(horizontal: 0,vertical: 4),
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(height: 4),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Masukkan Nama Anda",
                    hintStyle: TextStyle(fontSize: 12),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xffB0DB9C),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.vertical(),
                      borderSide: BorderSide(
                        color: Color(0xffB0DB9C),
                        width: 4,
                      ),
                    ),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Masukkan Email Anda",
                    hintStyle: TextStyle(fontSize: 12),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xffFFFBDE),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.vertical(),
                      borderSide: BorderSide(
                        color: Color(0xffFFFBDE),
                        width: 4,
                      ),
                    ),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Masukkan No Handphone",
                    hintStyle: TextStyle(fontSize: 12),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xffFFFBDE),
                        width: 10,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.vertical(),
                      borderSide: BorderSide(
                        color: Color(0xffFFFBDE),
                        width: 4,
                      ),
                    ),
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),

                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,

                  child: Text("Catatan Penjual  :"),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Tulis disini",
                    hintStyle: TextStyle(fontSize: 12),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xffFFFBDE),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.vertical(),
                      borderSide: BorderSide(
                        color: Color(0xffFFFBDE),
                        width: 4,
                      ),
                    ),
                    prefixIcon: Icon(Icons.note),
                  ),
                ),
                SizedBox(height: 24),
                Column(
                  children: [
                    Card(
                      elevation: 16,
                      child: ListTile(
                        leading: Image.asset("assets/images/bearbrand.webp"),
                        title: Text("Bear Brand"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        shape: Border.all(width: 1),
                        subtitle: Text("Harga Rp.10.000"),
                      ),
                    ),
                    Card(
                      elevation: 16,
                      child: ListTile(
                        leading: Image.asset("assets/images/greentea.jfif"),
                        title: Text("Nii Greentea"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        shape: Border.all(width: 1),
                        subtitle: Text("Harga Rp.5.000"),
                      ),
                    ),
                    Card(
                      elevation: 16,
                      child: ListTile(
                        leading: Image.asset("assets/images/molto.jpg"),
                        title: Text("Molto Refill"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        shape: Border.all(width: 1),
                        subtitle: Text("Harga Rp.5.000"),
                      ),
                    ),
                    Card(
                      elevation: 16,
                      child: ListTile(
                        leading: Image.asset("assets/images/Ultra.webp"),
                        title: Text("Ultra Milk"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        shape: Border.all(width: 1),
                        subtitle: Text("Harga Rp.6.000"),
                      ),
                    ),
                    Card(
                      elevation: 16,
                      child: ListTile(
                        leading: Image.asset("assets/images/uchiha.jpeg"),
                        title: Text("Uchiha Asep"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        shape: Border.all(width: 1),
                        subtitle: Text("Harga Rp.100"),
                      ),
                    ),
                    Card(
                      elevation: 16,
                      child: ListTile(
                        leading: Image.asset("assets/images/uchiha.jpeg"),
                        title: Text("Uchiha Asep"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        shape: Border.all(width: 1),
                        subtitle: Text("Harga Rp.100"),
                      ),
                    ),
                    Card(
                      elevation: 16,
                      child: ListTile(
                        leading: Image.asset("assets/images/uchiha.jpeg"),
                        title: Text("Uchiha Asep"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        shape: Border.all(width: 1),
                        subtitle: Text("Harga Rp.100"),
                      ),
                    ),
                    Card(
                      elevation: 16,
                      child: ListTile(
                        leading: Image.asset("assets/images/uchiha.jpeg"),
                        title: Text("Uchiha Asep"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        shape: Border.all(width: 1),
                        subtitle: Text("Harga Rp.100"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
