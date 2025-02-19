import 'package:adidas/adiclub_screen.dart';
import 'package:adidas/adidas_screen.dart';
import 'package:adidas/favorite_screen.dart';
import 'package:adidas/search_screen.dart';
import 'package:adidas/shopping_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenNav extends StatefulWidget {
  const HomeScreenNav({super.key});

  @override
  State<HomeScreenNav> createState() => _HomeScreenNavState();
}

class _HomeScreenNavState extends State<HomeScreenNav> {
  int _selectedIndex = 0;

  final Map<int, Map<String,Widget>> _navigationMap = {
    0: {"title": const Text("Home"), "screen":AdidasScreen()},
    1: {"title": const Text("Search"), "screen":SearchScreen()},
    2: {"title": const Text("Favorite"), "screen":FavoriteScreen()},
    3: {"title": const Text("Cart"), "screen":ShoppingScreen()},
    4: {"title": const Text("AdiClub"), "screen":AdiclubScreen()},
  
  };
  
  void onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "SHOP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 2,
            ),
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

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon:
               Image.asset("assets/icons/logo.png",width: 30,height: 30,),
               label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: ""),
            BottomNavigationBarItem(icon: Image.asset("assets/icons/adiclub.png",width: 45,height: 45), label:""),
          ],
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: _navigationMap.values.map((page) => page["screen"]!).toList(),
          
        ),
        
        
      ),
    );
  }
}
