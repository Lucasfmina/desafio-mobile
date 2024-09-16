import 'package:aplicacao_base/app/pages/controller.dart';
import 'package:aplicacao_base/data/models/video.model.dart';
import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

Controller controller = Controller();

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({super.key});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late CustomVideoPlayerController _customVideoController;
  late VideoModel video;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Imagens",
          style:
              TextStyle(color: Color(0xff001f60), fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32, bottom: 0, left: 32, right: 32),
        child: Center(
          child: Column(
            children: [
              Text(
                video.location.name,
                style: const TextStyle(
                    color: Color(0xff001f60), fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 15),
              Text(
                video.location.address.address,
                style: const TextStyle(
                    color: Color(0xff4fff95), fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 15),
              isLoading
                  ? const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(),
                    )
                  : CustomVideoPlayer(
                      customVideoPlayerController: _customVideoController)
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _customVideoController.dispose();
    super.dispose();
  }

  void initializeVideoPlayer() {
    video = controller.pullVideo();
    VideoPlayerController videoController =
        VideoPlayerController.contentUri(Uri.parse(video.uri))
          ..initialize().then((value) {
            setState(() {
              isLoading = false;
            });
          });
    _customVideoController = CustomVideoPlayerController(
        context: context, videoPlayerController: videoController);
  }
}
