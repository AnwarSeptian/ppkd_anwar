import 'package:flutter/material.dart';

class TugasEmpat extends StatelessWidget {
  const TugasEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF71C0BB),
        title: Text("Belanja Online"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: ListView(
              // padding: EdgeInsets.symmetric(horizontal: 0,vertical: 4),
              children: [
                Expanded(
                  // padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      SizedBox(height: 4),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Masukkan Nama Anda",
                          hintStyle: TextStyle(fontSize: 12),
                          filled: true,
                          fillColor: Color(0xFFFFF5E4),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.vertical(),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
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
                          fillColor: Color(0xFFFFF5E4),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.vertical(),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
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
                          fillColor: Color(0xFFFFF5E4),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.vertical(),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          prefixIcon: Icon(Icons.phone),
                        ),
                      ),

                      SizedBox(height: 10),
                      // Align(

                      // child:
                      Text("Catatan untuk Penjual  :", style: TextStyle()),
                      // ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Tulis disini",
                          hintStyle: TextStyle(fontSize: 12),
                          filled: true,
                          fillColor: Color(0xFFFFF5E4),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.vertical(),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          prefixIcon: Icon(Icons.edit),
                        ),
                      ),
                      SizedBox(height: 24),
                      Column(
                        children: [
                          Card(
                            elevation: 16,
                            child: ListTile(
                              leading: Image.asset(
                                "assets/images/bearbrand.webp",
                              ),
                              title: Text("Bear Brand"),
                              trailing: Icon(Icons.keyboard_arrow_right),
                              shape: Border.all(width: 1),
                              subtitle: Text("Harga Rp.10.000"),
                            ),
                          ),
                          Card(
                            elevation: 16,
                            child: ListTile(
                              leading: Image.asset(
                                "assets/images/greentea.jfif",
                              ),
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
                              leading: Image.asset("assets/images/dettol.png"),
                              title: Text("Dettol"),
                              trailing: Icon(Icons.keyboard_arrow_right),
                              shape: Border.all(width: 1),
                              subtitle: Text("Harga Rp.7.000"),
                            ),
                          ),
                          Card(
                            elevation: 16,
                            child: ListTile(
                              leading: Image.asset(
                                "assets/images/dettolcair.jpg",
                              ),
                              title: Text("Dettol Cair"),
                              trailing: Icon(Icons.keyboard_arrow_right),
                              shape: Border.all(width: 1),
                              subtitle: Text("Harga Rp.64.000"),
                            ),
                          ),
                          Card(
                            elevation: 16,
                            child: ListTile(
                              leading: Image.asset("assets/images/molto.jpg"),
                              title: Text("Molto"),
                              trailing: Icon(Icons.keyboard_arrow_right),
                              shape: Border.all(width: 1),
                              subtitle: Text("Harga Rp.15.000"),
                            ),
                          ),
                          Card(
                            elevation: 16,
                            child: ListTile(
                              leading: Image.asset(
                                "assets/images/sunlight.webp",
                              ),
                              title: Text("Sunlight"),
                              trailing: Icon(Icons.keyboard_arrow_right),
                              shape: Border.all(width: 1),
                              subtitle: Text("Harga Rp.20.000"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              color: Color(0xFF6A9C89),
              padding: EdgeInsets.symmetric(horizontal: 42, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  IconButton(
                    icon: Icon(Icons.home, size: 32),
                    padding: EdgeInsets.only(bottom: 12),
                    onPressed: () {},
                  ),
                  // SizedBox(width: 56),
                  IconButton(
                    icon: Icon(Icons.person_3_sharp, size: 32),
                    padding: EdgeInsets.only(bottom: 12),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart_checkout, size: 32),
                    padding: EdgeInsets.only(bottom: 12),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
