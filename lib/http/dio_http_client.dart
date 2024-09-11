import 'package:aplicacao_base/data/interfaces/client.interface.dart';
import 'package:aplicacao_base/http/exceptions.dart';
import 'package:dio/dio.dart';

class DioHttpClient implements IClient {
  final Dio client;
  final String url;

  DioHttpClient({required this.url}) : client = Dio(BaseOptions(baseUrl: url));

  @override
  Future get(String? path) async {
    Response response = await client.get(url + (path ?? ""));

    if (response.statusCode == 202) {
      return response;
    } else if (response.statusCode == 400) {
      throw MessageNotFoundException("Mensagem não encontrada!");
    } else if (response.statusCode == 500) {
      throw ServerErrorException("Erro do Servidor");
    }
  }
}
