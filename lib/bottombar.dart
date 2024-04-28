import 'package:flutter/material.dart';

import 'Home.dart';




class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  var Shows=[
    homepage(),

  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(

      body: Shows[currentIndex],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFF8312F),
        unselectedItemColor: Color(0xFFD9D9D9),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 2,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_filled)
          ),
          BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(Icons.shopping_bag)
          ),
          BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(Icons.favorite)
          ),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person)
          ),

        ],
      ),

    );
  }
}