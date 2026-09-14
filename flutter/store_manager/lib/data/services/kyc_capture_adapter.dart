abstract interface class KycCaptureAdapter {
  Future<bool> captureId();
  Future<bool> capturePortrait();
}

class DemoKycCaptureAdapter implements KycCaptureAdapter {
  const DemoKycCaptureAdapter();

  @override
  Future<bool> captureId() async => true;

  @override
  Future<bool> capturePortrait() async => true;
}
