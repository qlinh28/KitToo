import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GNav(
      backgroundColor: Colors.orange.shade400,
      color: Colors.white,
      activeColor: Colors.white,
      tabBackgroundColor: Colors.orange.shade500,
      gap: 8,
      padding: const EdgeInsets.all(16),
      tabMargin: const EdgeInsetsDirectional.all(8),
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
    );
  }
}