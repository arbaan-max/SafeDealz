// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/catalog_response.dart';
import '../models/device_create.dart';
import '../models/device_list_response.dart';
import '../models/device_response.dart';
import '../models/device_update.dart';
import '../models/diagnostic_import_response.dart';
import '../models/diagnostic_import_write.dart';
import '../models/inspection_write.dart';
import '../models/media_complete_request.dart';
import '../models/media_complete_response.dart';
import '../models/media_download_request.dart';
import '../models/media_download_response.dart';
import '../models/media_sign_request.dart';
import '../models/media_sign_response.dart';
import '../models/wallet_credit_write.dart';
import '../models/wallet_detail_response.dart';
import '../models/wallet_list_response.dart';
import '../models/wallet_move_response.dart';
import '../models/wallet_release_write.dart';
import '../models/wallet_reserve_write.dart';

part 'operations_client.g.dart';

@RestApi()
abstract class OperationsClient {
  factory OperationsClient(Dio dio, {String? baseUrl}) = _OperationsClient;

  @GET('/catalog')
  Future<CatalogResponse> getCatalog();

  @POST('/diagnostic-imports')
  Future<DiagnosticImportResponse> importDiagnostic({
    @Body() required DiagnosticImportWrite body,
  });

  @GET('/wallets/me')
  Future<WalletDetailResponse> getMyWallet();

  @GET('/wallets')
  Future<WalletListResponse> listWallets();

  @GET('/wallets/{vendorId}')
  Future<WalletDetailResponse> getVendorWallet({
    @Path('vendorId') required String vendorId,
  });

  @POST('/wallets/{vendorId}/credits')
  Future<WalletMoveResponse> creditWallet({
    @Path('vendorId') required String vendorId,
    @Body() required WalletCreditWrite body,
  });

  @POST('/wallets/reservations')
  Future<WalletMoveResponse> reserveWalletFunds({
    @Body() required WalletReserveWrite body,
  });

  @POST('/wallets/releases')
  Future<WalletMoveResponse> releaseWalletFunds({
    @Body() required WalletReleaseWrite body,
  });

  @GET('/devices')
  Future<DeviceListResponse> listDevices({
    @Query('status') String? status,
    @Query('branchId') String? branchId,
  });

  @POST('/devices')
  Future<DeviceResponse> createDevice({
    @Body() required DeviceCreate body,
  });

  @GET('/devices/{id}')
  Future<DeviceResponse> getDevice({
    @Path('id') required String id,
  });

  @PATCH('/devices/{id}')
  Future<DeviceResponse> updateDevice({
    @Path('id') required String id,
    @Body() required DeviceUpdate body,
  });

  @PUT('/devices/{id}/inspection')
  Future<DeviceResponse> saveInspection({
    @Path('id') required String id,
    @Body() required InspectionWrite body,
  });

  @POST('/devices/{id}/media/sign')
  Future<MediaSignResponse> signDeviceMedia({
    @Path('id') required String id,
    @Body() required MediaSignRequest body,
  });

  @POST('/devices/{id}/media/complete')
  Future<MediaCompleteResponse> completeDeviceMedia({
    @Path('id') required String id,
    @Body() required MediaCompleteRequest body,
  });

  @POST('/devices/{id}/media/download')
  Future<MediaDownloadResponse> downloadDeviceMedia({
    @Path('id') required String id,
    @Body() required MediaDownloadRequest body,
  });
}
