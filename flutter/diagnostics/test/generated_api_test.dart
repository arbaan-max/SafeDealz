import 'dart:async';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_diagnostics/core/network/dio_factory.dart';
import 'package:safedealz_diagnostics/data/api/clients/system_client.dart';
import 'package:safedealz_diagnostics/data/api/clients/organization_client.dart';
import 'package:safedealz_diagnostics/data/api/clients/operations_client.dart';

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

  test('generated organization client deserializes manager lists', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _ManagerAdapter();
    final response = await OrganizationClient(dio).listManagers();
    expect(response.data.single.role.toJson(), 'store_manager');
    expect(response.data.single.branchId, 'b1');
  });

  test('generated operations client deserializes the trade-in catalog', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _CatalogAdapter();
    final response = await OperationsClient(dio).getCatalog();
    expect(response.data.storages, contains('128 GB'));
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

final class _ManagerAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'GET');
    expect(options.uri.path, '/v1/managers');
    return ResponseBody.fromString(
      '{"success":true,"data":[{"id":"m1","email":"kavya@test.dev","role":"store_manager","displayName":"Kavya","active":true,"branchId":"b1","assignedBranchIds":["b1"],"activeSessionCount":1}]}',
      200,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

final class _CatalogAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'GET');
    expect(options.uri.path, '/v1/catalog');
    return ResponseBody.fromString(
      '{"success":true,"data":{"version":"1","storages":["128 GB"],"rams":["8 GB"],"platforms":["apple"],"billAgeExemptOption":"11 months or older","inspectionFields":[{"key":"sim1","label":"SIM 1 working?","options":["Yes","No"]}],"inspectionSteps":[{"title":"Basic & SIM","keys":["sim1"]}],"evidence":[{"purpose":"front","label":"Front"}],"diagnosticChecks":[{"id":"wifi","label":"Wi-Fi","group":"automated"}]}}',
      200,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}
