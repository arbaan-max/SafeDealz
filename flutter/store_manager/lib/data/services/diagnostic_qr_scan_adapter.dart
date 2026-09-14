class ScannedDiagnosticQr {
  const ScannedDiagnosticQr({required this.payload, required this.signature});
  final Map<String, dynamic> payload;
  final String signature;
}

abstract interface class DiagnosticQrScanAdapter {
  Future<ScannedDiagnosticQr?> scan();
}

class DemoDiagnosticQrScanAdapter implements DiagnosticQrScanAdapter {
  const DemoDiagnosticQrScanAdapter({this.result});
  final ScannedDiagnosticQr? result;

  @override
  Future<ScannedDiagnosticQr?> scan() async => result;
}
