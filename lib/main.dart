import 'package:flutter/material.dart';

void main() => runApp(const BRImoApp());

class BRImoApp extends StatelessWidget {
  const BRImoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          //child: Text("Home"),
          children: [

              SizedBox(
                height: 380,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [

            //HEADER
           Container(
              width: double.infinity,
              height: 200,
              padding: const EdgeInsets.only(top: 60, left: 20),

              decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage('assets/latar.png'), 
                fit: BoxFit.cover,
                   ),
                 ),             

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
             

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Selamat Pagi,",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Moh Rofiki",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ), 
              
              //ICON NOTIF DAN CS
                 Row(
                  children: const[
                    const Icon(Icons.notifications,color: Colors.white,),
                      SizedBox(width: 10),
                    const Icon(Icons.headset_mic,color: Colors.white,),
                      SizedBox(width: 9),
                                  
                      ],
                     ),


                ],
              ),

            ),


                  ],
                ),
              ),


          ],


        ),
      ),
    );
  }
}