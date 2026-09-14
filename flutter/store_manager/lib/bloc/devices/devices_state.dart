part of 'devices_bloc.dart';

sealed class DevicesState extends Equatable {
  const DevicesState();
  @override
  List<Object?> get props => const [];
}

final class DevicesLoading extends DevicesState {
  const DevicesLoading();
}

final class DevicesFailed extends DevicesState {
  const DevicesFailed(this.message);
  final String message;
  @override
  List<Object?> get props => [message];
}

final class DevicesReady extends DevicesState {
  const DevicesReady({required this.filter, required this.devices});
  final String filter;
  final List<Device> devices;
  @override
  List<Object?> get props => [filter, devices];
}
