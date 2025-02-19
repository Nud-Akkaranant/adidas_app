import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdidasScreen extends StatelessWidget {
  const AdidasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  ),
                ),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.search,
                      size: 24,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Find products',
                        hintStyle: GoogleFonts.lato(
                          textStyle: TextStyle(
                            color: Colors.grey.shade400,
                            letterSpacing: .5,
                            fontSize: 16,
                          ),
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(bottom: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 30,
              padding: const EdgeInsets.only(left: 16),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color.fromARGB(255, 240, 240, 240)),
                  bottom: BorderSide(color: Color.fromARGB(255, 240, 240, 240)),
                ),
              ),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      // Handle WOMEN tap
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      minimumSize: Size.zero,
                    ),
                    child: const Text(
                      "WOMEN",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle MEN tap
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      minimumSize: Size.zero,
                    ),
                    child: const Text(
                      "MEN",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle KIDS tap
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      minimumSize: Size.zero,
                    ),
                    child: const Text(
                      "KIDS",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
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
                    InkWell(
                      onTap: () {
                        // Handle SHOES tap
                      },
                      child: ListTile(
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
                        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                      ),
                    ),
                    const Divider(height: 1, color: Color.fromARGB(255, 240, 240, 240)),
                    InkWell(
                      onTap: () {
                        // Handle CLOTHING tap
                      },
                      child: ListTile(
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
                        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                      ),
                    ),
                    const Divider(height: 1, color: Color.fromARGB(255, 240, 240, 240)),
                    InkWell(
                      onTap: () {
                        // Handle ACCESSORIES tap
                      },
                      child: ListTile(
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
                        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                      ),
                    ),
                    const Divider(height: 1, color: Color.fromARGB(255, 240, 240, 240)),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        childAspectRatio: 2.3,
                        children: const [
                          PromoCard(icon: Icons.percent, title: "SALE"),
                          PromoCard(icon: Icons.directions_run, title: "SPORT"),
                          PromoCard(icon: Icons.local_fire_department, title: "NEW & TRENDING"),
                          PromoCard(icon: Icons.card_giftcard, title: "GIFT CARD"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PromoCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const PromoCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 8),
          Text(title),
        ],
      ),
    );
  }
}