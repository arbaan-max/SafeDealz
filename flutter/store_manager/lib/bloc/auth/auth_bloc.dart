import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_store_manager/data/repositories/auth_repository.dart';
import 'package:safedealz_store_manager/data/services/auth_service.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._repository) : super(const AuthInitial()) {
    on<AuthLoginRequested>(_login);
    on<AuthLogoutRequested>(_logout);
  }
  final AuthRepository _repository;
  Future<void> _login(AuthLoginRequested e, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    try {
      await _repository.login(e.email, e.password);
      emit(const AuthAuthenticated());
    } on AuthFailure catch (f) {
      emit(
        AuthUnauthenticated(
          message: f.message,
          inactive: f.code == 'ACCOUNT_INACTIVE',
        ),
      );
    } catch (_) {
      emit(const AuthUnauthenticated(message: 'Unable to connect. Try again.'));
    }
  }

  Future<void> _logout(AuthLogoutRequested e, Emitter<AuthState> emit) async {
    await _repository.logout();
    emit(const AuthUnauthenticated());
  }
}
