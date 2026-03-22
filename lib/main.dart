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
          
          //MENU CEPAT 
            Positioned(
              top: 115,
              left: 16,
              right: 16,
              child: Container(
                  padding: const EdgeInsets.only(top: 145, bottom: 20),
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                      blurRadius: 10,
                            ),
                          ],
                        ),
                    child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            menuatas(Icons.swap_horiz, "Transfer", Colors.blue),
                            menuatas(Icons.account_balance_wallet, "BRIVA", Colors.teal),
                            menuatas(Icons.water_drop, "PDAM", Colors.lightBlue),
                            menuatas(Icons.phone_android, "Pulsa/Data", Colors.green),
                          ],
                        ),
                      ),
                    ),

            //BOX SALDO
             Positioned(
               top: 122,
                left: 23,
                right: 23,
                child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFF0B56A7),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white24),
                ),
             child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        const Text(
                           "Saldo Rekening Utama",
                           style: TextStyle(color: Colors.white70, fontSize: 12),
                         ),
                         const SizedBox(height: 8),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: const [
                          Text(
                            "Rp6.627.006,00",
                             style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                ),
                             ),
                              Icon(Icons.visibility_off, color: Colors.white, size: 18),
                             ],
                            ),
                            const Divider(color: Colors.white24, height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Semua Rekeningmu",
                                  style: TextStyle(color: Colors.white, fontSize: 13),
                                ),
                                Icon(Icons.chevron_right, color: Colors.white, size: 16),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),

    //IKLAN ATAS
     Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Container(
           height: 70,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/iklan1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

      const SizedBox(height: 20),

      //CARI FITUR DAN ATUR
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
        children: [
          Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(25),
                      ),
                    child: Row(
                      children: const [
                         Icon(Icons.search, color: Colors.grey, size: 20),
                            SizedBox(width: 10),
                            Text("Cari Fitur", style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                    ),

        const SizedBox(width: 15),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
          BoxShadow(
          color: Colors.black12,blurRadius: 5,
                 ),
              ],
           ),
          child: Row(
          children: const [
          Icon(Icons.edit_note, color: Colors.blue, size: 20),
          SizedBox(width: 4),
            Text(
             "Atur",
              style: TextStyle(
                  color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                            ),
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



 Widget menuatas(IconData icon, String label, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: color,
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 11)),
      ],
    );
  }