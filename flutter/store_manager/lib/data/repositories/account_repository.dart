import 'package:safedealz_store_manager/data/api/clients/auth_client.dart';
import 'package:safedealz_store_manager/data/api/models/account_role.dart';
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

class MemoryAccountRepository implements AccountRepository {
  MemoryAccountRepository([this.account]);
  AccountSummary? account;

  @override
  Future<AccountSummary> currentAccount() async =>
      account ??
      const AccountSummary(
        id: 'm1',
        email: 'kavya@test.dev',
        role: AccountRole.storeManager,
        displayName: 'Kavya',
        assignedBranchIds: ['b1'],
      );
}
