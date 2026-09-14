import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_store_manager/bloc/auth/auth_bloc.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/api/models/account_role.dart';
import 'package:safedealz_store_manager/data/api/models/account_summary.dart';
import 'package:safedealz_store_manager/data/api/models/device.dart';
import 'package:safedealz_store_manager/data/api/models/device_create.dart';
import 'package:safedealz_store_manager/data/api/models/device_update.dart';
import 'package:safedealz_store_manager/data/repositories/account_repository.dart';
import 'package:safedealz_store_manager/data/repositories/auth_repository.dart';
import 'package:safedealz_store_manager/data/repositories/catalog_repository.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/data/services/evidence_capture_adapter.dart';
import 'package:safedealz_store_manager/data/services/imei_scan_adapter.dart';
import 'package:safedealz_store_manager/view/screens/devices/device_identity_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/devices_page.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';

class _EmptyDevices implements DeviceRepository {
  @override
  Future<List<Device>> listDevices({String? status}) async => const [];
  @override
  Future<Device> createDevice(DeviceCreate body) async => throw UnimplementedError();
  @override
  Future<Device> getDevice(String id) async => throw UnimplementedError();
  @override
  Future<Device> updateDevice(String id, DeviceUpdate body) async =>
      throw UnimplementedError();
  @override
  Future<Device> saveInspection(String id, Map<String, String> answers, {bool complete = false}) async =>
      throw UnimplementedError();
  @override
  Future<void> uploadEvidence(String deviceId, CapturedEvidence evidence) async {}
  @override
  Future<void> importDiagnostic(String deviceId, Map<String, dynamic> payload, String signature) async {}
}

class _AssignedAccount implements AccountRepository {
  @override
  Future<AccountSummary> currentAccount() async => const AccountSummary(
        id: '1',
        email: 'kavya@test.dev',
        role: AccountRole.storeManager,
        displayName: 'Kavya',
        assignedBranchIds: ['b1'],
      );
}

class _FakeAuth implements AuthRepository {
  @override
  Future<void> login(String email, String password) async {}
  @override
  Future<void> logout() async {}
}

class _FakeScan implements ImeiScanAdapter {
  @override
  Future<ScannedImeis?> scan() async => const ScannedImeis(
        imei1: '012345678901234',
        imei2: '012345678901235',
      );
}

void main() {
  testWidgets('AppPageScaffold uses the ThemeData app-background extension', (
    tester,
  ) async {
    const Color token = Color(0xFFE0F2FE);
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightThemeWith(background: token),
        home: const AppPageScaffold(title: 'Devices', body: Text('Body')),
      ),
    );
    expect(tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor, token);
    expect(find.text('Devices'), findsOneWidget);
  });

  testWidgets('M02 shows empty filter copy', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<DeviceRepository>.value(value: _EmptyDevices()),
          ],
          child: BlocProvider<AuthBloc>(
            create: (_) => AuthBloc(_FakeAuth()),
            child: const DevicesPage(),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('No devices in this filter.'), findsOneWidget);
    expect(find.text('Drafts'), findsOneWidget);
  });

  testWidgets('M03 hides RAM for Apple and battery for Android', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<AccountRepository>.value(value: _AssignedAccount()),
            RepositoryProvider<DeviceRepository>.value(value: _EmptyDevices()),
            RepositoryProvider<CatalogRepository>.value(value: MemoryCatalogRepository()),
            RepositoryProvider<ImeiScanAdapter>.value(value: _FakeScan()),
          ],
          child: const DeviceIdentityPage(),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Battery health'), findsOneWidget);
    expect(find.text('RAM'), findsNothing);
    await tester.tap(find.text('Apple'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Android').last);
    await tester.pumpAndSettle();
    expect(find.text('RAM'), findsOneWidget);
    expect(find.text('Battery health'), findsNothing);
  });

  testWidgets('M03 scan fills both IMEIs and they stay editable', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<AccountRepository>.value(value: _AssignedAccount()),
            RepositoryProvider<DeviceRepository>.value(value: _EmptyDevices()),
            RepositoryProvider<CatalogRepository>.value(value: MemoryCatalogRepository()),
            RepositoryProvider<ImeiScanAdapter>.value(value: _FakeScan()),
          ],
          child: DeviceIdentityPage(scanAdapter: _FakeScan()),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('Scan IMEIs'));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(TextFormField, '012345678901234'), findsOneWidget);
    await tester.enterText(find.widgetWithText(TextFormField, '012345678901234'), '353456789012345');
    await tester.pump();
    expect(find.widgetWithText(TextFormField, '353456789012345'), findsOneWidget);
    expect(find.widgetWithText(TextFormField, '012345678901235'), findsOneWidget);
  });
}
