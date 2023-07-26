import 'package:flutter/material.dart';
import 'package:video_widget/widget/video/video_player_widget.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [VideoPlayerWidget(videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')],
      ),
    ));
  }
}
