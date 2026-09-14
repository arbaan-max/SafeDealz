import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';

class VendorBottomNav extends StatelessWidget {
  const VendorBottomNav({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppTheme.surface,
      child: Container(
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: AppTheme.border))),
        child: SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 10),
            child: Row(
              children: [
                _item(context, 0, Icons.flash_on_outlined, 'Live', liveQueueRoute),
                _item(context, 1, Icons.gavel_outlined, 'My bids', myBidsRoute),
                _item(context, 2, Icons.account_balance_wallet_outlined, 'Wallet', walletRoute),
                _item(context, 3, Icons.person_outline, 'Account', accountRoute),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _item(BuildContext context, int value, IconData icon, String label, String route) {
    final selected = index == value;
    final color = selected ? AppTheme.skyBlue : AppTheme.muted;
    return Expanded(
      child: InkWell(
        onTap: () => context.goNamed(route),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color, size: 22),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(fontSize: 11, fontWeight: selected ? FontWeight.w700 : FontWeight.w500, color: color),
            ),
          ],
        ),
      ),
    );
  }
}
