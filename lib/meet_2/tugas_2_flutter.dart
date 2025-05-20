import 'package:flutter/material.dart';

class TugasDua extends StatelessWidget {
  const TugasDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: Text("Profil Saya"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:24),
                child: Text(
                "DEWI LESTARI ",
                style: TextStyle(fontSize:50,  fontWeight: FontWeight.w700),
                ),
              ),
              
              
            ],
          ),
          SizedBox(height: 24),
          Column(
                children: [
                  Center(
                    child: Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage(
                          "assets/images/fotoprofil.png"
                        ))
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(24.4),
                
                width: double.infinity,
                decoration: BoxDecoration(
                  color:Colors.blueAccent,
                ),
                child: Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 8),
                    Text.rich(
                      TextSpan(  
                        text: "No Handphone : 085765442541",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        )
                      )
                    ), 
                  ],
                ),
                
                ),
                SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(height: 52,color: Colors.red,
                    child: Text("Postingan",
                    style: TextStyle(fontSize: 24,color: Colors.white),
                    ),
                    ),
                    
                  ),
                  Expanded(
                    flex :2,
                    child: Container(height: 52, color: Colors.green,
                    child: Text("Pengikut",
                    style: TextStyle(fontSize:24, color: Colors.white),
                    )
                  ),
                  ),
                  
                ],
                
                ),
              
        ],
      ),
    );
  }
}