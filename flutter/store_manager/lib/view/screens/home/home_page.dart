import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/bloc/auth/auth_bloc.dart';
import 'package:safedealz_store_manager/bloc/home/home_bloc.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/repositories/account_repository.dart';
import 'package:safedealz_store_manager/data/repositories/device_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/manager_bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(
        context.read<AccountRepository>(),
        context.read<DeviceRepository>(),
      )..add(const HomeStarted()),
      child: AppPageScaffold(
        title: 'SafeDealz',
        actions: [
          TextButton(
            onPressed: () {
              context.read<AuthBloc>().add(const AuthLogoutRequested());
              context.goNamed(loginRoute);
            },
            child: const Text('Logout'),
          ),
        ],
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
            final branches = ready.account.assignedBranchIds ?? const <String>[];
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Text('Hello, $name', style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 8),
                Text(
                  branches.isEmpty ? 'No store assigned' : 'Your assigned store is ready for intake.',
                ),
                const SizedBox(height: 16),
                FilledButton.icon(
                  onPressed: branches.isEmpty
                      ? null
                      : () => context.goNamed(deviceNewRoute),
                  icon: const Icon(Icons.add),
                  label: const Text('New trade-in'),
                ),
                const SizedBox(height: 24),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Offers ready'),
                  trailing: const Text('View all'),
                  onTap: () => context.goNamed(
                    devicesRoute,
                    queryParameters: {'filter': 'all'},
                  ),
                ),
                const SizedBox(height: 8),
                Text('Recent devices', style: Theme.of(context).textTheme.titleMedium),
                if (ready.recent.isEmpty)
                  const Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Text('No devices yet. Start a new trade-in.'),
                  )
                else
                  for (final device in ready.recent)
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('${device.model} / ${device.storage}'),
                      subtitle: Text(device.status),
                      onTap: device.status == 'draft'
                          ? () => context.goNamed(
                                deviceEditRoute,
                                pathParameters: {'id': device.id},
                              )
                          : device.status == 'inspecting'
                              ? () => context.goNamed(
                                    inspectionRoute,
                                    pathParameters: {'id': device.id},
                                  )
                              : null,
                    ),
              ],
            );
          },
        ),
      ),
    );
  }
}
