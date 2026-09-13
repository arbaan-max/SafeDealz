import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bootstrap_event.dart';
part 'bootstrap_state.dart';

class BootstrapBloc extends Bloc<BootstrapEvent, BootstrapState> {
  BootstrapBloc() : super(const BootstrapInitial()) {
    on<BootstrapStarted>(_onStarted);
  }

  void _onStarted(BootstrapStarted event, Emitter<BootstrapState> emit) {
    emit(const BootstrapReady());
  }
}
