import 'package:dio/dio.dart';

class APIManager {
  APIManager._internal();
  factory APIManager() => _instance;
  static final APIManager _instance = APIManager._internal();

  final Dio _dio = Dio();
  getHttp(String url, Map<String, dynamic>? data) async {
    try {
      Response response = await _dio.get(url, queryParameters: data);
      return response;
    } on DioError {
      rethrow;
    }
  }
}
