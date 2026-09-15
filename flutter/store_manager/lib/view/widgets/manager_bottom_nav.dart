import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/view/widgets/sd_icons.dart';

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
                _item(context, 0, SdIcons.house, SdIcons.houseFill, 'Home', homeRoute),
                _item(context, 1, SdIcons.devices, SdIcons.devicesFill, 'Devices', devicesRoute),
                _item(context, 2, SdIcons.gift, SdIcons.giftFill, 'Rewards', rewardsLookupRoute),
                _item(context, 3, SdIcons.user, SdIcons.userFill, 'Account', accountRoute),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _item(
    BuildContext context,
    int value,
    IconData icon,
    IconData selectedIcon,
    String label,
    String route,
  ) {
    final selected = index == value;
    final color = selected ? AppTheme.skyBlue : AppTheme.muted;
    return Expanded(
      child: InkWell(
        onTap: () => context.goNamed(route),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(selected ? selectedIcon : icon, color: color, size: 22),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(fontSize: 11, fontWeight: selected ? FontWeight.w700 : FontWeight.w500, color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
