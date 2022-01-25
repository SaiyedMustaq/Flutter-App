import 'package:flutter/material.dart';

import 'PageFive.dart';
import 'PageFour.dart';
import 'PageOne.dart';
import 'PageThree.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('PAGE 2'),
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PageOne()));
              },
              title: const Text('Goto Page 1')),
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PageThree()));
              },
              title: const Text('Goto Page 3')),
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PageFour()));
              },
              title: const Text('Goto Page 4')),
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PageFive()));
              },
              title: const Text('Goto Page 5')),
        ],
      ),
    );
  }
}
