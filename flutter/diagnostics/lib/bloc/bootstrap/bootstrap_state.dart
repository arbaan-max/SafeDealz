part of 'bootstrap_bloc.dart';

sealed class BootstrapState extends Equatable {
  const BootstrapState();

  @override
  List<Object> get props => const <Object>[];
}

final class BootstrapInitial extends BootstrapState {
  const BootstrapInitial();
}

final class BootstrapReady extends BootstrapState {
  const BootstrapReady();
}
