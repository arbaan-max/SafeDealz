import 'package:safedealz_vendor/data/api/clients/operations_client.dart';
import 'package:safedealz_vendor/data/api/models/deal.dart';

abstract interface class DealRepository {
  Future<Deal> getDeal(String id);
  Future<List<Deal>> listDeals({String? deviceId});
}

class DealRepositoryImpl implements DealRepository {
  DealRepositoryImpl(this._client);
  final OperationsClient _client;

  @override
  Future<Deal> getDeal(String id) async => (await _client.getDeal(id: id)).data;

  @override
  Future<List<Deal>> listDeals({String? deviceId}) async => (await _client.listDeals(deviceId: deviceId)).data;
}

class MemoryDealRepository implements DealRepository {
  MemoryDealRepository(this.deal);
  Deal deal;

  @override
  Future<Deal> getDeal(String id) async => deal;

  @override
  Future<List<Deal>> listDeals({String? deviceId}) async => [deal];
}
