import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class BadgesPage extends StatefulWidget {
  const BadgesPage({Key? key}) : super(key: key);

  @override
  _BadgesPageState createState() => _BadgesPageState();
}

class _BadgesPageState extends State<BadgesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GFBadge(
                child: Text("0"),
                size: GFSize.SMALL,
              ),
              SizedBox(height: 8),
              GFBadge(
                child: Text("0"),
                size: GFSize.MEDIUM,
              ),
              SizedBox(height: 8),
              GFBadge(
                child: Text("0"),
                size: GFSize.LARGE,
              ),
              SizedBox(height: 8),
              GFButtonBadge(
                onPressed: () {},
                text: "Enable",
                icon: GFBadge(
                  child: Text("12"),
                ),
              ),
              SizedBox(height: 8),
              GFButtonBadge(
                onPressed: null,
                text: "Disable",
                icon: GFBadge(
                  child: Text("12"),
                ),
              ),
              SizedBox(height: 8),
              GFButtonBadge(
                type: GFButtonType.outline,
                onPressed: () {},
                text: "Outline",
                icon: GFBadge(
                  child: Text("12"),
                ),
              ),
              SizedBox(height: 8),
              GFButtonBadge(
                type: GFButtonType.outline2x,
                onPressed: () {},
                text: "Outline",
                icon: GFBadge(
                  child: Text("12"),
                ),
              ),
              SizedBox(height: 8),
              GFButtonBadge(
                onPressed: () {},
                text: "Small",
                icon: GFBadge(
                  child: Text("12"),
                ),
                size: GFSize.SMALL,
              ),
              SizedBox(height: 8),
              GFButtonBadge(
                onPressed: () {},
                text: "Medium",
                icon: GFBadge(
                  child: Text("12"),
                ),
                size: GFSize.MEDIUM,
              ),
              SizedBox(height: 8),
              GFButtonBadge(
                onPressed: () {},
                text: "Large",
                icon: GFBadge(
                  child: Text("12"),
                ),
                size: GFSize.LARGE,
              ),
              SizedBox(height: 8),
              GFIconBadge(
                child: GFIconButton(
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit),
                  size: GFSize.SMALL,
                ),
                counterChild: GFBadge(
                  child: Text("12"),
                ),
              ),
              SizedBox(height: 8),
              GFIconBadge(
                child: GFIconButton(
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit),
                  type: GFButtonType.outline,
                  size: GFSize.SMALL,
                ),
                counterChild: GFBadge(
                  child: Text("12"),
                ),
              ),
              SizedBox(height: 8),
              GFIconBadge(
                child: GFIconButton(
                  onPressed: (){},
                  icon: Icon(Icons.ac_unit),
                  shape: GFIconButtonShape.pills,
                  size: GFSize.SMALL,
                ),
                counterChild: GFBadge(
                  child: Text("12"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
