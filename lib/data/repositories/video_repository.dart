import 'package:aplicacao_base/data/interfaces/api_repository.interface.dart';
import 'package:aplicacao_base/data/interfaces/client.interface.dart';
import 'package:aplicacao_base/data/models/video.model.dart';
import 'package:dio/dio.dart';

class VideoRepository implements IApiRepository {
  final IClient client;

  VideoRepository({required this.client});

  @override
  Future<List> getDataList(String? path) async {
    Response response = await client.get(path);

    List<VideoModel> dataList = response.data['data']
        .map((dataElement) => VideoModel.fromMap(dataElement))
        .toList();

    return dataList;
  }
}
