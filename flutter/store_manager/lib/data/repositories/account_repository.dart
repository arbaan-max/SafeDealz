import 'package:safedealz_store_manager/data/api/clients/auth_client.dart';
import 'package:safedealz_store_manager/data/api/models/account_summary.dart';

abstract interface class AccountRepository {
  Future<AccountSummary> currentAccount();
}

class AccountRepositoryImpl implements AccountRepository {
  AccountRepositoryImpl(this._client);
  final AuthClient _client;

  @override
  Future<AccountSummary> currentAccount() async {
    final response = await _client.getCurrentAccount();
    return response.data;
  }
}
