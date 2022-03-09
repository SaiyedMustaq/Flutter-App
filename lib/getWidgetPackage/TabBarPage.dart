import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: GFTabBar(
        length: 3,
        controller: tabController,
        tabs: [
          Tab(
            icon: Icon(Icons.directions_bike),
            child: Text(
              "Tab1",
            ),
          ),
          Tab(
            icon: Icon(Icons.directions_bus),
            child: Text(
              "Tab2",
            ),
          ),
          Tab(
            icon: Icon(Icons.directions_railway),
            child: Text(
              "Tab3",
            ),
          ),
        ],
      ),
      body: Center(
        child: GFTabBarView(
          controller: tabController,
          children: <Widget>[
            Container(color: Colors.red),
            Container(color: Colors.green),
            Container(color: Colors.blue)
          ],
        ),
      ),
    );
  }
}
