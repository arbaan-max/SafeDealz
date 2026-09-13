import 'package:dio/dio.dart';
import 'package:safedealz_diagnostics/core/network/api_config.dart';

abstract final class DioFactory {
  static Dio create({
    String? baseUrl,
    Iterable<Interceptor> interceptors = const <Interceptor>[],
  }) {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: baseUrl ?? ApiConfig.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        responseType: ResponseType.json,
        headers: const <String, String>{
          Headers.acceptHeader: Headers.jsonContentType,
          Headers.contentTypeHeader: Headers.jsonContentType,
        },
      ),
    );

    dio.interceptors.addAll(interceptors);
    return dio;
  }
}
