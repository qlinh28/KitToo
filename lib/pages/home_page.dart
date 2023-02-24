import 'package:flutter/material.dart';
import 'package:prm_project_kittoo/components/footer.dart';
import 'package:prm_project_kittoo/components/home/item_card.dart';
import 'package:prm_project_kittoo/components/home/search_form.dart';

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
    _tabController = TabController(length: 5, vsync: this, initialIndex: 0);
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
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: ListView(
            children: [
              const SizedBox(height: 15),

              const Text(
                'Discover',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              const SearchForm(),

              TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  indicatorPadding: const EdgeInsets.symmetric(vertical: 8.0),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 15),
                  tabs: const [
                    Tab(text: 'All'),
                    Tab(text: 'preparing food'),
                    Tab(text: 'cooking food'),
                    Tab(text: 'storing food'),
                    Tab(text: 'tum lum food'),
                  ]),
              Center(
                child: [
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                ][_tabController.index],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
