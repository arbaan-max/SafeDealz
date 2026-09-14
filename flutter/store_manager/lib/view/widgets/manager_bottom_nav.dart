import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';

class ManagerBottomNav extends StatelessWidget {
  const ManagerBottomNav({super.key, required this.index});
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
                _item(context, 0, Icons.home_outlined, 'Home', homeRoute),
                _item(context, 1, Icons.phone_iphone_outlined, 'Devices', devicesRoute),
                _item(context, 2, Icons.card_giftcard_outlined, 'Rewards', rewardsLookupRoute),
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
