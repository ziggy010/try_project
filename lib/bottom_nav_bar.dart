import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:try_project/Screens/farmscreen.dart';
import 'package:try_project/Screens/hotproductsscreen.dart';
import 'package:try_project/pages/product_rate.dart';
import 'home.dart';
import 'package:try_project/pages/Profile_page.dart';
import 'package:try_project/pages/Videos_page.dart';
import 'package:try_project/pages/orders_page.dart';

import 'home.dart';

class BottomNavbar extends StatefulWidget {
  static const String id = 'bottomNavbar';

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Color selectedBackgroundColor = Color(0xFFF2F6FD);
  Color selectedIconColor = Color(0xFF28A745);

  Color unSelectedBackgroundColor = Colors.white;
  Color unSelectedIconColor = Color(0xFFB2B2B3);

  final List<Widget> pages = [
    Home(),
    OrderPage(),
    ProductRate(),
    VideoPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: selectedIconColor,
        selectedLabelStyle: TextStyle(
          color: selectedIconColor,
          fontFamily: 'poppins',
          fontSize: 10.sp,
        ),
        unselectedLabelStyle: TextStyle(
          color: unSelectedIconColor,
          fontFamily: 'poppins',
          fontSize: 10.sp,
        ),
        items: [
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: _currentIndex == 0
                  ? selectedBackgroundColor
                  : unSelectedBackgroundColor,
              child: Image.asset(
                'lib/icons/Vector.png',
                color: _currentIndex == 0
                    ? selectedIconColor
                    : unSelectedIconColor,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: _currentIndex == 1
                  ? selectedBackgroundColor
                  : unSelectedBackgroundColor,
              child: Image.asset(
                'lib/icons/Cart.png',
                color: _currentIndex == 1
                    ? selectedIconColor
                    : unSelectedIconColor,
              ),
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: _currentIndex == 2
                  ? selectedBackgroundColor
                  : unSelectedBackgroundColor,
              child: Image.asset(
                'lib/icons/dollar.png',
                color: _currentIndex == 2
                    ? selectedIconColor
                    : unSelectedIconColor,
              ),
            ),
            label: 'Prices',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: _currentIndex == 3
                  ? selectedBackgroundColor
                  : unSelectedBackgroundColor,
              child: Image.asset(
                'lib/icons/Play.png',
                color: _currentIndex == 3
                    ? selectedIconColor
                    : unSelectedIconColor,
              ),
            ),
            label: 'Videos',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: _currentIndex == 4
                  ? selectedBackgroundColor
                  : unSelectedBackgroundColor,
              child: Image.asset(
                'lib/icons/User.png',
                color: _currentIndex == 4
                    ? selectedIconColor
                    : unSelectedIconColor,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
