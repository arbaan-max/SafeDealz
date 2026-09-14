import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_vendor/data/api/models/assigned_store.dart';
import 'package:safedealz_vendor/data/repositories/store_repository.dart';

part 'assigned_stores_event.dart';
part 'assigned_stores_state.dart';

class AssignedStoresBloc
    extends Bloc<AssignedStoresEvent, AssignedStoresState> {
  AssignedStoresBloc(this._repository) : super(const AssignedStoresLoading()) {
    on<AssignedStoresStarted>(_load);
  }

  final StoreRepository _repository;

  Future<void> _load(
    AssignedStoresStarted event,
    Emitter<AssignedStoresState> emit,
  ) async {
    emit(const AssignedStoresLoading());
    try {
      final stores = await _repository.listAssignedStores();
      emit(AssignedStoresReady(stores));
    } catch (_) {
      emit(const AssignedStoresFailed('Unable to load assigned stores.'));
    }
  }
}
