import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(45, 0, 45, 0),
        child: SafeArea(
          child: Column(
            children: const [
              Text('Discover'),
              Text('hellodsadsadsadsad')
              // Row(
              //   children: [
              //     Container(
              //       height: double.infinity,
              //       decoration: BoxDecoration(
              //         color: Colors.grey.shade300,
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       child: Row(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: const [
              //           Icon(Icons.search),
              //           Text(
              //             'Search anything',
              //           ),
              //         ],
              //       ),
              //     ),
              //     ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //           backgroundColor: Colors.black, // background
              //           foregroundColor: Colors.white, // foreground
              //         ),
              //         onPressed: () {},
              //         child: const Icon(Icons.filter_list)),
              //   ],
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GNav(
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
      ),
    );
  }
}
