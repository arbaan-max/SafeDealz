import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/data/api/models/device.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';

part 'devices_event.dart';
part 'devices_state.dart';

class DevicesBloc extends Bloc<DevicesEvent, DevicesState> {
  DevicesBloc(this._devices, {String initialFilter = 'draft'})
      : super(const DevicesLoading()) {
    on<DevicesStarted>(_load);
    on<DevicesFilterChanged>(_filter);
    add(DevicesStarted(initialFilter));
  }

  final DeviceRepository _devices;
  String _filterKey = 'draft';

  Future<void> _load(DevicesStarted event, Emitter<DevicesState> emit) async {
    _filterKey = event.filter;
    await _refresh(emit);
  }

  Future<void> _filter(
    DevicesFilterChanged event,
    Emitter<DevicesState> emit,
  ) async {
    _filterKey = event.filter;
    await _refresh(emit);
  }

  Future<void> _refresh(Emitter<DevicesState> emit) async {
    emit(const DevicesLoading());
    try {
      final status = switch (_filterKey) {
        'all' => null,
        'inspecting' => 'inspecting',
        'ready' => 'ready_for_auction',
        _ => 'draft',
      };
      final items = await _devices.listDevices(status: status);
      emit(DevicesReady(filter: _filterKey, devices: items));
    } catch (error) {
      emit(DevicesFailed(apiErrorMessage(error)));
    }
  }
}
