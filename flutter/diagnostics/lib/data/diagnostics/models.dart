enum CheckOutcome { passed, failed, unavailable }

class CheckItem {
  const CheckItem({
    required this.id,
    required this.label,
    required this.outcome,
  });
  final String id;
  final String label;
  final CheckOutcome outcome;

  String get labelWithOutcome => switch (outcome) {
        CheckOutcome.passed => '$label: Passed',
        CheckOutcome.failed => '$label: Failed',
        CheckOutcome.unavailable => '$label: Unavailable',
      };
}

class DeviceIdentity {
  const DeviceIdentity({
    required this.model,
    required this.imei1,
    required this.imei2,
    this.unsupported = false,
  });
  final String model;
  final String imei1;
  final String imei2;
  final bool unsupported;
  String get imei1Suffix =>
      imei1.length >= 4 ? imei1.substring(imei1.length - 4) : imei1;
  String get imei2Suffix =>
      imei2.length >= 4 ? imei2.substring(imei2.length - 4) : imei2;
}

class TouchCoverage {
  TouchCoverage({
    this.total = 120,
    Set<int>? cleared,
    this.attempts = 1,
  }) : cleared = {...?cleared};

  final int total;
  final Set<int> cleared;
  int attempts;

  int get remaining => total - cleared.length;
  int get percent =>
      total == 0 ? 0 : ((cleared.length / total) * 100).round();
  bool get canSubmit => percent >= 90;

  void clearAt(int index) {
    if (index >= 0 && index < total) {
      cleared.add(index);
    }
  }

  TouchCoverage copy() =>
      TouchCoverage(total: total, cleared: cleared, attempts: attempts);

  TouchCoverage retried() => TouchCoverage(total: total, attempts: attempts + 1);
}

class PermissionSnapshot {
  const PermissionSnapshot({
    this.camera = false,
    this.microphone = false,
    this.location = false,
    this.bluetooth = false,
  });
  final bool camera;
  final bool microphone;
  final bool location;
  final bool bluetooth;
  bool get allGranted => camera && microphone && location && bluetooth;
  bool get noneGranted => !camera && !microphone && !location && !bluetooth;
  String get summary {
    if (allGranted) {
      return 'All required permissions granted.';
    }
    if (noneGranted) {
      return 'Permissions denied. Hardware checks stay Unavailable.';
    }
    return 'Some permissions were denied. Related checks stay Unavailable.';
  }
}
