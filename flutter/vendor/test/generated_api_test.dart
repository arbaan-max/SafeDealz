import 'dart:async';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_vendor/core/network/dio_factory.dart';
import 'package:safedealz_vendor/data/api/clients/system_client.dart';
import 'package:safedealz_vendor/data/api/clients/auth_client.dart';
import 'package:safedealz_vendor/data/api/clients/organization_client.dart';
import 'package:safedealz_vendor/data/api/clients/operations_client.dart';
import 'package:safedealz_vendor/data/api/models/client_type.dart';
import 'package:safedealz_vendor/data/api/models/login_audience.dart';
import 'package:safedealz_vendor/data/api/models/login_request.dart';
import 'package:safedealz_vendor/data/api/models/wallet_recharge_write.dart';
import 'package:safedealz_vendor/data/api/models/bid_write.dart';

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
        email: 'vendor@test.dev',
        password: 'password',
        expectedRole: LoginAudience.vendor,
        clientType: ClientType.mobile,
      ),
    );
    expect(response.data.account.role.toJson(), 'vendor');
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

  test('generated organization client deserializes assigned stores', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _AssignedStoreAdapter();
    final response = await OrganizationClient(dio).listAssignedStores();
    expect(response.data.single.chainName, 'PAI');
    expect(response.data.single.name, 'Indiranagar');
  });

  test('generated operations client deserializes the vendor wallet', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _WalletAdapter();
    final response = await OperationsClient(dio).getMyWallet();
    expect(response.data.availablePaise, 10000);
    expect(response.data.ledger?.single.type?.json, 'credit');
    expect(response.data.reservations, isEmpty);
  });

  test('generated operations client deserializes a wallet recharge', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _RechargeAdapter();
    final response = await OperationsClient(dio).createWalletRecharge(
      body: const WalletRechargeWrite(amountPaise: 50000, idempotencyKey: 'rzp-1'),
    );
    expect(response.data.orderId, 'order_test_1');
    expect(response.data.status.json, 'pending');
    expect(response.data.clientAcknowledged, isFalse);
  });

  test('generated operations client posts a typed auction bid', () async {
    final Dio dio = DioFactory.create(baseUrl: 'https://api.example.test/v1');
    dio.httpClientAdapter = _BidAdapter();
    final response = await OperationsClient(dio).placeAuctionBid(
      id: 'a1',
      body: const BidWrite(amountPaise: 800000, idempotencyKey: 'bid-1'),
    );
    expect(response.data.feePaise, 64000);
    expect(response.data.totalPaise, 864000);
    expect(response.data.status.json, 'submitted');
  });
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
      'vendor',
    );
    return ResponseBody.fromString(
      '{"success":true,"data":{"accessToken":"access","refreshToken":"refresh","expiresIn":600,"account":{"id":"1","email":"vendor@test.dev","role":"vendor"}}}',
      200,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
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

final class _AssignedStoreAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'GET');
    expect(options.uri.path, '/v1/assigned-stores');
    return ResponseBody.fromString(
      '{"success":true,"data":[{"id":"b1","chainId":"c1","name":"Indiranagar","code":"PAI-IND","chainName":"PAI","address":"100 Feet Road","city":"Bengaluru"}]}',
      200,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

final class _WalletAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'GET');
    expect(options.uri.path, '/v1/wallets/me');
    return ResponseBody.fromString(
      '{"success":true,"data":{"id":"w1","vendorAccountId":"v1","availablePaise":10000,"reservedPaise":0,"processingPaise":0,"currency":"INR","ledger":[{"id":"l1","type":"credit","amountPaise":10000,"availableAfterPaise":10000,"reservedAfterPaise":0,"reason":"seed"}],"reservations":[]}}',
      200,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

final class _RechargeAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'POST');
    expect(options.uri.path, '/v1/wallets/recharges');
    return ResponseBody.fromString(
      '{"success":true,"data":{"id":"r1","vendorAccountId":"v1","amountPaise":50000,"orderId":"order_test_1","status":"pending","keyId":"rzp_test_local","clientAcknowledged":false}}',
      201,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

final class _BidAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    expect(options.method, 'POST');
    expect(options.uri.path, '/v1/auctions/a1/bids');
    expect((options.data as BidWrite).toJson()['amountPaise'], 800000);
    return ResponseBody.fromString(
      '{"success":true,"data":{"id":"b1","roundId":"a1","deviceId":"d1","vendorAccountId":"v1","amountPaise":800000,"feePaise":64000,"feeRate":0.08,"totalPaise":864000,"status":"submitted"}}',
      201,
      headers: <String, List<String>>{
        Headers.contentTypeHeader: <String>[Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}
