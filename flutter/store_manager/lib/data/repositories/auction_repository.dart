import 'package:safedealz_store_manager/data/api/clients/operations_client.dart';
import 'package:safedealz_store_manager/data/api/models/auction_cancel_write.dart';
import 'package:safedealz_store_manager/data/api/models/auction_decline_write.dart';
import 'package:safedealz_store_manager/data/api/models/auction_decline_write_reason_code.dart';
import 'package:safedealz_store_manager/data/api/models/auction_rebid_write.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round.dart';
import 'package:safedealz_store_manager/data/api/models/auction_round_status.dart';
import 'package:safedealz_store_manager/data/api/models/data3.dart';

abstract interface class AuctionRepository {
  Future<AuctionRound> startAuction(String deviceId);
  Future<AuctionRound> getAuction(String id);
  Future<List<AuctionRound>> listAuctions({String? deviceId, String? status});
  Future<AuctionRound> cancelAuction(String id, String reason);
  Future<AuctionRound> tickAndReload(String id);
  Future<AuctionRound> declineAuction(String id, AuctionDeclineWrite body);
  Future<Data3> rebidAuction(String id, int expectedAmountPaise);
}

class AuctionRepositoryImpl implements AuctionRepository {
  AuctionRepositoryImpl(this._client);
  final OperationsClient _client;

  @override
  Future<AuctionRound> startAuction(String deviceId) async {
    final response = await _client.startDeviceAuction(id: deviceId);
    return response.data;
  }

  @override
  Future<AuctionRound> getAuction(String id) async {
    final response = await _client.getAuction(id: id);
    return response.data;
  }

  @override
  Future<List<AuctionRound>> listAuctions({String? deviceId, String? status}) async {
    final response = await _client.listAuctions(deviceId: deviceId, status: status);
    return response.data;
  }

  @override
  Future<AuctionRound> cancelAuction(String id, String reason) async {
    final response = await _client.cancelAuction(id: id, body: AuctionCancelWrite(reason: reason));
    return response.data;
  }

  @override
  Future<AuctionRound> tickAndReload(String id) async {
    await _client.tickAuctions();
    return getAuction(id);
  }

  @override
  Future<AuctionRound> declineAuction(String id, AuctionDeclineWrite body) async {
    final response = await _client.declineAuction(id: id, body: body);
    return response.data;
  }

  @override
  Future<Data3> rebidAuction(String id, int expectedAmountPaise) async {
    final response = await _client.rebidAuction(
      id: id,
      body: AuctionRebidWrite(expectedAmountPaise: expectedAmountPaise),
    );
    return response.data;
  }
}

class MemoryAuctionRepository implements AuctionRepository {
  MemoryAuctionRepository(this.round);
  AuctionRound round;
  AuctionRound? nextRound;

  @override
  Future<AuctionRound> startAuction(String deviceId) async => round;

  @override
  Future<AuctionRound> getAuction(String id) async => round;

  @override
  Future<List<AuctionRound>> listAuctions({String? deviceId, String? status}) async => [round];

  @override
  Future<AuctionRound> cancelAuction(String id, String reason) async {
    round = round.copyWith(status: AuctionRoundStatus.cancelled, cancelReason: reason);
    return round;
  }

  @override
  Future<AuctionRound> tickAndReload(String id) async => round;

  @override
  Future<AuctionRound> declineAuction(String id, AuctionDeclineWrite body) async {
    final reason = body.reasonCode == AuctionDeclineWriteReasonCode.other
        ? (body.reason ?? '')
        : (body.reasonCode.json ?? body.reasonCode.name);
    round = round.copyWith(status: AuctionRoundStatus.needsReauction, declineReason: reason);
    return round;
  }

  @override
  Future<Data3> rebidAuction(String id, int expectedAmountPaise) async {
    final previous = round.copyWith(
      status: AuctionRoundStatus.needsReauction,
      declineReason: 'Rebid requested',
      expectedAmountPaise: expectedAmountPaise,
    );
    final next = (nextRound ?? round).copyWith(
      id: 'a2',
      roundNumber: round.roundNumber + 1,
      status: AuctionRoundStatus.live,
      expectedAmountPaise: expectedAmountPaise,
    );
    round = previous;
    nextRound = next;
    return Data3(previous: previous, next: next);
  }
}
