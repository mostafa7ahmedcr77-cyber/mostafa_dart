import 'package:flutter/material.dart';
import 'package:my_projict/screens/Explor_screen.dart';
import 'package:my_projict/screens/account_screen.dart';
import 'package:my_projict/screens/cart_screen.dart';
import 'package:my_projict/screens/favourite_screen.dart';
import 'package:my_projict/screens/home_screen.dart';

class AppSection extends StatefulWidget {
  const AppSection({super.key});

  @override
  State<AppSection> createState() => _AppSectionState();
}

class _AppSectionState extends State<AppSection> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ExplorScreen(),
    CartScreen(),
    FavouriteScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/store 1.png", color: Colors.black),
            activeIcon: Image.asset(
              "assets/icons/store 1.png",
              color: Color(0xff53B175),
            ),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/Group 3.png"),
            activeIcon: Image.asset(
              "assets/icons/Group 3.png",
              color: Color(0xff53B175),
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/Vector(2).png"),
            activeIcon: Image.asset(
              "assets/icons/Vector(2).png",
              color: Color(0xff53B175),
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/bookmark 1.png"),
            activeIcon: Image.asset(
              "assets/icons/bookmark 1.png",
              color: Color(0xff53B175),
            ),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/Vector(3).png"),
            activeIcon: Image.asset(
              "assets/icons/Vector(3).png",
              color: Color(0xff53B175),
            ),
            label: "Account",
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: .w600,
          color: Color(0xff53B175),
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: .w600,
          color: Color(0xff181725),
        ),
        selectedItemColor: Color(0xff53B175),
        unselectedItemColor: Color(0xff181725),
      ),
    );
  }
}
