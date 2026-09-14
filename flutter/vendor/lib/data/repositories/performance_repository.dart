import 'package:safedealz_vendor/data/api/clients/operations_client.dart';
import 'package:safedealz_vendor/data/api/models/performance.dart';

abstract interface class PerformanceRepository {
  Future<Performance> load({String? from, String? to});
}

class PerformanceRepositoryImpl implements PerformanceRepository {
  PerformanceRepositoryImpl(this._client);
  final OperationsClient _client;

  @override
  Future<Performance> load({String? from, String? to}) async =>
      (await _client.getPerformance(from: from, to: to)).data;
}

class MemoryPerformanceRepository implements PerformanceRepository {
  MemoryPerformanceRepository([this.row]);
  Performance? row;

  @override
  Future<Performance> load({String? from, String? to}) async =>
      row ?? const Performance(bids: 4, wins: 1, acceptedPurchases: 1, winRate: 0.25, averageResponseSeconds: 12, hourly: []);
}
