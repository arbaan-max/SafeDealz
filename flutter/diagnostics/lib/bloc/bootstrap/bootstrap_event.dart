part of 'bootstrap_bloc.dart';

sealed class BootstrapEvent extends Equatable {
  const BootstrapEvent();

  @override
  List<Object> get props => const <Object>[];
}

final class BootstrapStarted extends BootstrapEvent {
  const BootstrapStarted();
}
