import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ListTilePage extends StatefulWidget {
  const ListTilePage({Key? key}) : super(key: key);

  @override
  _ListTilePageState createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  String url =
      "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const GFListTile(
                titleText: 'Title',
                subTitleText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing',
                icon: Icon(Icons.favorite),
              ),
              GFListTile(
                avatar: GFAvatar(
                  backgroundImage: NetworkImage(url),
                ),
                titleText: 'Title',
                subTitleText:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing',
                icon: const Icon(Icons.favorite),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
