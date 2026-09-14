import 'package:safedealz_store_manager/data/services/auth_service.dart';

abstract interface class AuthRepository {
  Future<void> login(String email, String password);
  Future<void> logout();
}

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._service);
  final AuthService _service;
  @override
  Future<void> login(String email, String password) =>
      _service.login(email, password);
  @override
  Future<void> logout() => _service.logout();
}
