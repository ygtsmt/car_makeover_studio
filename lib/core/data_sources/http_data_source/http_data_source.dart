import "package:car_makeover_studio/core/enums.dart";
import "package:dio/dio.dart";
import "package:injectable/injectable.dart";

@singleton
class HttpDataSource {
  HttpDataSource(this._dio);
  final Dio _dio;
  final HttpHelper _httpHelper = HttpHelper();

  Future<Response<dynamic>> request(
    final RequestMethod method,
    final String path, {
    final dynamic data,
  }) {
    try {
      return _httpHelper.connect(HttpType.get, url: '/market/GetLastCoins');
    } catch (e) {
      rethrow;
    }
  }
}

enum HttpType { get, post, patch, delete }

class HttpHelper {
  static Dio dio = Dio(
    BaseOptions(
      contentType: 'application/json',
      baseUrl: "https://bff.arbitex.com/",
      // "https://node1.modulusexchange.com",
    ),
  );

  Future<Response> connect(HttpType type,
      {required String url, Object? data, String? contentType, Map<String, dynamic>? headers}) async {
    Response response;
    switch (type) {
      case HttpType.get:
        response = await dio.get(
          url,
          data: data,
          options: Options(headers: headers, contentType: contentType),
        );
        break;
      case HttpType.post:
        response = await dio.post(url, data: data, options: Options(headers: headers, contentType: contentType));
        break;
      case HttpType.patch:
        response = await dio.patch(url, data: data, options: Options(headers: headers, contentType: contentType));
        break;
      case HttpType.delete:
        response = await dio.delete(url, data: data, options: Options(headers: headers, contentType: contentType));
        break;
    }
    return response;
  }
}
