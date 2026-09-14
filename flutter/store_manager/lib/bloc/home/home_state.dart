part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object?> get props => const [];
}

final class HomeLoading extends HomeState {
  const HomeLoading();
}

final class HomeFailed extends HomeState {
  const HomeFailed(this.message);
  final String message;
  @override
  List<Object?> get props => [message];
}

final class HomeReady extends HomeState {
  const HomeReady({required this.account, required this.recent});
  final AccountSummary account;
  final List<Device> recent;
  @override
  List<Object?> get props => [account, recent];
}
