import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GFAppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: GFSegmentTabs(
          height: 40.0,
          tabController: tabController,
          tabBarColor: GFColors.LIGHT,
          labelColor: GFColors.LIGHT,
          unselectedLabelColor: GFColors.DARK,
          indicatorColor: Colors.black,
          indicator: const BoxDecoration(
            color: GFColors.DARK,
          ),
          indicatorPadding: const EdgeInsets.all(8.0),
          indicatorWeight: 2.0,
          border: Border.all(
            color: Colors.white,
            width: 1.0,
          ),
          length: 3,
          tabs: const [
            Text(
              "Tab1",
            ),
            Text(
              "Tab2",
            ),
            Text(
              "Tab3",
            ),
          ],
        ),
      ),
      body: GFTabBarView(
        controller: tabController,
        height: MediaQuery.of(context).size.height,
        children: const [
          Center(
            child: Text('Tab 1'),
          ),
          Center(
            child: Text('Tab 2'),
          ),
          Center(
            child: Text('Tab 3'),
          ),
        ],
      ),
    );
  }
}
