part of 'devices_bloc.dart';

sealed class DevicesEvent extends Equatable {
  const DevicesEvent();
  @override
  List<Object?> get props => const [];
}

final class DevicesStarted extends DevicesEvent {
  const DevicesStarted(this.filter);
  final String filter;
  @override
  List<Object?> get props => [filter];
}

final class DevicesFilterChanged extends DevicesEvent {
  const DevicesFilterChanged(this.filter);
  final String filter;
  @override
  List<Object?> get props => [filter];
}

final class DevicesSearchChanged extends DevicesEvent {
  const DevicesSearchChanged(this.query);
  final String query;
  @override
  List<Object?> get props => [query];
}
