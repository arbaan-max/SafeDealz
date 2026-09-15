import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/api/models/device.dart';
import 'package:safedealz_store_manager/data/api/models/device_create.dart';
import 'package:safedealz_store_manager/data/api/models/device_platform.dart';
import 'package:safedealz_store_manager/data/api/models/device_update.dart';
import 'package:safedealz_store_manager/data/repositories/catalog_repository.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/data/services/evidence_capture_adapter.dart';
import 'package:safedealz_store_manager/view/screens/devices/camera_page.dart';
import 'package:safedealz_store_manager/view/screens/devices/inspection_page.dart';

const _apple = Device(
  id: 'd1',
  branchId: 'b1',
  platform: DevicePlatform.apple,
  model: 'iPhone 14',
  imei1: '012345678901234',
  imei2: '012345678901235',
  storage: '128 GB',
  status: 'inspecting',
  batteryHealth: 91,
);

class _Devices implements DeviceRepository {
  Device device = _apple;
  CapturedEvidence? lastUpload;

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
  Future<void> uploadEvidence(String deviceId, CapturedEvidence evidence) async {
    lastUpload = evidence;
  }
  @override
  Future<void> importDiagnostic(String deviceId, Map<String, dynamic> payload, String signature) async {}
}

class _DeniedCapture implements EvidenceCaptureAdapter {
  @override
  Future<CapturedEvidence> capture(String purpose) async {
    throw const EvidencePermissionDenied();
  }
}

class _OkCapture implements EvidenceCaptureAdapter {
  @override
  Future<CapturedEvidence> capture(String purpose) =>
      const DemoEvidenceCaptureAdapter().capture(purpose);
}

void main() {
  testWidgets('M04 uses AppPageScaffold token and has no RGB inspection', (
    tester,
  ) async {
    const Color token = Color(0xFFE0F2FE);
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightThemeWith(background: token),
        home: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<DeviceRepository>.value(value: _Devices()),
            RepositoryProvider<CatalogRepository>.value(value: MemoryCatalogRepository()),
          ],
          child: const InspectionPage(deviceId: 'd1'),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor, token);
    expect(find.textContaining('2 of 9'), findsOneWidget);
    expect(find.text('Basic & SIM'), findsWidgets);
    expect(find.text('SIM 1 working?'), findsOneWidget);
    expect(find.textContaining('RGB'), findsNothing);
    expect(find.textContaining('white screen'), findsNothing);
    expect(find.textContaining('Colour-screen'), findsNothing);
  });

  testWidgets('Apple M04 keeps SIM fields and hides battery on step 1', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<DeviceRepository>.value(value: _Devices()),
            RepositoryProvider<CatalogRepository>.value(value: MemoryCatalogRepository()),
          ],
          child: const InspectionPage(deviceId: 'd1'),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('SIM 1 working?'), findsOneWidget);
    expect(find.text('Display part status'), findsNothing);
    expect(find.textContaining('Entered battery health'), findsNothing);
  });

  testWidgets('M06 shows permission denied and can retake via adapter', (
    tester,
  ) async {
    final devices = _Devices();
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: RepositoryProvider<DeviceRepository>.value(
          value: devices,
          child: CameraPage(
            deviceId: 'd1',
            purpose: 'front',
            adapter: _DeniedCapture(),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Capture'));
    await tester.pumpAndSettle();
    expect(find.text('Camera permission denied.'), findsOneWidget);

    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: RepositoryProvider<DeviceRepository>.value(
          value: devices,
          child: CameraPage(
            deviceId: 'd1',
            purpose: 'front',
            adapter: _OkCapture(),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Capture'));
    await tester.pumpAndSettle();
    expect(find.text('Preview ready'), findsOneWidget);
    await tester.tap(find.text('Retake'));
    await tester.pumpAndSettle();
    expect(devices.lastUpload?.purpose, 'front');
  });
}
