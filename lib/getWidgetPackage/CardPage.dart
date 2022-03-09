import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  String url =
      'https://ik.imagekit.io/ionicfirebaseapp/getwidget/docs/tr:w-800,f-auto/Images_-_basic_3x_uHCFyLq7s.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              GFCard(
                boxFit: BoxFit.cover,
                image: Image.asset('your asset image'),
                title: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: NetworkImage(url),
                  ),
                  title: Text('Card Title'),
                  subTitle: Text('Card Sub Title'),
                ),
                content: Text("Some quick example text to build on the card"),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFButton(
                      onPressed: () {},
                      text: 'Buy',
                    ),
                    GFButton(
                      onPressed: () {},
                      text: 'Cancel',
                    ),
                  ],
                ),
              ),
              GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                image: Image.network(
                  url,
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: NetworkImage(url),
                  ),
                  titleText: 'Game Controllers',
                  subTitleText: 'PlayStation 4',
                ),
                content: Text("Some quick example text to build on the card"),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFAvatar(
                      backgroundColor: GFColors.PRIMARY,
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                    GFAvatar(
                      backgroundColor: GFColors.SECONDARY,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    GFAvatar(
                      backgroundColor: GFColors.SUCCESS,
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                showOverlayImage: true,
                imageOverlay: NetworkImage(url),
                title: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: NetworkImage(url),
                  ),
                  titleText: 'Game Controllers',
                  subTitleText: 'PlayStation 4',
                ),
                content: Text(
                  "Some quick example text to build on the card",
                  style: TextStyle(color: Colors.white),
                ),
                buttonBar: const GFButtonBar(
                  children: <Widget>[
                    GFAvatar(
                      backgroundColor: GFColors.PRIMARY,
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
