String formatPaise(int? paise) {
  final value = (paise ?? 0) / 100;
  return '₹${value.toStringAsFixed(value.truncateToDouble() == value ? 0 : 2)}';
}
