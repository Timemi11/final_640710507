import 'package:dio/dio.dart';

class ApiCaller {
  static const baseUrl =
      'https://cpsu-test-api.herokuapp.com/api/1_2566/weather/current?city=';
  static final _dio = Dio(BaseOptions(responseType: ResponseType.plain));

  Future<String> get(String endpoint, {Map<String, dynamic>? params}) async {
    try {
      final response =
          await _dio.get('$baseUrl/$endpoint', queryParameters: params);
      return response.data.toString();
    } catch (e) {
      // TODO:
      rethrow;
    }
  }
}
