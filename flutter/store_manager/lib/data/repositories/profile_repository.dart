import 'package:safedealz_store_manager/data/api/clients/auth_client.dart';
import 'package:safedealz_store_manager/data/api/models/password_change_write.dart';

abstract interface class ProfileRepository {
  Future<void> changePassword(String currentPassword, String newPassword);
}

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(this._client);
  final AuthClient _client;

  @override
  Future<void> changePassword(String currentPassword, String newPassword) async {
    await _client.changePassword(
      body: PasswordChangeWrite(currentPassword: currentPassword, newPassword: newPassword),
    );
  }
}

class MemoryProfileRepository implements ProfileRepository {
  String? lastPassword;
  Object? error;

  @override
  Future<void> changePassword(String currentPassword, String newPassword) async {
    if (error != null) throw error!;
    lastPassword = newPassword;
  }
}
