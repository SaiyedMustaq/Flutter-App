import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'GetX/CounterPage.dart';
import 'GetX/GetXApiCall.dart';
import 'GetX/GetXPagination.dart';
import 'GetX/GetxApiCallTwo.dart';
import 'GetX/loginCall/LognPage.dart';
import 'GetX/onlineShop/ui/ProductOverviewPage.dart';
import 'GetX/shopWitGetX/ui/ShopWithGetXPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Work',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Work',
      ),
    );
  }
}

class SwitchX extends GetxController {
  RxBool on = false.obs; // our observable
  // swap true/false & save it to observable
  void toggle() => on.value = on.value ? false : true;
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SwitchX switchX = Get.put(SwitchX());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              icon: Get.isDarkMode
                  ? const Icon(Icons.wb_sunny)
                  : const Icon(Icons.nightlight_round))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(() => Switch(
                  onChanged: (value) {
                    switchX.toggle();
                    Get.changeTheme(
                        Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                  },
                  value: switchX.on.value,
                )),
            ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CounterPage()));
                },
                title: const Text('Counter Page')),
            ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GetXapiCallPage()));
                },
                title: const Text('GetX ApiCall Page')),
            ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GetxApiCallTwo()));
                },
                title: const Text('GetX ApiCall Two')),
            ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GetXPaginationPage()));
                },
                title: const Text('GetX Pagination')),
            ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductOverviewPage()));
                },
                title: const Text('online shop')),
            ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShopWithGetXPage()));
                },
                title: const Text('Shop With GetX')),
            ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                title: const Text('Login Call')),
          ],
        ),
      ),
    );
  }

  void callFun() {}
}
