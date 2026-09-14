import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/bloc/home/home_bloc.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/read_maybe.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/repositories/account_repository.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/data/repositories/store_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/device_flow.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';
import 'package:safedealz_store_manager/view/widgets/manager_bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(
        context.read<AccountRepository>(),
        context.read<DeviceRepository>(),
        stores: maybeRead<StoreRepository>(context),
      )..add(const HomeStarted()),
      child: AppPageScaffold(
        title: 'Home',
        brand: true,
        padBody: true,
        bottomNavigationBar: const ManagerBottomNav(index: 0),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is HomeFailed) {
              return Center(child: Text(state.message));
            }
            final ready = state as HomeReady;
            final name = (ready.account.displayName ?? '').trim().isEmpty
                ? ready.account.email
                : ready.account.displayName!;
            final label = branchLabel(ready.branch);
            final offer = ready.offers.isEmpty ? null : ready.offers.first;
            return ListView(
              children: [
                if (label.isNotEmpty)
                  Text(label.toUpperCase(), style: const TextStyle(fontSize: 11, letterSpacing: 0.8, color: AppTheme.muted)),
                Padding(
                  padding: const EdgeInsets.only(top: 7, bottom: 21),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Hello, $name', style: Theme.of(context).textTheme.headlineMedium),
                      ),
                      SdAvatar(initialsFor(name)),
                    ],
                  ),
                ),
                FilledButton.icon(
                  onPressed: (ready.account.assignedBranchIds ?? const []).isEmpty
                      ? null
                      : () => context.goNamed(deviceNewRoute),
                  icon: const Icon(Icons.add),
                  label: const Text('New trade-in'),
                ),
                const SizedBox(height: 24),
                SdSectionHead(
                  'Ready for your decision',
                  action: 'View all',
                  onAction: () => context.goNamed(devicesRoute, queryParameters: {'filter': 'offers'}),
                ),
                if (offer == null)
                  const SdNotice('No offers waiting. New trade-ins will appear here when vendors bid.')
                else
                  SdDeviceCard(
                    title: offer.model,
                    subtitle: '${offer.storage} / ${label.isEmpty ? 'Your store' : label}',
                    status: deviceStatusLabel(offer.status),
                    footerLabel: deviceCardFooter(offer.status).$1,
                    footerValue: deviceCardFooter(offer.status).$2,
                    onTap: () => openDeviceRecord(context, offer),
                  ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: SdStatButton(
                        icon: Icons.schedule,
                        value: '${ready.liveCount}',
                        label: 'Live auctions',
                        onTap: () => context.goNamed(devicesRoute, queryParameters: {'filter': 'live'}),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: SdStatButton(
                        icon: Icons.storefront_outlined,
                        value: '${ready.pickupCount}',
                        label: 'Awaiting pickup',
                        onTap: () => context.goNamed(devicesRoute, queryParameters: {'filter': 'pickup'}),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                SdSectionHead(
                  'Recent devices',
                  action: 'All devices',
                  onAction: () => context.goNamed(devicesRoute, queryParameters: {'filter': 'all'}),
                ),
                if (ready.recent.isEmpty)
                  const SdNotice('No devices yet. Start a new trade-in.')
                else
                  for (final device in ready.recent)
                    SdDeviceCard(
                      title: device.model,
                      subtitle: '${device.storage} / ${label.isEmpty ? 'Your store' : label}',
                      status: deviceStatusLabel(device.status),
                      footerLabel: deviceCardFooter(device.status).$1,
                      footerValue: deviceCardFooter(device.status).$2,
                      onTap: () => openDeviceRecord(context, device),
                    ),
              ],
            );
          },
        ),
      ),
    );
  }
}
