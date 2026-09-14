part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();
  @override
  List<Object?> get props => const [];
}

final class AuthLoginRequested extends AuthEvent {
  const AuthLoginRequested(this.email, this.password);
  final String email, password;
  @override
  List<Object?> get props => [email, password];
}

final class AuthStarted extends AuthEvent {
  const AuthStarted();
}

final class AuthLogoutRequested extends AuthEvent {
  const AuthLogoutRequested();
}

final class AuthForcedLogout extends AuthEvent {
  const AuthForcedLogout({this.message, this.inactive = false});
  final String? message;
  final bool inactive;
  @override
  List<Object?> get props => [message, inactive];
}
