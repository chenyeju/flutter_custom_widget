import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class PlayerController extends GetxController {
  late VideoPlayerController videoPlayerController;

  double aspectRatio = 16.0 / 9.0;

  initializeVideoPlayerController(String videoUrl) {
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(videoUrl))
      ..initialize().then((_) {
        videoPlayerController.play();
        update();
      });
  }

  @override
  void onClose() {
    super.onClose();
    videoPlayerController.dispose();
  }
}
