import 'package:aplicacao_base/data/models/video.model.dart';

class Controller {
  static final Controller instance = Controller._internal();
  late VideoModel video;

  VideoModel pullVideo() {
    return video;
  }

  void pushVideo(VideoModel video) {
    this.video = video;
  }

  Controller._internal();

  factory Controller() {
    return instance;
  }
}
