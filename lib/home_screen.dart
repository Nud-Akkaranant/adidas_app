import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.home),
          // ),
          title: const Text(
            "SHOP",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, letterSpacing: 2),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_outline),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(color: Color.fromARGB(255, 240, 240, 240)),
                    bottom: BorderSide(
                      color: Color.fromARGB(255, 240, 240, 240),
                    )),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.search,
                      weight: 0.1, // Use size instead of weight
                    ),
                  ),
                  Text(
                    "Find products",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Colors.grey.shade400,
                        letterSpacing: .5,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 30,
              padding: const EdgeInsets.only(left: 16), // เพิ่มระยะห่างจากซ้าย
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color.fromARGB(255, 240, 240, 240)),
                  bottom: BorderSide(color: Color.fromARGB(255, 240, 240, 240)),
                ),
              ),
              alignment: Alignment.centerLeft, // จัดข้อความไปทางซ้าย
              child: const Text(
                "WOMEN MEN KIDS",
                textAlign: TextAlign.left, // จัดข้อความให้อยู่ทางซ้าย
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 180,
                      child: Image.asset(
                        'assets/images/promotions.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    ListTile(
                      minVerticalPadding: 0,
                      leading: Image.asset(
                        'assets/icons/shoes.png',
                        width: 35,
                        height: 35,
                      ),
                      title: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text("SHOES"),
                      ),
                    ),
                    ListTile(
                      minVerticalPadding: 0,
                      leading: Image.asset(
                        'assets/icons/clothing.png',
                        width: 35,
                        height: 35,
                      ),
                      title: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text("CLOTHING"),
                      ),
                    ),
                    ListTile(
                      minVerticalPadding: 0,
                      leading: Image.asset(
                        'assets/icons/accessories.png',
                        width: 35,
                        height: 35,
                      ),
                      title: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text("ACCESSORIES"),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
