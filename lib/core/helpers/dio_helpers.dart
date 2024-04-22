import 'package:api/core/end_points/end_points.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Content-Type': 'application/json',
      },
    ));
  }

  Future<Response> getData({
    required String endPoints,
    Map<String, dynamic>? queryParameters,
    String? token,
  }) async {
    try {
      dio.options.headers = {
        'Authorization': 'Bearer ${token ?? ''}',
      };
      final Response response = await dio.get(
        endPoints,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
