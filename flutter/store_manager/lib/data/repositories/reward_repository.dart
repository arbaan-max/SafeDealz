import 'package:safedealz_store_manager/data/api/clients/operations_client.dart';
import 'package:safedealz_store_manager/data/api/models/customer_rewards.dart';
import 'package:safedealz_store_manager/data/api/models/redemption.dart';
import 'package:safedealz_store_manager/data/api/models/redemption_confirm_write.dart';
import 'package:safedealz_store_manager/data/api/models/redemption_status.dart';
import 'package:safedealz_store_manager/data/api/models/redemption_write.dart';
import 'package:safedealz_store_manager/data/api/models/reward_balance.dart';
import 'package:safedealz_store_manager/data/api/models/reward_ledger_entry.dart';
import 'package:safedealz_store_manager/data/api/models/reward_ledger_entry_type.dart';

abstract interface class RewardRepository {
  Future<CustomerRewards> lookup(String phone);
  Future<List<Redemption>> listRedemptions();
  Future<Redemption> start(RedemptionWrite body);
  Future<Redemption> confirm(String id, String otp);
  Future<Redemption> getRedemption(String id);
}

class RewardRepositoryImpl implements RewardRepository {
  RewardRepositoryImpl(this._client);
  final OperationsClient _client;

  @override
  Future<CustomerRewards> lookup(String phone) async =>
      (await _client.getCustomerRewards(phone: phone)).data;

  @override
  Future<List<Redemption>> listRedemptions() async =>
      (await _client.listRedemptions()).data;

  @override
  Future<Redemption> start(RedemptionWrite body) async =>
      (await _client.startRedemption(body: body)).data;

  @override
  Future<Redemption> confirm(String id, String otp) async =>
      (await _client.confirmRedemption(id: id, body: RedemptionConfirmWrite(otp: otp))).data;

  @override
  Future<Redemption> getRedemption(String id) async =>
      (await _client.getRedemption(id: id)).data;
}

class MemoryRewardRepository implements RewardRepository {
  MemoryRewardRepository({
    CustomerRewards? customer,
    List<Redemption>? redemptions,
    Redemption? pending,
  })  : customer = customer ??
            const CustomerRewards(
              phone: '9876543210',
              customerName: 'Anita',
              balances: [
                RewardBalance(
                  branchName: 'Indiranagar',
                  pointsBalance: 800,
                  issuedPoints: 800,
                  redeemedPoints: 0,
                  outstandingValuePaise: 40000,
                ),
              ],
              entries: [
                RewardLedgerEntry(type: RewardLedgerEntryType.earn, points: 800, valuePaise: 40000, reason: 'paid_deal'),
              ],
            ),
        redemptions = redemptions ?? <Redemption>[],
        pending = pending ??
            const Redemption(
              id: 'red1',
              customerPhone: '9876543210',
              customerName: 'Anita',
              invoiceNumber: 'INV-1',
              category: 'accessories',
              billAmountPaise: 50000,
              discountPaise: 10000,
              points: 200,
              remainingPoints: 800,
              remainingValuePaise: 40000,
              status: RedemptionStatus.pendingOtp,
              otpRequired: true,
              reminder: 'Apply this discount in the store billing software. SafeDealz does not change the bill.',
            );

  CustomerRewards customer;
  List<Redemption> redemptions;
  Redemption pending;

  @override
  Future<CustomerRewards> lookup(String phone) async => customer;

  @override
  Future<List<Redemption>> listRedemptions() async => redemptions;

  @override
  Future<Redemption> start(RedemptionWrite body) async => pending;

  @override
  Future<Redemption> confirm(String id, String otp) async {
    pending = pending.copyWith(
      status: RedemptionStatus.redeemed,
      remainingPoints: 600,
      remainingValuePaise: 30000,
      otpRequired: false,
    );
    redemptions = [pending];
    return pending;
  }

  @override
  Future<Redemption> getRedemption(String id) async => pending;
}
