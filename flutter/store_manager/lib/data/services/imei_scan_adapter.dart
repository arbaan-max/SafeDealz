class ScannedImeis {
  const ScannedImeis({required this.imei1, required this.imei2});
  final String imei1;
  final String imei2;
}

abstract interface class ImeiScanAdapter {
  Future<ScannedImeis?> scan();
}

class DemoImeiScanAdapter implements ImeiScanAdapter {
  const DemoImeiScanAdapter();

  @override
  Future<ScannedImeis?> scan() async => const ScannedImeis(
        imei1: '012345678901234',
        imei2: '012345678901235',
      );
}
