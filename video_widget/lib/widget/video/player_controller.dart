import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class PlayerController {
  late VideoPlayerController videoPlayerController;

  double aspectRatio = 16.0 / 9.0;

  initializeVideoPlayerController(String videoUrl) {
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(videoUrl))
      ..initialize().then((_) {
        videoPlayerController.play();
      });
  }

  disposeVideo() {
    videoPlayerController.dispose();
  }
}
