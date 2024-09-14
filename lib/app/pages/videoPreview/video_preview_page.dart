import 'package:aplicacao_base/app/pages/controller.dart';
import 'package:aplicacao_base/data/models/video.model.dart';
import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

Controller controller = Controller();
VideoModel video = controller.pullVideo();

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({super.key});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late CustomVideoPlayerController _customVideoController;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imagens"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32, bottom: 0, left: 32, right: 32),
        child: Center(
          child: Column(
            children: [
              Text(video.info.title),
              Text(video.info.subtitle),
              CustomVideoPlayer(
                  customVideoPlayerController: _customVideoController),
            ],
          ),
        ),
      ),
    );
  }

  void initializeVideoPlayer() {
    VideoPlayerController _videoController =
        VideoPlayerController.contentUri(Uri.parse(video.uri))
          ..initialize().then((value) {
            setState(() {});
          });
    _customVideoController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoController);
  }
}
