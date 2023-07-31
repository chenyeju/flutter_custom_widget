import 'package:flutter/material.dart';
import 'package:video_widget/widget/video/video_player_widget.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  List<String> videoList = [
    'http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4',
    'http://www.w3school.com.cn/example/html5/mov_bbb.mp4',
    'https://www.w3schools.com/html/movie.mp4',
    'http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4',
    'https://media.w3.org/2010/05/sintel/trailer.mp4'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        ...videoList.map((e) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: VideoPlayerWidget(videoUrl: e),
            )),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: VideoPlayerWidget(videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
        ),
      ]),
    ));
  }
}
