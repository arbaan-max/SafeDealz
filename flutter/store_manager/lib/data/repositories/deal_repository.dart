import 'package:safedealz_store_manager/data/api/clients/operations_client.dart';
import 'package:safedealz_store_manager/data/api/models/deal.dart';
import 'package:safedealz_store_manager/data/api/models/deal_status.dart';
import 'package:safedealz_store_manager/data/api/models/deal_verify_write.dart';
import 'package:safedealz_store_manager/data/api/models/payment_instruction.dart';
import 'package:safedealz_store_manager/data/api/models/payment_instruction_status.dart';

abstract interface class DealRepository {
  Future<Deal> acceptAuction(String auctionId);
  Future<Deal> getDeal(String id);
  Future<void> sendOtp(String id);
  Future<Deal> verify(String id, DealVerifyWrite body);
  Future<PaymentInstruction> getPayment(String id);
  Future<PaymentInstruction> retryPayment(String id);
  Future<List<Deal>> listDeals({String? deviceId, String? status});
  Future<Deal> markPickup(String id);
}

class DealRepositoryImpl implements DealRepository {
  DealRepositoryImpl(this._client);
  final OperationsClient _client;

  @override
  Future<Deal> acceptAuction(String auctionId) async => (await _client.acceptAuction(id: auctionId)).data;

  @override
  Future<Deal> getDeal(String id) async => (await _client.getDeal(id: id)).data;

  @override
  Future<void> sendOtp(String id) async {
    await _client.sendDealOtp(id: id);
  }

  @override
  Future<Deal> verify(String id, DealVerifyWrite body) async => (await _client.verifyDeal(id: id, body: body)).data;

  @override
  Future<PaymentInstruction> getPayment(String id) async => (await _client.getPayment(id: id)).data;

  @override
  Future<PaymentInstruction> retryPayment(String id) async => (await _client.retryPayment(id: id)).data;

  @override
  Future<List<Deal>> listDeals({String? deviceId, String? status}) async =>
      (await _client.listDeals(deviceId: deviceId, status: status)).data;

  @override
  Future<Deal> markPickup(String id) async => (await _client.markDealPickup(id: id)).data;
}

class MemoryDealRepository implements DealRepository {
  MemoryDealRepository(this.deal);
  Deal deal;

  @override
  Future<Deal> acceptAuction(String auctionId) async => deal;

  @override
  Future<Deal> getDeal(String id) async => deal;

  @override
  Future<void> sendOtp(String id) async {}

  @override
  Future<Deal> verify(String id, DealVerifyWrite body) async {
    deal = deal.copyWith(
      status: DealStatus.verified,
      customerName: body.customerName,
      customerPhone: body.customerPhone,
      otpVerified: true,
      idCaptured: true,
      portraitCaptured: true,
      purchasedDevice: body.purchasedDevice,
      paymentInstruction: deal.paymentInstruction?.copyWith(
            status: PaymentInstructionStatus.processing,
          ) ??
          const PaymentInstruction(status: PaymentInstructionStatus.processing),
    );
    return deal;
  }

  @override
  Future<PaymentInstruction> getPayment(String id) async =>
      deal.paymentInstruction ?? const PaymentInstruction(status: PaymentInstructionStatus.processing);

  @override
  Future<PaymentInstruction> retryPayment(String id) async {
    deal = deal.copyWith(
      paymentInstruction: deal.paymentInstruction?.copyWith(status: PaymentInstructionStatus.processing) ??
          const PaymentInstruction(status: PaymentInstructionStatus.processing),
    );
    return deal.paymentInstruction!;
  }

  @override
  Future<List<Deal>> listDeals({String? deviceId, String? status}) async => [deal];

  @override
  Future<Deal> markPickup(String id) async {
    deal = deal.copyWith(status: DealStatus.pickedUp);
    return deal;
  }
}
