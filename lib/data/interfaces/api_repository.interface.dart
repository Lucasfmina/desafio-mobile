const String API_URL = "http://10.0.2.2:3001";

abstract class IApiRepository {
  Future<List<dynamic>> getDataList(String? path);
}
