import 'package:safedealz_vendor/data/api/models/bid_status.dart';
import 'package:safedealz_vendor/data/api/models/deal_status.dart';
import 'package:safedealz_vendor/view/widgets/html_kit.dart';

String remainingClock(DateTime? until) {
  if (until == null) return '00:00';
  final sec = until.difference(DateTime.now()).inSeconds;
  final safe = sec < 0 ? 0 : sec;
  final minutes = (safe ~/ 60).toString().padLeft(2, '0');
  final seconds = (safe % 60).toString().padLeft(2, '0');
  return '$minutes:$seconds';
}

String deviceModel(dynamic device) {
  final map = asStringMap(device);
  return (map['model'] ?? map['name'] ?? 'Device').toString();
}

String deviceStorage(dynamic device) {
  final map = asStringMap(device);
  final storage = map['storage']?.toString() ?? '';
  return storage.isEmpty ? '128 GB' : storage;
}

String branchLine(dynamic branch, {String fallback = 'Assigned store'}) {
  final map = asStringMap(branch);
  final chain = (map['chainName'] ?? map['chain'] ?? '').toString();
  final name = (map['name'] ?? map['branchName'] ?? '').toString();
  if (chain.isNotEmpty && name.isNotEmpty) return '$chain / $name';
  if (name.isNotEmpty) return name;
  if (chain.isNotEmpty) return chain;
  return fallback;
}

String deviceSubtitle(dynamic device, dynamic branch) {
  return '${deviceStorage(device)} / ${branchLine(branch, fallback: 'Your stores')}';
}

String bidStatusLabel(BidStatus status) {
  return switch (status) {
    BidStatus.submitted => 'Submitted',
    BidStatus.won => 'Accepted',
    BidStatus.lost => 'Not selected',
    BidStatus.released => 'Funds released',
    BidStatus.committed => 'Paid',
    _ => status.json ?? status.name,
  };
}

String dealStatusLabel(DealStatus status) {
  return switch (status) {
    DealStatus.pickedUp => 'Picked up',
    DealStatus.paid => 'Awaiting pickup',
    DealStatus.verified => 'Payment processing',
    DealStatus.awaitingCustomerVerification => 'Payment processing',
    _ => status.json ?? status.name,
  };
}

String maskImei(String? value) {
  final digits = (value ?? '').replaceAll(RegExp(r'\D'), '');
  if (digits.length < 4) return 'Not recorded';
  return '•••••••••••${digits.substring(digits.length - 4)}';
}
