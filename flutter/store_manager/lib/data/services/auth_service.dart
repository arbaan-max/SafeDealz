import 'dart:async';
import 'package:dio/dio.dart';
import 'package:safedealz_store_manager/data/api/clients/auth_client.dart';
import 'package:safedealz_store_manager/data/api/models/client_type.dart';
import 'package:safedealz_store_manager/data/api/models/login_audience.dart';
import 'package:safedealz_store_manager/data/api/models/login_request.dart';
import 'package:safedealz_store_manager/data/api/models/refresh_request.dart';
import 'package:safedealz_store_manager/data/services/token_store.dart';

class AuthFailure implements Exception {
  const AuthFailure(this.code, this.message);
  final String code;
  final String message;
}

class AuthService {
  AuthService(this._client, this._tokens);
  final AuthClient _client;
  final TokenStore _tokens;
  Future<String?>? _refreshing;
  Future<void> login(String email, String password) async {
    try {
      final response = await _client.login(
        body: LoginRequest(
          email: email,
          password: password,
          expectedRole: LoginAudience.storeManager,
          clientType: ClientType.mobile,
        ),
      );
      final refresh = response.data.refreshToken;
      if (refresh == null) {
        throw const AuthFailure(
          'SESSION_INVALID',
          'Session could not be created.',
        );
      }
      await _tokens.save(response.data.accessToken, refresh);
    } on DioException catch (error) {
      await _map(error);
    }
  }

  Future<String?> refreshOnce() =>
      _refreshing ??= _refresh().whenComplete(() => _refreshing = null);
  Future<String?> _refresh() async {
    final token = await _tokens.readRefresh();
    if (token == null) {
      return null;
    }
    try {
      final response = await _client.refresh(
        body: RefreshRequest(
          clientType: ClientType.mobile,
          refreshToken: token,
        ),
      );
      final next = response.data.refreshToken;
      if (next == null) {
        throw const AuthFailure('SESSION_INVALID', 'Session expired.');
      }
      await _tokens.save(response.data.accessToken, next);
      return response.data.accessToken;
    } on DioException catch (error) {
      await _map(error);
    }
  }

  Future<void> logout() async {
    try {
      await _client.logout();
    } catch (_) {
    } finally {
      await _tokens.clear();
    }
  }

  Future<Never> _map(DioException error) async {
    final data = error.response?.data;
    final body = data is Map ? data['error'] : null;
    final code = body is Map
        ? body['code']?.toString() ?? 'REQUEST_FAILED'
        : 'REQUEST_FAILED';
    final message = body is Map
        ? body['message']?.toString() ?? 'Unable to continue.'
        : 'Unable to connect. Try again.';
    if (code == 'ACCOUNT_INACTIVE' || code.startsWith('SESSION_')) {
      await _tokens.clear();
    }
    throw AuthFailure(code, message);
  }
}
