import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class FloatingWidgetPage extends StatefulWidget {
  const FloatingWidgetPage({Key? key}) : super(key: key);

  @override
  _FloatingWidgetPageState createState() => _FloatingWidgetPageState();
}

class _FloatingWidgetPageState extends State<FloatingWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
                onTap: () => GFToast.showToast(
                      'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                      context,
                    ),
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(7)),
                      color: GFColors.DARK,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.40),
                            blurRadius: 5)
                      ]),
                  child: GFListTile(
                      color: GFColors.DARK,
                      title: const Text(
                        'Show Toast',
                        style: TextStyle(color: GFColors.WHITE),
                      ),
                      icon: Icon(
                        CupertinoIcons.forward,
                        color: GFColors.SUCCESS,
                      )),
                )),
            GestureDetector(
                onTap: () => GFToast.showToast(
                    'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                    context,
                    toastPosition: GFToastPosition.BOTTOM,
                    textStyle: TextStyle(fontSize: 16, color: GFColors.DARK),
                    backgroundColor: GFColors.LIGHT,
                    trailing: Icon(
                      Icons.notifications,
                      color: GFColors.SUCCESS,
                    )),
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(7)),
                      color: GFColors.DARK,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.40),
                            blurRadius: 5)
                      ]),
                  child: GFListTile(
                      color: GFColors.DARK,
                      title: const Text(
                        'Show Toast with trailing',
                        style: TextStyle(color: GFColors.WHITE),
                      ),
                      icon: Icon(
                        CupertinoIcons.forward,
                        color: GFColors.SUCCESS,
                      )),
                )),
            GestureDetector(
                onTap: () => GFToast.showToast(
                      'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                      context,
                      toastPosition: GFToastPosition.BOTTOM,
                    ),
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(7)),
                      color: GFColors.DARK,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.40),
                            blurRadius: 5)
                      ]),
                  child: GFListTile(
                      color: GFColors.DARK,
                      title: const Text(
                        'Show Toast with toast position',
                        style: TextStyle(color: GFColors.WHITE),
                      ),
                      icon: Icon(
                        CupertinoIcons.forward,
                        color: GFColors.SUCCESS,
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
