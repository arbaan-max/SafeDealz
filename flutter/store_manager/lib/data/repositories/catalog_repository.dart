import 'package:safedealz_store_manager/data/api/clients/operations_client.dart';
import 'package:safedealz_store_manager/data/api/models/catalog.dart';
import 'package:safedealz_store_manager/data/api/models/catalog_evidence.dart';
import 'package:safedealz_store_manager/data/api/models/catalog_field.dart';
import 'package:safedealz_store_manager/data/api/models/catalog_step.dart';

abstract interface class CatalogRepository {
  Future<Catalog> load();
}

class CatalogRepositoryImpl implements CatalogRepository {
  CatalogRepositoryImpl(this._client);
  final OperationsClient _client;
  Catalog? _cached;

  @override
  Future<Catalog> load() async {
    _cached ??= (await _client.getCatalog()).data;
    return _cached!;
  }
}

class MemoryCatalogRepository implements CatalogRepository {
  MemoryCatalogRepository([this.catalog = demoCatalog]);
  final Catalog catalog;
  @override
  Future<Catalog> load() async => catalog;
}

const demoCatalog = Catalog(
  version: 'test',
  storages: ['64 GB', '128 GB', '256 GB', '512 GB', '1 TB'],
  rams: ['4 GB', '6 GB', '8 GB', '12 GB', '24 GB'],
  platforms: ['apple', 'android'],
  billAgeExemptOption: '11 months or older',
  inspectionFields: [
    CatalogField(key: 'sim1', label: 'SIM 1 working?', options: ['Yes', 'No']),
    CatalogField(key: 'sim2', label: 'SIM 2 working?', options: ['Yes', 'No', 'Not applicable']),
    CatalogField(key: 'esim', label: 'Supported SIM configuration', options: ['Single eSIM', 'Dual eSIM', 'Both physical SIM', 'Physical SIM + eSIM', 'Not available']),
    CatalogField(key: 'unknownDisplay', label: 'Display part status', options: ['Part is recognised', 'Unknown part detected'], appleOnly: true),
    CatalogField(key: 'deviceAge', label: 'Device age', options: ['Below 3 months', '3 to below 6 months', '6 to below 11 months', '11 months or older']),
    CatalogField(key: 'bill', label: 'Bill', options: ['Yes', 'No']),
  ],
  inspectionSteps: [
    CatalogStep(title: 'Basic & SIM', keys: ['sim1', 'sim2', 'esim']),
    CatalogStep(title: 'Screen condition', keys: []),
    CatalogStep(title: 'Body condition', keys: []),
    CatalogStep(title: 'Parts & security', keys: ['unknownDisplay']),
    CatalogStep(title: 'Accessories, origin & age', keys: ['deviceAge', 'bill']),
    CatalogStep(title: 'Functional checks', keys: []),
    CatalogStep(title: 'Camera checks', keys: []),
  ],
  evidence: [
    CatalogEvidence(purpose: 'rotation', label: '360° video'),
    CatalogEvidence(purpose: 'front', label: 'Front'),
    CatalogEvidence(purpose: 'back', label: 'Back'),
    CatalogEvidence(purpose: 'top', label: 'Top edge'),
    CatalogEvidence(purpose: 'bottom', label: 'Bottom edge'),
    CatalogEvidence(purpose: 'left', label: 'Left edge'),
    CatalogEvidence(purpose: 'right', label: 'Right edge'),
    CatalogEvidence(purpose: 'bill', label: 'Bill', billOnly: true),
  ],
  diagnosticChecks: [],
);
