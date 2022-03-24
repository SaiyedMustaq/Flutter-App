import 'package:flutter/material.dart';

class Ressos extends StatefulWidget {
  const Ressos({Key? key}) : super(key: key);

  @override
  _RessosState createState() => _RessosState();
}

class _RessosState extends State<Ressos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://media.istockphoto.com/photos/productivity-powered-by-digital-technology-picture-id1330965067?s=612x612',
            fit: BoxFit.fill,
          ),
          Row(
            children: const [
              Icon(
                Icons.add,
                color: Colors.black,
              )
            ],
          ),
        ],
      ),
    );
  }
}
