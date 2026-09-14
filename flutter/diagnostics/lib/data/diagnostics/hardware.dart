import 'package:permission_handler/permission_handler.dart';
import 'package:safedealz_diagnostics/data/diagnostics/models.dart';

abstract interface class DiagnosticsHardware {
  bool get online;
  Future<DeviceIdentity?> readIdentity();
  Future<PermissionSnapshot> requestPermissions();
  Future<List<CheckItem>> runAutomated(PermissionSnapshot permissions);
  Future<List<CheckItem>> runButtons();
  Future<List<CheckItem>> runSensors(PermissionSnapshot permissions);
}

class ConfigurableDiagnosticsHardware implements DiagnosticsHardware {
  const ConfigurableDiagnosticsHardware({
    this.identity = const DeviceIdentity(
      model: 'Pixel 8',
      imei1: '353456789012345',
      imei2: '353456789012346',
    ),
    this.permissions = const PermissionSnapshot(
      camera: true,
      microphone: true,
      location: true,
      bluetooth: true,
    ),
    this.online = true,
    this.automated,
    this.buttons,
    this.sensors,
  });

  final DeviceIdentity? identity;
  final PermissionSnapshot permissions;
  @override
  final bool online;
  final List<CheckItem>? automated;
  final List<CheckItem>? buttons;
  final List<CheckItem>? sensors;

  @override
  Future<DeviceIdentity?> readIdentity() async => identity;

  @override
  Future<PermissionSnapshot> requestPermissions() async => permissions;

  @override
  Future<List<CheckItem>> runAutomated(PermissionSnapshot granted) async {
    if (automated != null) return automated!;
    return [
      const CheckItem(
        id: 'imei',
        label: 'IMEI 1 and IMEI 2',
        outcome: CheckOutcome.passed,
      ),
      const CheckItem(id: 'wifi', label: 'Wi-Fi', outcome: CheckOutcome.passed),
      CheckItem(
        id: 'bluetooth',
        label: 'Bluetooth',
        outcome: granted.bluetooth
            ? CheckOutcome.passed
            : CheckOutcome.unavailable,
      ),
      CheckItem(
        id: 'gps',
        label: 'GPS / network',
        outcome: granted.location
            ? CheckOutcome.passed
            : CheckOutcome.unavailable,
      ),
      const CheckItem(
        id: 'battery',
        label: 'Battery / charging',
        outcome: CheckOutcome.passed,
      ),
      const CheckItem(
        id: 'magnetometer',
        label: 'Magnetometer',
        outcome: CheckOutcome.unavailable,
      ),
    ];
  }

  @override
  Future<List<CheckItem>> runButtons() async =>
      buttons ??
      const [
        CheckItem(
          id: 'volumeUp',
          label: 'Volume up',
          outcome: CheckOutcome.passed,
        ),
        CheckItem(
          id: 'volumeDown',
          label: 'Volume down',
          outcome: CheckOutcome.passed,
        ),
        CheckItem(
          id: 'power',
          label: 'Power / screen lock',
          outcome: CheckOutcome.passed,
        ),
        CheckItem(
          id: 'home',
          label: 'Home / back / recent',
          outcome: CheckOutcome.unavailable,
        ),
      ];

  @override
  Future<List<CheckItem>> runSensors(PermissionSnapshot granted) async =>
      sensors ??
      [
        CheckItem(
          id: 'frontCamera',
          label: 'Front camera',
          outcome: granted.camera
              ? CheckOutcome.passed
              : CheckOutcome.unavailable,
        ),
        CheckItem(
          id: 'backCamera',
          label: 'Back camera',
          outcome: granted.camera
              ? CheckOutcome.passed
              : CheckOutcome.unavailable,
        ),
        CheckItem(
          id: 'microphone',
          label: 'Microphone',
          outcome: granted.microphone
              ? CheckOutcome.passed
              : CheckOutcome.unavailable,
        ),
        const CheckItem(
          id: 'speaker',
          label: 'Receiver / speaker',
          outcome: CheckOutcome.passed,
        ),
        const CheckItem(
          id: 'vibration',
          label: 'Vibration',
          outcome: CheckOutcome.passed,
        ),
        const CheckItem(
          id: 'proximity',
          label: 'Proximity',
          outcome: CheckOutcome.unavailable,
        ),
        const CheckItem(
          id: 'gyroscope',
          label: 'Gyroscope',
          outcome: CheckOutcome.passed,
        ),
      ];
}

class DemoDiagnosticsHardware extends ConfigurableDiagnosticsHardware {
  const DemoDiagnosticsHardware() : super();
}

class AndroidDiagnosticsHardware extends ConfigurableDiagnosticsHardware {
  const AndroidDiagnosticsHardware() : super();

  @override
  Future<PermissionSnapshot> requestPermissions() async {
    final camera = await Permission.camera.request();
    final microphone = await Permission.microphone.request();
    final location = await Permission.locationWhenInUse.request();
    final bluetooth = await Permission.bluetoothConnect.request();
    final scan = await Permission.bluetoothScan.request();
    return PermissionSnapshot(
      camera: camera.isGranted,
      microphone: microphone.isGranted,
      location: location.isGranted,
      bluetooth: bluetooth.isGranted || scan.isGranted,
    );
  }
}
