import 'package:flutter/material.dart';

import 'package:online_course/pages/explorer_page.dart';
import 'package:online_course/pages/home_page.dart';
import 'package:online_course/pages/profile_page.dart';
import 'package:online_course/pages/wishlist_page.dart';
import 'package:online_course/theme.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget bottomNavbar() {
      return BottomNavigationBar(
        elevation: 1,
        selectedItemColor: blueColor,
        backgroundColor: Color(0xFFFFFFFF),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          print(value);
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(
                top: 14,
                right: 24,
                left: 24,
              ),
              child: Image.asset(
                'assets/home.png',
                width: 24,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(
                top: 14,
                right: 24,
                left: 24,
              ),
              child: Image.asset(
                'assets/icon_explorer.png',
                width: 24,
              ),
            ),
            label: "Explorer",
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(
                top: 14,
                right: 24,
                left: 24,
              ),
              child: Image.asset(
                'assets/icon_wishlist.png',
                width: 24,
              ),
            ),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(
                top: 14,
                right: 24,
                left: 24,
              ),
              child: Image.asset(
                'assets/image_profile.png',
                width: 24,
              ),
            ),
            label: "Profile",
          ),
        ],
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return Home();
        case 1:
          return Explorer();
        case 2:
          return Wishlist();
        case 3:
          return Profile();
        default:
          return Home();
      }
    }

    return Scaffold(
      bottomNavigationBar: bottomNavbar(),
      body: body(),
    );
  }
}
