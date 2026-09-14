import 'package:safedealz_vendor/data/api/clients/auth_client.dart';
import 'package:safedealz_vendor/data/api/models/account_role.dart';
import 'package:safedealz_vendor/data/api/models/account_summary.dart';
import 'package:safedealz_vendor/data/api/models/password_change_write.dart';

abstract interface class ProfileRepository {
  Future<AccountSummary> currentAccount();
  Future<void> changePassword(String currentPassword, String newPassword);
}

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(this._client);
  final AuthClient _client;

  @override
  Future<AccountSummary> currentAccount() async => (await _client.getCurrentAccount()).data;

  @override
  Future<void> changePassword(String currentPassword, String newPassword) async {
    await _client.changePassword(
      body: PasswordChangeWrite(currentPassword: currentPassword, newPassword: newPassword),
    );
  }
}

class MemoryProfileRepository implements ProfileRepository {
  MemoryProfileRepository([this.account]);
  AccountSummary? account;
  Object? error;

  @override
  Future<AccountSummary> currentAccount() async =>
      account ??
      const AccountSummary(
        id: 'v1',
        email: 'vendor@test.dev',
        role: AccountRole.vendor,
        displayName: 'Uday',
        assignedBranchIds: ['b1'],
      );

  @override
  Future<void> changePassword(String currentPassword, String newPassword) async {
    if (error != null) throw error!;
  }
}
