import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/bloc/auth/auth_bloc.dart';
import 'package:safedealz_store_manager/bloc/devices/devices_bloc.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/manager_bottom_nav.dart';

class DevicesPage extends StatelessWidget {
  const DevicesPage({super.key, this.initialFilter = 'draft'});
  final String initialFilter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DevicesBloc(
        context.read<DeviceRepository>(),
        initialFilter: initialFilter,
      ),
      child: AppPageScaffold(
        title: 'Devices',
        actions: [
          TextButton(
            onPressed: () {
              context.read<AuthBloc>().add(const AuthLogoutRequested());
              context.goNamed(loginRoute);
            },
            child: const Text('Logout'),
          ),
        ],
        bottomNavigationBar: const ManagerBottomNav(index: 1),
        body: BlocBuilder<DevicesBloc, DevicesState>(
          builder: (context, state) {
            final filter = state is DevicesReady ? state.filter : initialFilter;
            return Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Row(
                    children: [
                      for (final chip in const [
                        ('draft', 'Drafts'),
                        ('all', 'All'),
                        ('inspecting', 'Inspecting'),
                        ('ready', 'Ready for auction'),
                      ])
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: FilterChip(
                            label: Text(chip.$2),
                            selected: filter == chip.$1,
                            onSelected: (_) => context.read<DevicesBloc>().add(
                                  DevicesFilterChanged(chip.$1),
                                ),
                          ),
                        ),
                    ],
                  ),
                ),
                Expanded(child: _body(context, state)),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _body(BuildContext context, DevicesState state) {
    if (state is DevicesLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (state is DevicesFailed) {
      return Center(child: Text(state.message));
    }
    final devices = (state as DevicesReady).devices;
    if (devices.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(24),
        child: Text('No devices in this filter.'),
      );
    }
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        for (final device in devices)
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('${device.model} / ${device.storage}'),
            subtitle: Text('${device.platform.json ?? device.status} · ${device.status}'),
            onTap: () {
              if (device.status == 'draft') {
                context.goNamed(deviceEditRoute, pathParameters: {'id': device.id});
              } else if (device.status == 'inspecting') {
                context.goNamed(inspectionRoute, pathParameters: {'id': device.id});
              }
            },
          ),
      ],
    );
  }
}
