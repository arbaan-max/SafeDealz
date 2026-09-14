import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/bloc/devices/devices_bloc.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/device_flow.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';
import 'package:safedealz_store_manager/view/widgets/manager_bottom_nav.dart';

class DevicesPage extends StatelessWidget {
  const DevicesPage({super.key, this.initialFilter = 'all'});
  final String initialFilter;

  static const chips = <(String, String)>[
    ('all', 'All'),
    ('draft', 'Drafts'),
    ('live', 'Live'),
    ('offers', 'Offers ready'),
    ('reauction', 'Needs re-auction'),
    ('pickup', 'Awaiting pickup'),
    ('picked', 'Picked up'),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DevicesBloc(
        context.read<DeviceRepository>(),
        initialFilter: initialFilter,
      ),
      child: AppPageScaffold(
        title: 'Devices',
        padBody: true,
        bottomNavigationBar: const ManagerBottomNav(index: 1),
        actionBar: FilledButton.icon(
          onPressed: () => context.goNamed(deviceNewRoute),
          icon: const Icon(Icons.add),
          label: const Text('New trade-in'),
        ),
        body: BlocBuilder<DevicesBloc, DevicesState>(
          builder: (context, state) {
            final filter = state is DevicesReady ? state.filter : initialFilter;
            return Column(
              children: [
                SdSearchField(
                  hint: 'Search model or IMEI',
                  onChanged: (value) => context.read<DevicesBloc>().add(DevicesSearchChanged(value)),
                ),
                SdChipBar(
                  chips: chips,
                  selected: filter,
                  onSelected: (value) => context.read<DevicesBloc>().add(DevicesFilterChanged(value)),
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
        padding: EdgeInsets.only(top: 12),
        child: Text('No devices in this filter.'),
      );
    }
    return ListView(
      children: [
        for (final device in devices)
          SdDeviceCard(
            title: device.model,
            subtitle: '${device.storage} / ${deviceStatusLabel(device.status)}',
            status: deviceStatusLabel(device.status),
            footerLabel: deviceCardFooter(device.status).$1,
            footerValue: deviceCardFooter(device.status).$2,
            onTap: () => openDeviceRecord(context, device),
          ),
      ],
    );
  }
}
