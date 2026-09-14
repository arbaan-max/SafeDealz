import 'dart:async';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_store_manager/core/network/dio_factory.dart';
import 'package:safedealz_store_manager/data/api/clients/system_client.dart';
import 'package:safedealz_store_manager/data/api/clients/organization_client.dart';
import 'package:safedealz_store_manager/data/api/clients/operations_client.dart';
import 'package:safedealz_store_manager/data/api/clients/auth_client.dart';
import 'package:safedealz_store_manager/data/api/models/diagnostic_import_write.dart';
import 'package:safedealz_store_manager/data/api/models/inspection_write.dart';
import 'package:safedealz_store_manager/data/api/models/client_type.dart';
import 'package:safedealz_store_manager/data/api/models/login_audience.dart';
import 'package:safedealz_store_manager/data/api/models/login_request.dart';

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

  test('generated auth client posts typed mobile login', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _AuthAdapter();
    final response = await AuthClient(dio).login(
      body: const LoginRequest(
        email: 'manager@test.dev',
        password: 'password',
        expectedRole: LoginAudience.storeManager,
        clientType: ClientType.mobile,
      ),
    );
    expect(response.data.account.role.toJson(), 'store_manager');
    expect(response.data.refreshToken, 'refresh');
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

  test('generated operations client deserializes device lists', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _DeviceAdapter();
    final response = await OperationsClient(dio).listDevices(status: 'draft');
    expect(response.data.single.imei1, '012345678901234');
    expect(response.data.single.platform.toJson(), 'apple');
    expect(response.data.single.status, 'draft');
  });

  test('generated operations client deserializes inspection saves', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _InspectionAdapter();
    final response = await OperationsClient(dio).saveInspection(
      id: 'd1',
      body: const InspectionWrite(answers: {'sim1': 'Yes'}, complete: false),
    );
    expect(response.data.status, 'inspecting');
    expect(response.data.inspection?.answers?['sim1'], 'Yes');
  });

  test('generated operations client deserializes the trade-in catalog', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _CatalogAdapter();
    final response = await OperationsClient(dio).getCatalog();
    expect(response.data.storages, contains('128 GB'));
    expect(response.data.inspectionFields.single.key, 'sim1');
  });

  test('generated operations client deserializes diagnostic import', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _DiagnosticImportAdapter();
    final response = await OperationsClient(dio).importDiagnostic(
      body: DiagnosticImportWrite(
        deviceId: 'd1',
        payload: const {'imei1': '353456789012345'},
        signature: 'sig',
      ),
    );
    expect(response.success, isTrue);
    expect(response.data.deviceId, 'd1');
    expect(response.data.status, 'ready_for_auction');
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

final class _AuthAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'POST');
    expect(options.uri.path, '/v1/auth/login');
    expect(
      (options.data as LoginRequest).toJson()['expectedRole'].toString(),
      'store_manager',
    );
    return ResponseBody.fromString(
      '{"success":true,"data":{"accessToken":"access","refreshToken":"refresh","expiresIn":600,"account":{"id":"1","email":"manager@test.dev","role":"store_manager"}}}',
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

final class _DeviceAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'GET');
    expect(options.uri.path, '/v1/devices');
    expect(options.uri.queryParameters['status'], 'draft');
    return ResponseBody.fromString(
      '{"success":true,"data":[{"id":"d1","branchId":"b1","platform":"apple","model":"iPhone 14","imei1":"012345678901234","imei2":"012345678901235","storage":"128 GB","status":"draft","ram":"","batteryHealth":91}]}',
      200,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

final class _InspectionAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'PUT');
    expect(options.uri.path, '/v1/devices/d1/inspection');
    return ResponseBody.fromString(
      '{"success":true,"data":{"id":"d1","branchId":"b1","platform":"apple","model":"iPhone 14","imei1":"012345678901234","imei2":"012345678901235","storage":"128 GB","status":"inspecting","inspection":{"answers":{"sim1":"Yes"},"source":"store_manual","complete":false}}}',
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

final class _DiagnosticImportAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'POST');
    expect(options.uri.path, '/v1/diagnostic-imports');
    return ResponseBody.fromString(
      '{"success":true,"data":{"id":"imp1","deviceId":"d1","status":"ready_for_auction"}}',
      201,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}
