import 'package:safedealz_vendor/data/api/clients/organization_client.dart';
import 'package:safedealz_vendor/data/api/models/assigned_store.dart';

abstract interface class StoreRepository {
  Future<List<AssignedStore>> listAssignedStores();
}

class StoreRepositoryImpl implements StoreRepository {
  StoreRepositoryImpl(this._client);
  final OrganizationClient _client;

  @override
  Future<List<AssignedStore>> listAssignedStores() async {
    final response = await _client.listAssignedStores();
    return response.data;
  }
}
