import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/data/api/models/device.dart';
import 'package:safedealz_store_manager/data/repositories/auction_repository.dart';
import 'package:safedealz_store_manager/data/repositories/deal_repository.dart';

String deviceStatusLabel(String status) => switch (status) {
      'draft' || 'inspecting' || 'ready_for_auction' => 'Drafts',
      'live' => 'Live',
      'awaiting_acceptance' => 'Offers ready',
      'needs_reauction' => 'Needs re-auction',
      'awaiting_pickup' => 'Awaiting pickup',
      'picked_up' => 'Picked up',
      _ => status.replaceAll('_', ' '),
    };

(String, String) deviceCardFooter(String status) {
  if (status == 'live') return ('Vendor bidding', 'Open');
  return ('Offer amount', 'View');
}

bool deviceMatchesFilter(String status, String filter) {
  if (filter == 'all') return true;
  if (filter == 'draft') return status == 'draft' || status == 'inspecting' || status == 'ready_for_auction';
  if (filter == 'live') return status == 'live';
  if (filter == 'offers') return status == 'awaiting_acceptance';
  if (filter == 'reauction') return status == 'needs_reauction';
  if (filter == 'pickup') return status == 'awaiting_pickup';
  if (filter == 'picked') return status == 'picked_up';
  return status == filter;
}

Future<void> openDeviceRecord(BuildContext context, Device device) async {
  if (device.status == 'draft' || device.status == 'inspecting' || device.status == 'ready_for_auction') {
    if (device.status == 'inspecting') {
      context.goNamed(inspectionRoute, pathParameters: {'id': device.id});
    } else if (device.status == 'ready_for_auction') {
      context.goNamed(reviewRoute, pathParameters: {'id': device.id});
    } else {
      context.goNamed(deviceEditRoute, pathParameters: {'id': device.id});
    }
    return;
  }
  if (device.status == 'live') {
    final rounds = await context.read<AuctionRepository>().listAuctions(deviceId: device.id, status: 'live');
    if (!context.mounted || rounds.isEmpty) return;
    context.goNamed(liveAuctionRoute, pathParameters: {'id': rounds.first.id});
    return;
  }
  if (device.status == 'awaiting_acceptance') {
    final rounds = await context.read<AuctionRepository>().listAuctions(deviceId: device.id, status: 'awaiting_acceptance');
    if (!context.mounted || rounds.isEmpty) return;
    context.goNamed(offerRoute, pathParameters: {'id': rounds.first.id});
    return;
  }
  if (device.status == 'needs_reauction') {
    final rounds = await context.read<AuctionRepository>().listAuctions(deviceId: device.id, status: 'needs_reauction');
    if (!context.mounted || rounds.isEmpty) return;
    context.goNamed(reauctionRoute, pathParameters: {'id': rounds.first.id});
    return;
  }
  if (device.status == 'awaiting_pickup' || device.status == 'picked_up') {
    final deals = await context.read<DealRepository>().listDeals(deviceId: device.id);
    if (!context.mounted || deals.isEmpty) return;
    context.goNamed(dealDetailRoute, pathParameters: {'id': deals.first.id});
  }
}
