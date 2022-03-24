import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerHomePage extends StatefulWidget {
  const VideoPlayerHomePage({Key? key}) : super(key: key);

  @override
  _VideoPlayerHomePageState createState() => _VideoPlayerHomePageState();
}

class _VideoPlayerHomePageState extends State<VideoPlayerHomePage> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(
        'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4')
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController.play();
      });
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: VideoPlayer(_videoPlayerController),
    );
  }
}
