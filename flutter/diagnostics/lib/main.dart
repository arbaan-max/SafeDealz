import 'package:safedealz_diagnostics/app/app.dart';
import 'package:safedealz_diagnostics/app/start.dart';
import 'package:safedealz_diagnostics/core/network/dio_factory.dart';
import 'package:safedealz_diagnostics/data/api/clients/operations_client.dart';

Future<void> main() async => startApplication(
      () => SafeDealzApp(operations: OperationsClient(DioFactory.create())),
    );
