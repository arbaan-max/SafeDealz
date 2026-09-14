import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/bloc/stores/assigned_stores_bloc.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/api/models/assigned_store.dart';
import 'package:safedealz_vendor/data/repositories/store_repository.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_vendor/view/widgets/html_kit.dart';

class AssignedStoresPage extends StatelessWidget {
  const AssignedStoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AssignedStoresBloc(context.read<StoreRepository>())
        ..add(const AssignedStoresStarted()),
      child: AppPageScaffold(
        title: 'Assigned stores',
        onBack: () => GoRouter.maybeOf(context)?.goNamed(accountRoute),
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
              return const SdNotice('No stores are assigned to this vendor account.');
            }
            final groups = <String, List<AssignedStore>>{};
            for (final store in stores) {
              groups.putIfAbsent(store.chainName, () => <AssignedStore>[]).add(store);
            }
            return ListView(
              children: [
                const SdNotice('You receive auctions only from assigned branches.'),
                for (final entry in groups.entries) ...[
                  SdSectionHead(entry.key),
                  for (final store in entry.value)
                    SdListRow(
                      icon: Icons.storefront_outlined,
                      title: store.name,
                      subtitle: [
                        if ((store.address ?? '').isNotEmpty) store.address!,
                        if ((store.city ?? '').isNotEmpty) store.city!,
                      ].join(', '),
                      onTap: () => context.goNamed(liveQueueRoute),
                    ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
