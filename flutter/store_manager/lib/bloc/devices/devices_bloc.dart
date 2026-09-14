import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/data/api/models/device.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/view/widgets/device_flow.dart';

part 'devices_event.dart';
part 'devices_state.dart';

class DevicesBloc extends Bloc<DevicesEvent, DevicesState> {
  DevicesBloc(this._devices, {String initialFilter = 'all'})
      : super(const DevicesLoading()) {
    on<DevicesStarted>(_load);
    on<DevicesFilterChanged>(_filter);
    on<DevicesSearchChanged>(_search);
    add(DevicesStarted(initialFilter));
  }

  final DeviceRepository _devices;
  String _filterKey = 'all';
  String _query = '';
  List<Device> _all = const [];

  Future<void> _load(DevicesStarted event, Emitter<DevicesState> emit) async {
    _filterKey = event.filter;
    await _refresh(emit);
  }

  Future<void> _filter(
    DevicesFilterChanged event,
    Emitter<DevicesState> emit,
  ) async {
    _filterKey = event.filter;
    emit(_ready());
  }

  void _search(DevicesSearchChanged event, Emitter<DevicesState> emit) {
    _query = event.query;
    emit(_ready());
  }

  Future<void> _refresh(Emitter<DevicesState> emit) async {
    emit(const DevicesLoading());
    try {
      _all = await _devices.listDevices();
      emit(_ready());
    } catch (error) {
      emit(DevicesFailed(apiErrorMessage(error)));
    }
  }

  DevicesReady _ready() {
    final needle = _query.trim().toLowerCase();
    final devices = _all.where((device) {
      if (!deviceMatchesFilter(device.status, _filterKey)) return false;
      if (needle.isEmpty) return true;
      return device.model.toLowerCase().contains(needle) ||
          device.imei1.contains(needle) ||
          device.imei2.contains(needle);
    }).toList();
    return DevicesReady(filter: _filterKey, devices: devices, query: _query);
  }
}
