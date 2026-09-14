import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/data/api/models/account_summary.dart';
import 'package:safedealz_store_manager/data/api/models/device.dart';
import 'package:safedealz_store_manager/data/repositories/account_repository.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._accounts, this._devices) : super(const HomeLoading()) {
    on<HomeStarted>(_load);
  }

  final AccountRepository _accounts;
  final DeviceRepository _devices;

  Future<void> _load(HomeStarted event, Emitter<HomeState> emit) async {
    emit(const HomeLoading());
    try {
      final account = await _accounts.currentAccount();
      final devices = await _devices.listDevices();
      emit(HomeReady(account: account, recent: devices.take(5).toList()));
    } catch (error) {
      emit(HomeFailed(apiErrorMessage(error)));
    }
  }
}
