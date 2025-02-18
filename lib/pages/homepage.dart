import 'package:trendstep_mobile_appication/components/bottom_nav_bar.dart';
import 'package:trendstep_mobile_appication/pages/cart_page.dart';
import 'package:trendstep_mobile_appication/pages/settings.dart';
import 'package:trendstep_mobile_appication/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    //shop page
    ShopPage(),

    //cartpage
    CartPage(),

    //settings
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
