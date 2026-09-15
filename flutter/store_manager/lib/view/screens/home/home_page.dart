import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
import 'package:safedealz_store_manager/view/widgets/sd_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime? _lastBackAt;

  Future<void> _onPopInvoked(bool didPop, Object? result) async {
    if (didPop) return;
    final now = DateTime.now();
    if (_lastBackAt != null && now.difference(_lastBackAt!) <= const Duration(seconds: 2)) {
      await SystemNavigator.pop();
      return;
    }
    _lastBackAt = now;
    try {
      await Fluttertoast.showToast(msg: 'Double tap back to close the app');
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: _onPopInvoked,
      child: BlocProvider(
        create: (_) => HomeBloc(
          context.read<AccountRepository>(),
          context.read<DeviceRepository>(),
          stores: maybeRead<StoreRepository>(context),
        )..add(const HomeStarted()),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            final ready = state is HomeReady ? state : null;
            final name = ready == null
                ? ''
                : ((ready.account.displayName ?? '').trim().isEmpty
                    ? ready.account.email
                    : ready.account.displayName!);
            final label = ready == null ? '' : branchLabel(ready.branch);
            return AppPageScaffold(
              title: label.isEmpty ? 'Home' : label,
              subtitle: name.isEmpty ? null : name,
              titleWidthFactor: 0.6,
              padBody: true,
              bottomNavigationBar: const ManagerBottomNav(index: 0),
              body: switch (state) {
                HomeLoading() => const Center(child: CircularProgressIndicator()),
                HomeFailed(:final message) => Center(child: Text(message)),
                HomeReady() => _HomeReadyBody(ready: ready!),
              },
            );
          },
        ),
      ),
    );
  }
}

class _HomeReadyBody extends StatelessWidget {
  const _HomeReadyBody({required this.ready});
  final HomeReady ready;

  @override
  Widget build(BuildContext context) {
    final label = branchLabel(ready.branch);
    final offer = ready.offers.isEmpty ? null : ready.offers.first;
    final canTradeIn = (ready.account.assignedBranchIds ?? const []).isNotEmpty;
    return ListView(
      children: [
        SdCard(
          tint: true,
          onTap: canTradeIn ? () => context.goNamed(deviceNewRoute) : null,
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: canTradeIn ? AppTheme.skyBlue : AppTheme.border,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(SdIcons.plus, color: Colors.white),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New trade-in', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                    SizedBox(height: 2),
                    Text('Capture a device and start bidding', style: TextStyle(fontSize: 12, color: AppTheme.muted)),
                  ],
                ),
              ),
              const Icon(SdIcons.caretRight, color: AppTheme.muted),
            ],
          ),
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
                icon: SdIcons.clock,
                value: '${ready.liveCount}',
                label: 'Live auctions',
                onTap: () => context.goNamed(devicesRoute, queryParameters: {'filter': 'live'}),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: SdStatButton(
                icon: SdIcons.storefront,
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
  }
}
