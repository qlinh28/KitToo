import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:prm_project_kittoo/pages/cart_page.dart';
import 'package:prm_project_kittoo/pages/home_page.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectedIndex = 0;

  static final List<Widget> _screenOptions = <Widget>[
    const HomePage(),
    const CartScreen(),
    const CartScreen(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screenOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        child: SafeArea(
            child: GNav(
          backgroundColor: Colors.orange.shade400,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.orange.shade500,
          gap: 8,
          padding: const EdgeInsets.all(16),
          tabMargin: const EdgeInsetsDirectional.all(8),
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.perm_contact_calendar,
              text: 'History',
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: 'Cart',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
        )),
      ),
    );
  }
}
