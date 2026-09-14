part of 'assigned_stores_bloc.dart';

sealed class AssignedStoresState extends Equatable {
  const AssignedStoresState();
  @override
  List<Object?> get props => const [];
}

final class AssignedStoresLoading extends AssignedStoresState {
  const AssignedStoresLoading();
}

final class AssignedStoresFailed extends AssignedStoresState {
  const AssignedStoresFailed(this.message);
  final String message;
  @override
  List<Object?> get props => [message];
}

final class AssignedStoresReady extends AssignedStoresState {
  const AssignedStoresReady(this.stores);
  final List<AssignedStore> stores;
  @override
  List<Object?> get props => [stores];
}
