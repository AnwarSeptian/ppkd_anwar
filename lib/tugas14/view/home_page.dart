import 'package:flutter/material.dart';
import 'package:ppkd_anwar/constant/app_color.dart';
import 'package:ppkd_anwar/tugas14/api/get_user.dart';
import 'package:ppkd_anwar/tugas14/models/user_model.dart';
import 'package:ppkd_anwar/tugas14/view/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<DataUser> semuaUser = [];
  List<DataUser> hasilSearch = [];
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    final data = await getUser();
    setState(() {
      semuaUser = data;
      hasilSearch = data;
    });
  }

  void searchUser(String query) {
    final hasil =
        semuaUser.where((user) {
          return user.fullName.toLowerCase().contains(query.toLowerCase());
        }).toList();
    setState(() {
      hasilSearch = hasil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              TextFormField(
                onChanged: searchUser,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.cream2,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                ),
              ),
              SizedBox(height: 12),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,

                  child: Row(
                    children: [
                      Image.asset('assets/images/banner.jpg'),
                      SizedBox(width: 2),
                      Image.asset('assets/images/banner2.jpeg'),
                      SizedBox(width: 2),
                      Image.asset('assets/images/banner3.jpg'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 60,
                color: AppColor.cream1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "CHARACTER FROM GAME of THRONES",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: AppColor.putih,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),

              Expanded(
                child: SingleChildScrollView(
                  child: FutureBuilder(
                    future: getUser(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasData) {
                        final users = snapshot.data;
                        return GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: hasilSearch.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 4,
                                mainAxisSpacing: 4,
                                // childAspectRatio: 1,
                              ),

                          itemBuilder: (BuildContext context, int index) {
                            final user = hasilSearch[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => DetailPage(
                                          nama: user.firstName,
                                          namaLengkap: user.fullName,
                                          image: user.imageUrl,
                                          title: user.title,
                                          family: user.family,
                                        ),
                                  ),
                                );
                              },
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      "${user?.imageUrl}",
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: double.infinity,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4),
                                      ),
                                      color: AppColor.cream1,
                                    ),
                                    height: 32,
                                    width: double.infinity,
                                    child: Center(
                                      child: Text(
                                        "${user?.fullName}",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.hitam2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      } else {
                        return Text("Error : $snapshot");
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
