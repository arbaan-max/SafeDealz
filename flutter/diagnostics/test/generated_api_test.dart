import 'dart:async';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_diagnostics/core/network/dio_factory.dart';
import 'package:safedealz_diagnostics/data/api/clients/system_client.dart';
import 'package:safedealz_diagnostics/data/api/clients/organization_client.dart';

void main() {
  test('DioFactory applies the shared API configuration', () {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');

    expect(dio.options.baseUrl, 'https://api.example.test/v1');
    expect(dio.options.connectTimeout, const Duration(seconds: 10));
    expect(dio.options.headers[Headers.acceptHeader], Headers.jsonContentType);
  });

  test('generated Dio client deserializes the health contract', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _HealthAdapter();

    final response = await SystemClient(dio).getHealth();

    expect(response.success, isTrue);
    expect(response.data.status, 'ok');
  });

  test('generated organization client deserializes scoped chain lists', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _ChainAdapter();
    final response = await OrganizationClient(dio).listChains();
    expect(response.success, isTrue);
    expect(response.data.single.code, 'PAI');
  });
}

final class _HealthAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'GET');
    expect(options.uri.path, '/v1/health');

    return ResponseBody.fromString(
      '{"success":true,"data":{"status":"ok"}}',
      200,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

final class _ChainAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'GET');
    expect(options.uri.path, '/v1/chains');
    return ResponseBody.fromString(
      '{"success":true,"data":[{"id":"1","name":"PAI","code":"PAI","active":true,"branchCount":1}]}',
      200,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}
