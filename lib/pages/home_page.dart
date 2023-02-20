import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:prm_project_kittoo/components/search_form.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener((_handleTabSelection));
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(45, 0, 45, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Discover',
                style: TextStyle(fontSize: 30),
              ),
              const SearchForm(),
              TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  labelStyle: const TextStyle(fontSize: 15),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 0),
                  indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(
                    width: 3,
                    color: Colors.black,
                  ), insets: EdgeInsets.symmetric(horizontal: 16)),
                  tabs: const  [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text: "Men",
                    ),
                    Tab(
                      text: "Women",
                    ),
                    Tab(
                      text: "Kid",
                    ),
                  ]),
              const SizedBox(height: 10),
              Center(
                  child: [
                Container(
                  color: Colors.black,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.red,
                ),
              ][_tabController.index])
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
