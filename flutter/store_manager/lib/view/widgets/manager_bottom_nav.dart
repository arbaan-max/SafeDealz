import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';

class ManagerBottomNav extends StatelessWidget {
  const ManagerBottomNav({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: index,
      onDestinationSelected: (value) {
        if (value == 0) context.goNamed(homeRoute);
        if (value == 1) context.goNamed(devicesRoute);
      },
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
        NavigationDestination(
          icon: Icon(Icons.phone_iphone_outlined),
          label: 'Devices',
        ),
        NavigationDestination(
          icon: Icon(Icons.card_giftcard_outlined),
          label: 'Rewards',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_outline),
          label: 'Account',
        ),
      ],
    );
  }
}
