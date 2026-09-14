import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/bloc/auth/auth_bloc.dart';
import 'package:safedealz_vendor/bloc/stores/assigned_stores_bloc.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/api/models/assigned_store.dart';
import 'package:safedealz_vendor/data/repositories/store_repository.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

class AssignedStoresPage extends StatelessWidget {
  const AssignedStoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AssignedStoresBloc(context.read<StoreRepository>())
        ..add(const AssignedStoresStarted()),
      child: AppPageScaffold(
        title: 'Assigned stores',
        actions: [
          PopupMenuButton<String>(
            tooltip: 'More',
            onSelected: (value) {
              if (value == 'live') context.goNamed(liveQueueRoute);
              if (value == 'bids') context.goNamed(myBidsRoute);
              if (value == 'wallet') context.goNamed(walletRoute);
              if (value == 'performance') context.goNamed(performanceRoute);
              if (value == 'account') context.goNamed(accountRoute);
              if (value == 'logout') {
                context.read<AuthBloc>().add(const AuthLogoutRequested());
                context.goNamed(loginRoute);
              }
            },
            itemBuilder: (context) => const [
              PopupMenuItem(value: 'live', child: Text('Live auctions')),
              PopupMenuItem(value: 'bids', child: Text('My bids')),
              PopupMenuItem(value: 'wallet', child: Text('Wallet')),
              PopupMenuItem(value: 'performance', child: Text('Performance')),
              PopupMenuItem(value: 'account', child: Text('Account')),
              PopupMenuItem(value: 'logout', child: Text('Logout')),
            ],
          ),
        ],
        body: BlocBuilder<AssignedStoresBloc, AssignedStoresState>(
          builder: (context, state) {
            if (state is AssignedStoresLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is AssignedStoresFailed) {
              return Center(child: Text(state.message));
            }
            final stores = (state as AssignedStoresReady).stores;
            if (stores.isEmpty) {
              return const Padding(
                padding: EdgeInsets.all(24),
                child: Text('No stores are assigned to this vendor account.'),
              );
            }
            final groups = <String, List<AssignedStore>>{};
            for (final store in stores) {
              groups
                  .putIfAbsent(store.chainName, () => <AssignedStore>[])
                  .add(store);
            }
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    'You receive auctions only from assigned branches.',
                  ),
                ),
                for (final entry in groups.entries) ...[
                  Text(
                    entry.key,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  for (final store in entry.value)
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.storefront_outlined),
                      title: Text(store.name),
                      subtitle: Text(
                        [
                          if ((store.address ?? '').isNotEmpty) store.address!,
                          if ((store.city ?? '').isNotEmpty) store.city!,
                          if ((store.contactName ?? '').isNotEmpty)
                            store.contactName!,
                        ].join(', '),
                      ),
                    ),
                  const SizedBox(height: 16),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
