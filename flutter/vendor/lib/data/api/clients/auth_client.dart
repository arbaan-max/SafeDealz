// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/account_response.dart';
import '../models/auth_response.dart';
import '../models/login_request.dart';
import '../models/refresh_request.dart';

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
}
