import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/api/models/device.dart';
import 'package:safedealz_store_manager/data/api/models/device_create.dart';
import 'package:safedealz_store_manager/data/api/models/device_platform.dart';
import 'package:safedealz_store_manager/data/api/models/device_update.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/data/services/diagnostic_qr_scan_adapter.dart';
import 'package:safedealz_store_manager/data/services/evidence_capture_adapter.dart';
import 'package:safedealz_store_manager/view/screens/devices/diagnostic_scan_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/review_page.dart';

class _Devices implements DeviceRepository {
  _Devices(this.device);
  Device device;
  Map<String, dynamic>? imported;
  @override
  Future<List<Device>> listDevices({String? status}) async => [device];
  @override
  Future<Device> createDevice(DeviceCreate body) async => device;
  @override
  Future<Device> getDevice(String id) async => device;
  @override
  Future<Device> updateDevice(String id, DeviceUpdate body) async => device;
  @override
  Future<Device> saveInspection(String id, Map<String, String> answers, {bool complete = false}) async => device;
  @override
  Future<void> uploadEvidence(String deviceId, CapturedEvidence evidence) async {}
  @override
  Future<void> importDiagnostic(String deviceId, Map<String, dynamic> payload, String signature) async {
    imported = payload;
    device = device.copyWith(status: 'ready_for_auction');
  }
}

void main() {
  const android = Device(
    id: 'd1',
    branchId: 'b1',
    platform: DevicePlatform.android,
    model: 'Pixel 8',
    imei1: '353456789012345',
    imei2: '353456789012346',
    storage: '128 GB',
    ram: '8 GB',
    status: 'awaiting_diagnostics',
  );

  testWidgets('M09 shows pending diagnostics for Android', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: RepositoryProvider<DeviceRepository>.value(
          value: _Devices(android),
          child: const ReviewPage(deviceId: 'd1'),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Pending'), findsOneWidget);
    expect(find.text('Continue to diagnostics'), findsOneWidget);
    expect(find.text('Store manager inspection'), findsOneWidget);
    expect(find.text('Device Diagnostics report'), findsOneWidget);
  });

  testWidgets('M09 shows Not applicable for Apple', (tester) async {
    const apple = Device(
      id: 'a1',
      branchId: 'b1',
      platform: DevicePlatform.apple,
      model: 'iPhone 14',
      imei1: '012345678901234',
      imei2: '012345678901235',
      storage: '128 GB',
      status: 'ready_for_auction',
      batteryHealth: 91,
    );
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: RepositoryProvider<DeviceRepository>.value(
          value: _Devices(apple),
          child: const ReviewPage(deviceId: 'a1'),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Not applicable'), findsOneWidget);
    expect(find.text('Review and start auction'), findsOneWidget);
    expect(find.text('Continue to diagnostics'), findsNothing);
  });

  testWidgets('M07 scan imports diagnostic payload', (tester) async {
    final devices = _Devices(android);
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: RepositoryProvider<DeviceRepository>.value(
          value: devices,
          child: DiagnosticScanPage(
            deviceId: 'd1',
            adapter: DemoDiagnosticQrScanAdapter(
              result: ScannedDiagnosticQr(
                payload: const {'imei1': '353456789012345', 'imei2': '353456789012346'},
                signature: 'sig',
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Scan completed result QR'));
    await tester.pumpAndSettle();
    expect(find.text('Imported'), findsOneWidget);
    expect(devices.imported?['imei1'], '353456789012345');
  });
}
