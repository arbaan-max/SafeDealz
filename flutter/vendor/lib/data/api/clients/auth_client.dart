// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/account_response.dart';
import '../models/auth_response.dart';
import '../models/login_request.dart';
import '../models/password_change_response.dart';
import '../models/password_change_write.dart';
import '../models/refresh_request.dart';
import '../models/session_list_response.dart';
import '../models/session_revoke_response.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String? baseUrl}) = _AuthClient;

  @POST('/auth/login')
  Future<AuthResponse> login({
    @Body() required LoginRequest body,
  });

  @POST('/auth/refresh')
  Future<AuthResponse> refresh({
    @Body() required RefreshRequest body,
  });

  @POST('/auth/logout')
  Future<void> logout();

  @GET('/auth/me')
  Future<AccountResponse> getCurrentAccount();

  @GET('/auth/sessions')
  Future<SessionListResponse> listSessions();

  @POST('/auth/sessions/{id}/revoke')
  Future<SessionRevokeResponse> revokeSession({
    @Path('id') required String id,
  });

  @POST('/auth/password')
  Future<PasswordChangeResponse> changePassword({
    @Body() required PasswordChangeWrite body,
  });
}
