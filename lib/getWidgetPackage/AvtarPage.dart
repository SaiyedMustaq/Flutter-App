import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  _AvatarPageState createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
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
              const SizedBox(height: 8),
              const Text('Default'),
              GFAvatar(
                maxRadius: 50,
                minRadius: 25,
                backgroundImage: NetworkImage(url),
              ),
              const SizedBox(height: 8),
              const Text('Standard'),
              GFAvatar(
                  maxRadius: 50,
                  minRadius: 25,
                  backgroundImage: NetworkImage(url),
                  shape: GFAvatarShape.standard),
              const SizedBox(height: 8),
              const Text('Square'),
              GFAvatar(
                  maxRadius: 50,
                  minRadius: 25,
                  backgroundImage: NetworkImage(url),
                  shape: GFAvatarShape.square),
              const SizedBox(height: 8),
              const Text('Overlay'),
              GFImageOverlay(
                height: 100,
                width: 100,
                image: NetworkImage(url),
              ),
              const SizedBox(height: 8),
              const Text('Overlay Network'),
              GFImageOverlay(height: 100, width: 100, image: NetworkImage(url)),
              const SizedBox(height: 8),
              GFImageOverlay(
                height: 100,
                width: 100,
                child: const Center(
                  child: Text('Light Overlay',
                      style: TextStyle(color: GFColors.LIGHT)),
                ),
                image: NetworkImage(url),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.darken),
              ),
              const SizedBox(height: 8),
              const Text('Overlay Network Cover'),
              GFImageOverlay(
                height: 100,
                width: 100,
                shape: BoxShape.circle,
                image: NetworkImage(url),
                boxFit: BoxFit.cover,
              )
            ],
          ),
        ),
      ),
    );
  }
}
