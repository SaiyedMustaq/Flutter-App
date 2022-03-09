import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AccordionPage extends StatefulWidget {
  const AccordionPage({Key? key}) : super(key: key);

  @override
  _AccordionPageState createState() => _AccordionPageState();
}

class _AccordionPageState extends State<AccordionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: const [
            GFAccordion(
                collapsedTitleBackgroundColor: Colors.white,
                contentBackgroundColor: Colors.white,
                expandedTitleBackgroundColor: Colors.white,
                title: 'GF Accordion',
                content:
                    'GetFlutter is an open source library that comes with pre-build 1000+ UI components.'),
            GFAccordion(
                collapsedTitleBackgroundColor: Colors.white,
                contentBackgroundColor: Colors.white,
                expandedTitleBackgroundColor: Colors.white,
                title: 'GF Accordion',
                content:
                    'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize)),
            GFAccordion(
                collapsedTitleBackgroundColor: Colors.white,
                contentBackgroundColor: Colors.white,
                expandedTitleBackgroundColor: Colors.white,
                title: 'GF Accordion',
                content:
                    'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                collapsedIcon: Text('Show'),
                expandedIcon: Text('Hide')),
          ],
        ),
      ),
    );
  }
}
