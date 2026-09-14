import 'package:dio/dio.dart';
import 'package:safedealz_store_manager/data/services/token_store.dart';

class SessionInterceptor extends Interceptor {
  SessionInterceptor(this._tokens);
  final TokenStore _tokens;
  late Dio client;
  Future<String?> Function()? refresh;
  Future<void> Function(String code)? terminal;
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _tokens.readAccess();
    if (token != null) options.headers['Authorization'] = 'Bearer $token';
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final error = err;
    final data = error.response?.data;
    final body = data is Map ? data['error'] : null;
    final code = body is Map ? body['code']?.toString() : null;
    final isAuth =
        error.requestOptions.path.contains('/auth/login') ||
        error.requestOptions.path.contains('/auth/refresh');
    if (code == 'ACCOUNT_INACTIVE' || code == 'SESSION_REUSED') {
      await _tokens.clear();
      await terminal?.call(code ?? 'SESSION_INVALID');
      handler.next(error);
      return;
    }
    if (error.response?.statusCode == 401 &&
        !isAuth &&
        error.requestOptions.extra['retried'] != true &&
        refresh != null) {
      String? token;
      try {
        token = await refresh!.call();
      } catch (_) {
        await _tokens.clear();
        await terminal?.call('SESSION_INVALID');
        handler.next(error);
        return;
      }
      if (token != null) {
        final options = error.requestOptions;
        options.extra['retried'] = true;
        options.headers['Authorization'] = 'Bearer $token';
        try {
          handler.resolve(await client.fetch(options));
          return;
        } catch (_) {}
      }
    }
    handler.next(error);
  }
}
