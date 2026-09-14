import 'package:safedealz_vendor/data/api/clients/operations_client.dart';
import 'package:safedealz_vendor/data/api/models/wallet_detail.dart';
import 'package:safedealz_vendor/data/api/models/wallet_recharge.dart';
import 'package:safedealz_vendor/data/api/models/wallet_recharge_status.dart';
import 'package:safedealz_vendor/data/api/models/wallet_recharge_write.dart';

abstract interface class WalletRepository {
  Future<WalletDetail> getMyWallet();
  Future<WalletRecharge> createRecharge({required int amountPaise, required String idempotencyKey});
  Future<WalletRecharge> getRecharge(String id);
  Future<WalletRecharge> acknowledgeRecharge(String id);
}

class WalletRepositoryImpl implements WalletRepository {
  WalletRepositoryImpl(this._client);
  final OperationsClient _client;

  @override
  Future<WalletDetail> getMyWallet() async {
    final response = await _client.getMyWallet();
    return response.data;
  }

  @override
  Future<WalletRecharge> createRecharge({required int amountPaise, required String idempotencyKey}) async {
    final response = await _client.createWalletRecharge(
      body: WalletRechargeWrite(amountPaise: amountPaise, idempotencyKey: idempotencyKey),
    );
    return response.data;
  }

  @override
  Future<WalletRecharge> getRecharge(String id) async {
    final response = await _client.getWalletRecharge(id: id);
    return response.data;
  }

  @override
  Future<WalletRecharge> acknowledgeRecharge(String id) async {
    final response = await _client.acknowledgeWalletRecharge(id: id);
    return response.data;
  }
}

class MemoryWalletRepository implements WalletRepository {
  MemoryWalletRepository(this.wallet, {Map<String, WalletRecharge>? recharges}) : recharges = recharges ?? {};

  WalletDetail wallet;
  Map<String, WalletRecharge> recharges;

  @override
  Future<WalletDetail> getMyWallet() async => wallet;

  @override
  Future<WalletRecharge> createRecharge({required int amountPaise, required String idempotencyKey}) async {
    final recharge = WalletRecharge(
      id: 'r1',
      vendorAccountId: wallet.vendorAccountId ?? 'v1',
      amountPaise: amountPaise,
      orderId: 'order_test_1',
      status: WalletRechargeStatus.pending,
      keyId: 'rzp_test_local',
      clientAcknowledged: false,
    );
    recharges[recharge.id] = recharge;
    return recharge;
  }

  @override
  Future<WalletRecharge> getRecharge(String id) async {
    final recharge = recharges[id];
    if (recharge == null) throw StateError('Recharge was not found.');
    return recharge;
  }

  @override
  Future<WalletRecharge> acknowledgeRecharge(String id) async {
    final current = await getRecharge(id);
    final next = current.copyWith(clientAcknowledged: true);
    recharges[id] = next;
    return next;
  }
}
