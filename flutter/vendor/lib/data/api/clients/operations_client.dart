// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/auction_cancel_write.dart';
import '../models/auction_decline_write.dart';
import '../models/auction_list_response.dart';
import '../models/auction_rebid_response.dart';
import '../models/auction_rebid_write.dart';
import '../models/auction_response.dart';
import '../models/auction_settings_response.dart';
import '../models/auction_settings_write.dart';
import '../models/auction_tick_response.dart';
import '../models/bid_list_response.dart';
import '../models/bid_response.dart';
import '../models/bid_write.dart';
import '../models/catalog_response.dart';
import '../models/customer_rewards_response.dart';
import '../models/deal_list_response.dart';
import '../models/deal_response.dart';
import '../models/deal_verify_write.dart';
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
import '../models/notification_broadcast_response.dart';
import '../models/notification_broadcast_write.dart';
import '../models/notification_list_response.dart';
import '../models/notification_response.dart';
import '../models/otp_response.dart';
import '../models/payment_list_response.dart';
import '../models/payment_reconcile_write.dart';
import '../models/payment_response.dart';
import '../models/redemption_confirm_write.dart';
import '../models/redemption_list_response.dart';
import '../models/redemption_response.dart';
import '../models/redemption_write.dart';
import '../models/reward_overview_response.dart';
import '../models/reward_policy_response.dart';
import '../models/reward_policy_write.dart';
import '../models/wallet_credit_write.dart';
import '../models/wallet_detail_response.dart';
import '../models/wallet_list_response.dart';
import '../models/wallet_move_response.dart';
import '../models/wallet_recharge_response.dart';
import '../models/wallet_recharge_write.dart';
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

  @POST('/wallets/recharges')
  Future<WalletRechargeResponse> createWalletRecharge({
    @Body() required WalletRechargeWrite body,
  });

  @GET('/wallets/recharges/{id}')
  Future<WalletRechargeResponse> getWalletRecharge({
    @Path('id') required String id,
  });

  @POST('/wallets/recharges/{id}/acknowledge')
  Future<WalletRechargeResponse> acknowledgeWalletRecharge({
    @Path('id') required String id,
  });

  @GET('/settings')
  Future<AuctionSettingsResponse> getSettings();

  @PATCH('/settings')
  Future<AuctionSettingsResponse> updateSettings({
    @Body() required AuctionSettingsWrite body,
  });

  @GET('/auctions')
  Future<AuctionListResponse> listAuctions({
    @Query('status') String? status,
    @Query('deviceId') String? deviceId,
  });

  @POST('/auctions/tick')
  Future<AuctionTickResponse> tickAuctions();

  @GET('/auctions/{id}')
  Future<AuctionResponse> getAuction({
    @Path('id') required String id,
  });

  @POST('/auctions/{id}/cancel')
  Future<AuctionResponse> cancelAuction({
    @Path('id') required String id,
    @Body() AuctionCancelWrite? body,
  });

  @POST('/auctions/{id}/decline')
  Future<AuctionResponse> declineAuction({
    @Path('id') required String id,
    @Body() required AuctionDeclineWrite body,
  });

  @POST('/auctions/{id}/rebid')
  Future<AuctionRebidResponse> rebidAuction({
    @Path('id') required String id,
    @Body() required AuctionRebidWrite body,
  });

  @POST('/auctions/{id}/accept')
  Future<DealResponse> acceptAuction({
    @Path('id') required String id,
  });

  @GET('/deals')
  Future<DealListResponse> listDeals({
    @Query('deviceId') String? deviceId,
    @Query('status') String? status,
  });

  @GET('/deals/{id}')
  Future<DealResponse> getDeal({
    @Path('id') required String id,
  });

  @POST('/deals/{id}/otp')
  Future<OtpResponse> sendDealOtp({
    @Path('id') required String id,
  });

  @POST('/deals/{id}/verify')
  Future<DealResponse> verifyDeal({
    @Path('id') required String id,
    @Body() required DealVerifyWrite body,
  });

  @POST('/deals/{id}/pickup')
  Future<DealResponse> markDealPickup({
    @Path('id') required String id,
  });

  @GET('/payments')
  Future<PaymentListResponse> listPayments();

  @GET('/payments/{id}')
  Future<PaymentResponse> getPayment({
    @Path('id') required String id,
  });

  @POST('/payments/{id}/retry')
  Future<PaymentResponse> retryPayment({
    @Path('id') required String id,
  });

  @POST('/payments/{id}/reconcile')
  Future<PaymentResponse> reconcilePayment({
    @Path('id') required String id,
    @Body() required PaymentReconcileWrite body,
  });

  @GET('/rewards/overview')
  Future<RewardOverviewResponse> getRewardOverview({
    @Query('branchId') String? branchId,
  });

  @GET('/rewards/policy')
  Future<RewardPolicyResponse> getRewardPolicy();

  @POST('/rewards/policy')
  Future<RewardPolicyResponse> publishRewardPolicy({
    @Body() required RewardPolicyWrite body,
  });

  @GET('/rewards/customers/{phone}')
  Future<CustomerRewardsResponse> getCustomerRewards({
    @Path('phone') required String phone,
    @Query('branchId') String? branchId,
  });

  @GET('/rewards/redemptions')
  Future<RedemptionListResponse> listRedemptions({
    @Query('branchId') String? branchId,
    @Query('status') String? status,
  });

  @POST('/rewards/redemptions')
  Future<RedemptionResponse> startRedemption({
    @Body() required RedemptionWrite body,
  });

  @GET('/rewards/redemptions/{id}')
  Future<RedemptionResponse> getRedemption({
    @Path('id') required String id,
  });

  @POST('/rewards/redemptions/{id}/otp')
  Future<RedemptionResponse> resendRedemptionOtp({
    @Path('id') required String id,
  });

  @POST('/rewards/redemptions/{id}/confirm')
  Future<RedemptionResponse> confirmRedemption({
    @Path('id') required String id,
    @Body() required RedemptionConfirmWrite body,
  });

  @GET('/notifications')
  Future<NotificationListResponse> listNotifications();

  @GET('/notifications/history')
  Future<NotificationListResponse> listNotificationHistory({
    @Query('category') String? category,
    @Query('status') String? status,
    @Query('audience') String? audience,
    @Query('branchId') String? branchId,
  });

  @POST('/notifications/broadcasts')
  Future<NotificationBroadcastResponse> broadcastNotification({
    @Body() required NotificationBroadcastWrite body,
  });

  @POST('/notifications/{id}/read')
  Future<NotificationResponse> markNotificationRead({
    @Path('id') required String id,
  });

  @GET('/auctions/{id}/bids')
  Future<BidListResponse> listAuctionBids({
    @Path('id') required String id,
  });

  @POST('/auctions/{id}/bids')
  Future<BidResponse> placeAuctionBid({
    @Path('id') required String id,
    @Body() required BidWrite body,
  });

  @GET('/bids')
  Future<BidListResponse> listMyBids();

  @GET('/bids/{id}')
  Future<BidResponse> getBid({
    @Path('id') required String id,
  });

  @POST('/devices/{id}/auctions')
  Future<AuctionResponse> startDeviceAuction({
    @Path('id') required String id,
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
