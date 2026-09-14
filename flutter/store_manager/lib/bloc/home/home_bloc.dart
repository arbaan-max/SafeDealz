import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/data/api/models/account_summary.dart';
import 'package:safedealz_store_manager/data/api/models/branch.dart';
import 'package:safedealz_store_manager/data/api/models/device.dart';
import 'package:safedealz_store_manager/data/repositories/account_repository.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/data/repositories/store_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._accounts, this._devices, {StoreRepository? stores})
      : _stores = stores,
        super(const HomeLoading()) {
    on<HomeStarted>(_load);
  }

  final AccountRepository _accounts;
  final DeviceRepository _devices;
  final StoreRepository? _stores;

  Future<void> _load(HomeStarted event, Emitter<HomeState> emit) async {
    emit(const HomeLoading());
    try {
      final account = await _accounts.currentAccount();
      final devices = await _devices.listDevices();
      Branch? branch;
      try {
        final branches = await _stores?.listAssignedBranches() ?? const <Branch>[];
        if (branches.isNotEmpty) {
          final assigned = account.assignedBranchIds ?? const <String>[];
          branch = branches.firstWhere(
            (item) => assigned.isEmpty || assigned.contains(item.id),
            orElse: () => branches.first,
          );
        }
      } catch (_) {}
      emit(
        HomeReady(
          account: account,
          branch: branch,
          recent: devices.take(5).toList(),
          offers: devices.where((device) => device.status == 'awaiting_acceptance').toList(),
          liveCount: devices.where((device) => device.status == 'live').length,
          pickupCount: devices.where((device) => device.status == 'awaiting_pickup').length,
        ),
      );
    } catch (error) {
      emit(HomeFailed(apiErrorMessage(error)));
    }
  }
}
