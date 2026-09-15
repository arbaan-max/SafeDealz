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
import 'package:safedealz_store_manager/data/api/models/auction_decline_write.dart';
import 'package:safedealz_store_manager/data/api/models/auction_decline_write_reason_code.dart';
import 'package:safedealz_store_manager/data/api/models/redemption_confirm_write.dart';

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

  test('generated operations client deserializes auction start', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _AuctionAdapter();
    final response = await OperationsClient(dio).startDeviceAuction(id: 'd1');
    expect(response.data.roundNumber, 1);
    expect(response.data.status.json, 'live');
    expect(response.data.biddingMinutes, 3);
  });

  test('generated operations client posts a typed offer decline', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _DeclineAdapter();
    final response = await OperationsClient(dio).declineAuction(
      id: 'a1',
      body: const AuctionDeclineWrite(
        reasonCode: AuctionDeclineWriteReasonCode.other,
        reason: 'Customer asked to wait',
      ),
    );
    expect(response.data.status.json, 'needs_reauction');
    expect(response.data.declineReason, 'Customer asked to wait');
  });

  test('generated operations client posts typed deal acceptance', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _AcceptAdapter();
    final response = await OperationsClient(dio).acceptAuction(id: 'a1');
    expect(response.data.status.json, 'awaiting_customer_verification');
    expect(response.data.paymentInstruction?.status?.json, 'awaiting_customer_verification');
  });

  test('generated operations client gets a typed payment instruction', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _PaymentAdapter();
    final response = await OperationsClient(dio).getPayment(id: 'pay1');
    expect(response.data.status?.json, 'processing');
    expect(response.data.providerTransferId, 'payout_test_1');
  });

  test('generated operations client gets typed reward overview totals', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _RewardAdapter();
    final response = await OperationsClient(dio).getRewardOverview();
    expect(response.data.totals?.issuedPoints, 800);
    expect(response.data.policy?.redemptionScope?.json, 'branch_only');
  });

  test('generated operations client posts a typed redemption confirm', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _RedemptionAdapter();
    final response = await OperationsClient(dio).confirmRedemption(
      id: 'red1',
      body: const RedemptionConfirmWrite(otp: '123456'),
    );
    expect(response.data.status?.json, 'redeemed');
    expect(response.data.remainingPoints, 600);
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
      (options.data as Map)['expectedRole'].toString(),
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

final class _AuctionAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'POST');
    expect(options.uri.path, '/v1/devices/d1/auctions');
    return ResponseBody.fromString(
      '{"success":true,"data":{"id":"a1","deviceId":"d1","branchId":"b1","roundNumber":1,"status":"live","opensAt":"2026-09-14T10:00:00.000Z","closesAt":"2026-09-14T10:03:00.000Z","biddingMinutes":3,"acceptanceMinutes":10,"bidCount":0,"highestAmountPaise":0}}',
      201,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

final class _DeclineAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'POST');
    expect(options.uri.path, '/v1/auctions/a1/decline');
    expect((options.data as Map)['reasonCode'].toString(), 'other');
    return ResponseBody.fromString(
      '{"success":true,"data":{"id":"a1","deviceId":"d1","branchId":"b1","roundNumber":1,"status":"needs_reauction","opensAt":"2026-09-14T10:00:00.000Z","closesAt":"2026-09-14T10:03:00.000Z","declineReason":"Customer asked to wait"}}',
      200,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

final class _AcceptAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'POST');
    expect(options.uri.path, '/v1/auctions/a1/accept');
    return ResponseBody.fromString(
      '{"success":true,"data":{"id":"deal1","auctionRoundId":"a1","deviceId":"d1","amountPaise":1500000,"status":"awaiting_customer_verification","paymentInstruction":{"status":"awaiting_customer_verification","accountNumberMasked":"•••• 4821"}}}',
      201,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

final class _PaymentAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'GET');
    expect(options.uri.path, '/v1/payments/pay1');
    return ResponseBody.fromString(
      '{"success":true,"data":{"id":"pay1","dealId":"deal1","status":"processing","amountPaise":800000,"providerTransferId":"payout_test_1"}}',
      200,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

final class _RewardAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'GET');
    expect(options.uri.path, '/v1/rewards/overview');
    return ResponseBody.fromString(
      '{"success":true,"data":{"totals":{"issuedPoints":800,"redeemedPoints":0,"outstandingPoints":800,"outstandingValuePaise":40000},"policy":{"version":1,"redemptionScope":"branch_only","futureScopesInactive":true}}}',
      200,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

final class _RedemptionAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'POST');
    expect(options.uri.path, '/v1/rewards/redemptions/red1/confirm');
    return ResponseBody.fromString(
      '{"success":true,"data":{"id":"red1","status":"redeemed","remainingPoints":600,"discountPaise":10000,"points":200,"invoiceNumber":"INV-1"}}',
      200,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}
