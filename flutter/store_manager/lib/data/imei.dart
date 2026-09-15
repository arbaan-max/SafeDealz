import 'package:safedealz_store_manager/data/api/models/device_create_platform.dart';

/// GSMA IMEI is 15 decimal digits for GSM phones, including Apple and Android.
int imeiDigitCount(DeviceCreatePlatform platform) {
  switch (platform) {
    case DeviceCreatePlatform.apple:
    case DeviceCreatePlatform.android:
    case DeviceCreatePlatform.$unknown:
      return 15;
  }
}

bool isImei(String value, DeviceCreatePlatform platform) {
  final digits = value.trim();
  return RegExp('^\\d{${imeiDigitCount(platform)}}\$').hasMatch(digits);
}
