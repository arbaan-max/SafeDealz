import 'package:safedealz_store_manager/data/api/clients/organization_client.dart';
import 'package:safedealz_store_manager/data/api/models/branch.dart';

abstract interface class StoreRepository {
  Future<List<Branch>> listAssignedBranches();
}

class StoreRepositoryImpl implements StoreRepository {
  StoreRepositoryImpl(this._client);
  final OrganizationClient _client;

  @override
  Future<List<Branch>> listAssignedBranches() async => (await _client.listBranches()).data;
}

class MemoryStoreRepository implements StoreRepository {
  MemoryStoreRepository([this.branches]);
  final List<Branch>? branches;

  @override
  Future<List<Branch>> listAssignedBranches() async =>
      branches ??
      const [
        Branch(
          id: 'b1',
          chainId: 'c1',
          name: 'Indiranagar',
          code: 'PAI-IND',
          active: true,
          city: 'Bengaluru',
          address: '100 Feet Road, Indiranagar',
          beneficiaryName: 'PAI',
          accountNumberMasked: '•••• 4821',
        ),
      ];
}

String branchLabel(Branch? branch) {
  if (branch == null) return '';
  final chain = branch.code.contains('-') ? branch.code.split('-').first : branch.code;
  return '$chain / ${branch.name}';
}
