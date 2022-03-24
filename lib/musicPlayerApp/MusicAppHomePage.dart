import 'package:flutter/material.dart';

import 'Resso.dart';

class MusicPlayerHomePage extends StatefulWidget {
  const MusicPlayerHomePage({Key? key}) : super(key: key);

  @override
  _MusicPlayerHomePageState createState() => _MusicPlayerHomePageState();
}

class _MusicPlayerHomePageState extends State<MusicPlayerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music Player App'),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (contex) => const Ressos()));
            },
            title: const Text('Resso'),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Spotify'),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Jio Music'),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Gaana'),
          ),
        ],
      ),
    );
  }
}
