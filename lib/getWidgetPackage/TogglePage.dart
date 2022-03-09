import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';

import 'ImageAssert.dart';

class TogglePage extends StatefulWidget {
  const TogglePage({Key? key}) : super(key: key);

  @override
  _TogglePageState createState() => _TogglePageState();
}

class _TogglePageState extends State<TogglePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: GFDrawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            GFDrawerHeader(
              currentAccountPicture: const GFAvatar(
                radius: 80.0,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
              ),
              otherAccountsPictures: const <Widget>[
                Image(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg"),
                  fit: BoxFit.cover,
                ),
                GFAvatar(
                  child: Text("ab"),
                )
              ],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text('user name'),
                  Text('user@userid.com'),
                ],
              ),
            ),
            const ListTile(
              title: Text('Item 1'),
              onTap: null,
            ),
            const ListTile(
              title: Text('Item 2'),
              onTap: null,
            ),
          ],
        ),
      ),
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            GFToggle(
              onChanged: (val) {},
              value: true,
            ),
            const SizedBox(height: 20),
            GFToggle(
              onChanged: (val) {},
              value: true,
              type: GFToggleType.ios,
            ),
            const SizedBox(height: 20),
            GFToggle(
              onChanged: (val) {},
              value: true,
              type: GFToggleType.square,
            ),
            const SizedBox(height: 20),
            GFToggle(
              onChanged: (value) {},
              value: true,
              type: GFToggleType.custom,
            ),
            const SizedBox(height: 10),
            GFTypography(
              text: 'GF Header Typo1',
              type: GFTypographyType.typo1,
              icon: const Icon(Icons.send),
              backgroundImage: AssetImage(ImageAssert.googleImage),
            ),
            const SizedBox(height: 10),
            GFTypography(
              text: 'GF Header Typo2',
              type: GFTypographyType.typo2,
              icon: const Icon(Icons.send),
              backgroundImage: AssetImage(ImageAssert.googleImage),
            ),
            const SizedBox(height: 10),
            GFTypography(
              text: 'GF Header Typo3',
              type: GFTypographyType.typo3,
              icon: const Icon(Icons.send),
              backgroundImage: AssetImage(ImageAssert.googleImage),
            ),
            const SizedBox(height: 10),
            GFTypography(
              text: 'GF Header Typo4',
              type: GFTypographyType.typo4,
              icon: const Icon(Icons.send),
              backgroundImage: AssetImage(ImageAssert.googleImage),
            ),
            const SizedBox(height: 10),
            GFTypography(
              text: 'GF Header Typo5',
              type: GFTypographyType.typo5,
              icon: const Icon(Icons.send),
              backgroundImage: AssetImage(ImageAssert.googleImage),
            ),
            const SizedBox(height: 10),
            GFTypography(
              text: 'GF Header Typo6',
              type: GFTypographyType.typo6,
              icon: const Icon(Icons.send),
              backgroundImage: AssetImage(ImageAssert.googleImage),
            ),
          ],
        ),
      ),
    );
  }
}
