import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AlertDialogPage extends StatefulWidget {
  const AlertDialogPage({Key? key}) : super(key: key);

  @override
  _AlertDialogPageState createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  Widget? alertWidget;
  bool showblur = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GFAppBar(
          leading: GFIconButton(
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
            onPressed: () {},
            type: GFButtonType.transparent,
          ),
          searchBar: true,
          title: Text("GF Appbar"),
          actions: <Widget>[
            GFIconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () {},
              type: GFButtonType.transparent,
            ),
          ],
        ),
        body: GFFloatingWidget(
            child: GFAlert(
          title: 'Welcome !',
          content:
              'Get Flutter is one of the largest Flutter open-source UI library for mobile or web apps with  1000+ pre-built reusable widgets.',
          type: GFAlertType.rounded,
          bottombar: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              GFButton(
                onPressed: () {
                  setState(() {
                    normalShowDialog();
                    showblur = false;
                  });
                },
                child:
                    const Text('Skip', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(width: 5),
              GFButton(
                child:
                    const Text('Skip', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  setState(() {
                    showblur = false;
                  });
                },
                shape: GFButtonShape.pills,
                icon: Icon(Icons.keyboard_arrow_right, color: Colors.white),
              )
            ],
          ),
        )));
  }

  Widget normalShowDialog() {
    return GFAlert(
      alignment: Alignment.center,
      backgroundColor: Colors.white,
      title: 'Welcome!',
      content:
          'Get Flutter is one of the largest Flutter open-source UI library for mobile or web apps with  1000+ pre-built reusable widgets.',
      type: GFAlertType.rounded,
      bottombar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          GFButton(
            onPressed: () {
              setState(() {
                alertWidget = null;
                showblur = false;
              });
            },
            color: GFColors.LIGHT,
            child: const Text(
              'Close',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget advanceShowDialog() {
    return Text('data');
  }
}
