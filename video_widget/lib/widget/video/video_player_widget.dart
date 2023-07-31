import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:video_widget/widget/video/player_controller.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;
  const VideoPlayerWidget({super.key, required this.videoUrl});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  final PlayerController _playerController = PlayerController();

  @override
  void initState() {
    super.initState();
    // _playerController = Get.put(PlayerController(), tag: widget.videoUrl);
    _playerController.initializeVideoPlayerController(widget.videoUrl);
  }

  @override
  void dispose() {
    super.dispose();
    _playerController.disposeVideo();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: _playerController.aspectRatio,
        child: VideoPlayer(_playerController.videoPlayerController),
      ),
    );
  }
}
