import 'package:flutter/material.dart';

class MeetEmpatA extends StatelessWidget {
  const MeetEmpatA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff537D5D)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Materi GridView.count"),

            GridView.builder(
              physics: NeverScrollableScrollPhysics(),

              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 10,
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              // crossAxisCount: 10,
              // physics: NeverScrollableScrollPhysics(),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: index % 2 == 0 ? Color(0xff73946B) : Color(0xffD2D0A0),
                  child: Text(
                    (index + 1).toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                );
              },
              // padding: EdgeInsets.symmetric(horizontal: 12),
            ),
          ],
        ),
      ),
    );
  }
}
