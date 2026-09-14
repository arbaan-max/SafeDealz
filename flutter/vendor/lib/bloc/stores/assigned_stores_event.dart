part of 'assigned_stores_bloc.dart';

sealed class AssignedStoresEvent extends Equatable {
  const AssignedStoresEvent();
  @override
  List<Object?> get props => const [];
}

final class AssignedStoresStarted extends AssignedStoresEvent {
  const AssignedStoresStarted();
}
