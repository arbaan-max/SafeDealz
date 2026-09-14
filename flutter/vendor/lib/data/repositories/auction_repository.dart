import 'package:safedealz_vendor/data/api/clients/operations_client.dart';
import 'package:safedealz_vendor/data/api/models/auction_round.dart';
import 'package:safedealz_vendor/data/api/models/bid.dart';
import 'package:safedealz_vendor/data/api/models/bid_status.dart';
import 'package:safedealz_vendor/data/api/models/bid_write.dart';
import 'package:safedealz_vendor/data/api/models/wallet_detail.dart';

abstract interface class AuctionRepository {
  Future<List<AuctionRound>> listLive();
  Future<AuctionRound> getAuction(String id);
  Future<Bid> placeBid(String auctionId, BidWrite body);
  Future<List<Bid>> listMyBids();
  Future<Bid> getBid(String id);
}

class AuctionRepositoryImpl implements AuctionRepository {
  AuctionRepositoryImpl(this._client);
  final OperationsClient _client;

  @override
  Future<List<AuctionRound>> listLive() async => (await _client.listAuctions(status: 'live')).data;

  @override
  Future<AuctionRound> getAuction(String id) async => (await _client.getAuction(id: id)).data;

  @override
  Future<Bid> placeBid(String auctionId, BidWrite body) async =>
      (await _client.placeAuctionBid(id: auctionId, body: body)).data;

  @override
  Future<List<Bid>> listMyBids() async => (await _client.listMyBids()).data;

  @override
  Future<Bid> getBid(String id) async => (await _client.getBid(id: id)).data;
}

class MemoryAuctionRepository implements AuctionRepository {
  MemoryAuctionRepository({this.rounds = const [], this.bids = const [], this.wallet});
  List<AuctionRound> rounds;
  List<Bid> bids;
  WalletDetail? wallet;

  @override
  Future<List<AuctionRound>> listLive() async => rounds;

  @override
  Future<AuctionRound> getAuction(String id) async => rounds.firstWhere((row) => row.id == id);

  @override
  Future<Bid> placeBid(String auctionId, BidWrite body) async {
    final feePaise = platformFeePaise(body.amountPaise);
    final bid = Bid(
      id: 'bid-${bids.length + 1}',
      roundId: auctionId,
      deviceId: rounds.isEmpty ? 'd1' : rounds.first.deviceId,
      vendorAccountId: 'v1',
      amountPaise: body.amountPaise,
      feePaise: feePaise,
      totalPaise: body.amountPaise + feePaise,
      status: BidStatus.submitted,
      basePaise: body.basePaise,
      cosmeticDeductionPaise: body.cosmeticDeductionPaise,
      batteryDeductionPaise: body.batteryDeductionPaise,
    );
    bids = [bid, ...bids];
    return bid;
  }

  @override
  Future<List<Bid>> listMyBids() async => bids;

  @override
  Future<Bid> getBid(String id) async => bids.firstWhere((row) => row.id == id);
}

int platformFeePaise(int bidPaise) {
  final rupees = bidPaise / 100;
  final rate = rupees <= 20000 ? 0.08 : rupees <= 30000 ? 0.07 : 0.06;
  return (bidPaise * rate).round();
}
