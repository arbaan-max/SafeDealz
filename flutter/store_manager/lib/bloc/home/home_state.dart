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
  const HomeReady({
    required this.account,
    required this.recent,
    this.branch,
    this.offers = const [],
    this.liveCount = 0,
    this.pickupCount = 0,
  });
  final AccountSummary account;
  final Branch? branch;
  final List<Device> recent;
  final List<Device> offers;
  final int liveCount;
  final int pickupCount;
  @override
  List<Object?> get props => [account, branch, recent, offers, liveCount, pickupCount];
}
