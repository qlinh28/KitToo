import 'package:flutter/material.dart';
import 'package:prm_project_kittoo/components/my_booking/cancelled_card.dart';
import 'package:prm_project_kittoo/components/my_booking/completed_card.dart';
import 'package:prm_project_kittoo/components/my_booking/pending_card.dart';
import 'package:prm_project_kittoo/components/my_booking/upcoming_card.dart';

class HistoryScreen extends StatefulWidget {
  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>
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
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "My Orders",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.orange.shade400,
                  indicator: UnderlineTabIndicator(
                      borderSide:
                          BorderSide(width: 2, color: Colors.orange.shade400)),
                  tabs: [
                    Tab(text: 'Pending'),
                    Tab(text: 'Upcoming'),
                    Tab(text: 'Completed'),
                    Tab(text: 'Cancelled'),
                  ]),
              Container(
                  child: [
                PendingCard(),
                UpcomingCard(),
                CompletedCard(),
                CancelledCard(),
              ][_tabController.index])
            ],
          ),
        )),
      ),
    );
  }
}
