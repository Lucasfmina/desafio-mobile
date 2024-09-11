import 'package:aplicacao_base/data/models/location_info.model.dart';
import 'package:aplicacao_base/data/models/video_info.model.dart';

class VideoModel {
  String uri;
  String fileName;
  VideoInfoModel info;
  LocationInfoModel location;

  VideoModel(
      {required this.uri,
      required this.fileName,
      required this.info,
      required this.location});

  VideoModel.fromMap(Map<String, dynamic> map)
      : uri = map['uri'],
        fileName = map['fileName'],
        info = VideoInfoModel.fromMap(map['videoInfo']),
        location = LocationInfoModel.fromMap(map['locationInfo']);

  Map<String, dynamic> toMap() {
    return {
      "uri": uri,
      "fileName": fileName,
      "videoInfo": info,
      "locationInfo": location
    };
  }
}
