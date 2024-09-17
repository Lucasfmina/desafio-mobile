import 'package:aplicacao_base/data/interfaces/api_repository.interface.dart';
import 'package:aplicacao_base/data/interfaces/client.interface.dart';
import 'package:aplicacao_base/data/models/video.model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class VideoRepository  with ChangeNotifier implements IApiRepository {
  final IClient client;
  final List<VideoModel> videos = [];

  VideoRepository({required this.client});

  @override
  void loadRepository(String? path) async {

    Response response = await client.get(path);

    videos.addAll( (response.data['data'] as List<dynamic>)
        .map((dataElement) => VideoModel.fromMap(dataElement))
        .toList());
    notifyListeners();
  }
}
