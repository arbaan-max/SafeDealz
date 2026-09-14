import 'package:flutter_test/flutter_test.dart';
import 'package:safedealz_vendor/bloc/auth/auth_bloc.dart';
import 'package:safedealz_vendor/data/repositories/auth_repository.dart';
import 'package:safedealz_vendor/data/services/auth_service.dart';

class _MemoryAuth implements AuthRepository {
  _MemoryAuth({this.restored = false, this.failure});
  final bool restored;
  final AuthFailure? failure;
  var restoreCalls = 0;

  @override
  Future<void> login(String email, String password) async {}

  @override
  Future<void> logout() async {}

  @override
  Future<bool> restore() async {
    restoreCalls += 1;
    final error = failure;
    if (error != null) throw error;
    return restored;
  }
}

void main() {
  test('AuthStarted restores an active session', () async {
    final auth = _MemoryAuth(restored: true);
    final bloc = AuthBloc(auth);
    final done = expectLater(
      bloc.stream,
      emitsInOrder([const AuthLoading(), const AuthAuthenticated()]),
    );
    bloc.add(const AuthStarted());
    await done;
    expect(auth.restoreCalls, 1);
    await bloc.close();
  });

  test('AuthStarted with no refresh token stays on login', () async {
    final auth = _MemoryAuth();
    final bloc = AuthBloc(auth);
    final done = expectLater(
      bloc.stream,
      emitsInOrder([const AuthLoading(), const AuthUnauthenticated()]),
    );
    bloc.add(const AuthStarted());
    await done;
    await bloc.close();
  });

  test('AuthStarted logs out when the profile is inactive', () async {
    final auth = _MemoryAuth(
      failure: const AuthFailure(
        'ACCOUNT_INACTIVE',
        'Your account is inactive. Contact your administrator.',
      ),
    );
    final bloc = AuthBloc(auth);
    final done = expectLater(
      bloc.stream,
      emitsInOrder([
        const AuthLoading(),
        const AuthUnauthenticated(
          message: 'Your account is inactive. Contact your administrator.',
          inactive: true,
        ),
      ]),
    );
    bloc.add(const AuthStarted());
    await done;
    await bloc.close();
  });
}
