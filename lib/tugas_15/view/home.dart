import 'package:flutter/material.dart';
import 'package:ppkd_anwar/constant/app_color.dart';
import 'package:ppkd_anwar/tugas_15/api/user_api.dart';
import 'package:ppkd_anwar/tugas_15/preference.dart';
import 'package:ppkd_anwar/tugas_15/view/login.dart';

class HomeApi extends StatefulWidget {
  const HomeApi({super.key});

  @override
  State<HomeApi> createState() => _HomeApiState();
}

class _HomeApiState extends State<HomeApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.hitam2,
      appBar: AppBar(
        title: Text(
          "Profil Anda",
          style: TextStyle(
            color: AppColor.hitam2,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
                (route) => false,
              );
              PreferenceHandler.deleteToken();
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.logout),
                Text("LOGOUT", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: AppColor.cream2,
      ),
      body: FutureBuilder(
        future: UserService.getProfile(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            final user = snapshot.data?['data'];
            print(user);
            return Column(
              children: [
                SizedBox(height: 30),
                CircleAvatar(
                  backgroundColor: AppColor.cream1,
                  radius: 95,
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage("assets/images/enzo.png"),
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    user?['name'],
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: AppColor.putih,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  margin: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Email Anda : ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  user?['email'],
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 24),
                        TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                final nameController = TextEditingController(
                                  text: user?['name'],
                                );

                                return AlertDialog(
                                  title: Text("Edit Name"),
                                  content: TextField(
                                    controller: nameController,
                                    decoration: InputDecoration(
                                      labelText: 'Name',
                                    ),
                                  ),

                                  actions: [
                                    TextButton(
                                      onPressed:
                                          () => Navigator.of(context).pop(),
                                      child: Text('Cancel'),
                                    ),
                                    ElevatedButton(
                                      onPressed: () async {
                                        final updateName = nameController.text;

                                        final res =
                                            await UserService.updateProfile(
                                              name: updateName,
                                            );
                                        setState(() {
                                          user?['name'] = updateName;
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Text('Save'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Text("Edit Profile"),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Center(child: Text("Error : ${snapshot.error}"));
          }
        },
      ),
    );
  }
}
