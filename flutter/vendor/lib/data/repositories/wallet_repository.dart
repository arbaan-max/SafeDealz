import 'package:safedealz_vendor/data/api/clients/operations_client.dart';
import 'package:safedealz_vendor/data/api/models/wallet_detail.dart';

abstract interface class WalletRepository {
  Future<WalletDetail> getMyWallet();
}

class WalletRepositoryImpl implements WalletRepository {
  WalletRepositoryImpl(this._client);
  final OperationsClient _client;

  @override
  Future<WalletDetail> getMyWallet() async {
    final response = await _client.getMyWallet();
    return response.data;
  }
}

class MemoryWalletRepository implements WalletRepository {
  MemoryWalletRepository(this.wallet);
  final WalletDetail wallet;

  @override
  Future<WalletDetail> getMyWallet() async => wallet;
}
