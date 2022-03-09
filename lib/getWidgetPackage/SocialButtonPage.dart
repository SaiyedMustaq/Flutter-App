import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'ImageAssert.dart';

class SocialButtonPage extends StatefulWidget {
  const SocialButtonPage({Key? key}) : super(key: key);

  @override
  _SocialButtonPageState createState() => _SocialButtonPageState();
}

class _SocialButtonPageState extends State<SocialButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          GFButton(
            type: GFButtonType.solid,
            fullWidthButton: true,
            animationDuration: const Duration(seconds: 3),
            elevation: 5.5,
            icon: Image.asset(ImageAssert.googleImage),
            onPressed: () {},
            size: GFSize.LARGE,
            text: 'Google',
            textStyle: const TextStyle(
              fontSize: 16,
              color: GFColors.DARK,
            ),
            color: Colors.white,
            blockButton: true,
          ),
          GFButton(
            fullWidthButton: true,
            animationDuration: const Duration(seconds: 3),
            elevation: 5.5,
            icon: Image.asset(ImageAssert.facebookImage),
            onPressed: () {},
            size: GFSize.LARGE,
            text: 'Facebook',
            textStyle: const TextStyle(
              fontSize: 16,
              color: GFColors.DARK,
            ),
            color: Colors.white,
            blockButton: true,
          ),
          GFButton(
            fullWidthButton: true,
            animationDuration: const Duration(seconds: 3),
            elevation: 5.5,
            icon: Image.asset(ImageAssert.instagramImage),
            onPressed: () {},
            size: GFSize.LARGE,
            text: 'Instagram',
            textStyle: const TextStyle(
              fontSize: 16,
              color: GFColors.DARK,
            ),
            color: Colors.white,
            blockButton: true,
          ),
          GFButton(
            fullWidthButton: true,
            animationDuration: const Duration(seconds: 3),
            elevation: 5.5,
            icon: Image.asset(ImageAssert.linkdinImage),
            onPressed: () {},
            size: GFSize.LARGE,
            text: 'Linkdin',
            textStyle: const TextStyle(
              fontSize: 16,
              color: GFColors.DARK,
            ),
            color: Colors.white,
            blockButton: true,
          ),
          GFButton(
            fullWidthButton: true,
            animationDuration: const Duration(seconds: 3),
            elevation: 5.5,
            icon: Image.asset(ImageAssert.twiterImage),
            onPressed: () {},
            size: GFSize.LARGE,
            text: 'Twitter',
            textStyle: const TextStyle(
              fontSize: 16,
              color: GFColors.DARK,
            ),
            color: Colors.white,
            blockButton: true,
          ),
          GFButton(
            fullWidthButton: true,
            animationDuration: const Duration(seconds: 3),
            elevation: 5.5,
            icon: Image.asset(ImageAssert.gitHubImage),
            onPressed: () {},
            size: GFSize.LARGE,
            text: 'Github',
            textStyle: const TextStyle(
              fontSize: 16,
              color: GFColors.DARK,
            ),
            color: Colors.white,
            blockButton: true,
          ),
        ],
      ),
    );
  }
}
