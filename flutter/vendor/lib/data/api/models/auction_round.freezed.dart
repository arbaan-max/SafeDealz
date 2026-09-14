// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_round.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuctionRound _$AuctionRoundFromJson(Map<String, dynamic> json) {
  return _AuctionRound.fromJson(json);
}

/// @nodoc
mixin _$AuctionRound {
  String get id => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get branchId => throw _privateConstructorUsedError;
  int get roundNumber => throw _privateConstructorUsedError;
  AuctionRoundStatus get status => throw _privateConstructorUsedError;
  DateTime get opensAt => throw _privateConstructorUsedError;
  DateTime get closesAt => throw _privateConstructorUsedError;
  DateTime? get acceptanceDeadlineAt => throw _privateConstructorUsedError;
  int? get biddingMinutes => throw _privateConstructorUsedError;
  int? get acceptanceMinutes => throw _privateConstructorUsedError;
  int? get bidCount => throw _privateConstructorUsedError;
  int? get highestAmountPaise => throw _privateConstructorUsedError;
  String? get winnerVendorAccountId => throw _privateConstructorUsedError;
  String? get cancelReason => throw _privateConstructorUsedError;
  String? get declineReason => throw _privateConstructorUsedError;
  int? get expectedAmountPaise => throw _privateConstructorUsedError;
  dynamic get device => throw _privateConstructorUsedError;
  dynamic get branch => throw _privateConstructorUsedError;
  Bid? get ownBid => throw _privateConstructorUsedError;
  Bid? get winnerBid => throw _privateConstructorUsedError;
  dynamic get winnerVendor => throw _privateConstructorUsedError;

  /// Serializes this AuctionRound to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionRound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionRoundCopyWith<AuctionRound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionRoundCopyWith<$Res> {
  factory $AuctionRoundCopyWith(
    AuctionRound value,
    $Res Function(AuctionRound) then,
  ) = _$AuctionRoundCopyWithImpl<$Res, AuctionRound>;
  @useResult
  $Res call({
    String id,
    String deviceId,
    String branchId,
    int roundNumber,
    AuctionRoundStatus status,
    DateTime opensAt,
    DateTime closesAt,
    DateTime? acceptanceDeadlineAt,
    int? biddingMinutes,
    int? acceptanceMinutes,
    int? bidCount,
    int? highestAmountPaise,
    String? winnerVendorAccountId,
    String? cancelReason,
    String? declineReason,
    int? expectedAmountPaise,
    dynamic device,
    dynamic branch,
    Bid? ownBid,
    Bid? winnerBid,
    dynamic winnerVendor,
  });

  $BidCopyWith<$Res>? get ownBid;
  $BidCopyWith<$Res>? get winnerBid;
}

/// @nodoc
class _$AuctionRoundCopyWithImpl<$Res, $Val extends AuctionRound>
    implements $AuctionRoundCopyWith<$Res> {
  _$AuctionRoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionRound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? branchId = null,
    Object? roundNumber = null,
    Object? status = null,
    Object? opensAt = null,
    Object? closesAt = null,
    Object? acceptanceDeadlineAt = freezed,
    Object? biddingMinutes = freezed,
    Object? acceptanceMinutes = freezed,
    Object? bidCount = freezed,
    Object? highestAmountPaise = freezed,
    Object? winnerVendorAccountId = freezed,
    Object? cancelReason = freezed,
    Object? declineReason = freezed,
    Object? expectedAmountPaise = freezed,
    Object? device = freezed,
    Object? branch = freezed,
    Object? ownBid = freezed,
    Object? winnerBid = freezed,
    Object? winnerVendor = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            deviceId: null == deviceId
                ? _value.deviceId
                : deviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            branchId: null == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as String,
            roundNumber: null == roundNumber
                ? _value.roundNumber
                : roundNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as AuctionRoundStatus,
            opensAt: null == opensAt
                ? _value.opensAt
                : opensAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            closesAt: null == closesAt
                ? _value.closesAt
                : closesAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            acceptanceDeadlineAt: freezed == acceptanceDeadlineAt
                ? _value.acceptanceDeadlineAt
                : acceptanceDeadlineAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            biddingMinutes: freezed == biddingMinutes
                ? _value.biddingMinutes
                : biddingMinutes // ignore: cast_nullable_to_non_nullable
                      as int?,
            acceptanceMinutes: freezed == acceptanceMinutes
                ? _value.acceptanceMinutes
                : acceptanceMinutes // ignore: cast_nullable_to_non_nullable
                      as int?,
            bidCount: freezed == bidCount
                ? _value.bidCount
                : bidCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            highestAmountPaise: freezed == highestAmountPaise
                ? _value.highestAmountPaise
                : highestAmountPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            winnerVendorAccountId: freezed == winnerVendorAccountId
                ? _value.winnerVendorAccountId
                : winnerVendorAccountId // ignore: cast_nullable_to_non_nullable
                      as String?,
            cancelReason: freezed == cancelReason
                ? _value.cancelReason
                : cancelReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            declineReason: freezed == declineReason
                ? _value.declineReason
                : declineReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            expectedAmountPaise: freezed == expectedAmountPaise
                ? _value.expectedAmountPaise
                : expectedAmountPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            device: freezed == device
                ? _value.device
                : device // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            branch: freezed == branch
                ? _value.branch
                : branch // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            ownBid: freezed == ownBid
                ? _value.ownBid
                : ownBid // ignore: cast_nullable_to_non_nullable
                      as Bid?,
            winnerBid: freezed == winnerBid
                ? _value.winnerBid
                : winnerBid // ignore: cast_nullable_to_non_nullable
                      as Bid?,
            winnerVendor: freezed == winnerVendor
                ? _value.winnerVendor
                : winnerVendor // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }

  /// Create a copy of AuctionRound
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BidCopyWith<$Res>? get ownBid {
    if (_value.ownBid == null) {
      return null;
    }

    return $BidCopyWith<$Res>(_value.ownBid!, (value) {
      return _then(_value.copyWith(ownBid: value) as $Val);
    });
  }

  /// Create a copy of AuctionRound
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BidCopyWith<$Res>? get winnerBid {
    if (_value.winnerBid == null) {
      return null;
    }

    return $BidCopyWith<$Res>(_value.winnerBid!, (value) {
      return _then(_value.copyWith(winnerBid: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuctionRoundImplCopyWith<$Res>
    implements $AuctionRoundCopyWith<$Res> {
  factory _$$AuctionRoundImplCopyWith(
    _$AuctionRoundImpl value,
    $Res Function(_$AuctionRoundImpl) then,
  ) = __$$AuctionRoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String deviceId,
    String branchId,
    int roundNumber,
    AuctionRoundStatus status,
    DateTime opensAt,
    DateTime closesAt,
    DateTime? acceptanceDeadlineAt,
    int? biddingMinutes,
    int? acceptanceMinutes,
    int? bidCount,
    int? highestAmountPaise,
    String? winnerVendorAccountId,
    String? cancelReason,
    String? declineReason,
    int? expectedAmountPaise,
    dynamic device,
    dynamic branch,
    Bid? ownBid,
    Bid? winnerBid,
    dynamic winnerVendor,
  });

  @override
  $BidCopyWith<$Res>? get ownBid;
  @override
  $BidCopyWith<$Res>? get winnerBid;
}

/// @nodoc
class __$$AuctionRoundImplCopyWithImpl<$Res>
    extends _$AuctionRoundCopyWithImpl<$Res, _$AuctionRoundImpl>
    implements _$$AuctionRoundImplCopyWith<$Res> {
  __$$AuctionRoundImplCopyWithImpl(
    _$AuctionRoundImpl _value,
    $Res Function(_$AuctionRoundImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionRound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? branchId = null,
    Object? roundNumber = null,
    Object? status = null,
    Object? opensAt = null,
    Object? closesAt = null,
    Object? acceptanceDeadlineAt = freezed,
    Object? biddingMinutes = freezed,
    Object? acceptanceMinutes = freezed,
    Object? bidCount = freezed,
    Object? highestAmountPaise = freezed,
    Object? winnerVendorAccountId = freezed,
    Object? cancelReason = freezed,
    Object? declineReason = freezed,
    Object? expectedAmountPaise = freezed,
    Object? device = freezed,
    Object? branch = freezed,
    Object? ownBid = freezed,
    Object? winnerBid = freezed,
    Object? winnerVendor = freezed,
  }) {
    return _then(
      _$AuctionRoundImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        deviceId: null == deviceId
            ? _value.deviceId
            : deviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        branchId: null == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as String,
        roundNumber: null == roundNumber
            ? _value.roundNumber
            : roundNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as AuctionRoundStatus,
        opensAt: null == opensAt
            ? _value.opensAt
            : opensAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        closesAt: null == closesAt
            ? _value.closesAt
            : closesAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        acceptanceDeadlineAt: freezed == acceptanceDeadlineAt
            ? _value.acceptanceDeadlineAt
            : acceptanceDeadlineAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        biddingMinutes: freezed == biddingMinutes
            ? _value.biddingMinutes
            : biddingMinutes // ignore: cast_nullable_to_non_nullable
                  as int?,
        acceptanceMinutes: freezed == acceptanceMinutes
            ? _value.acceptanceMinutes
            : acceptanceMinutes // ignore: cast_nullable_to_non_nullable
                  as int?,
        bidCount: freezed == bidCount
            ? _value.bidCount
            : bidCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        highestAmountPaise: freezed == highestAmountPaise
            ? _value.highestAmountPaise
            : highestAmountPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        winnerVendorAccountId: freezed == winnerVendorAccountId
            ? _value.winnerVendorAccountId
            : winnerVendorAccountId // ignore: cast_nullable_to_non_nullable
                  as String?,
        cancelReason: freezed == cancelReason
            ? _value.cancelReason
            : cancelReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        declineReason: freezed == declineReason
            ? _value.declineReason
            : declineReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        expectedAmountPaise: freezed == expectedAmountPaise
            ? _value.expectedAmountPaise
            : expectedAmountPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        device: freezed == device
            ? _value.device
            : device // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        branch: freezed == branch
            ? _value.branch
            : branch // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        ownBid: freezed == ownBid
            ? _value.ownBid
            : ownBid // ignore: cast_nullable_to_non_nullable
                  as Bid?,
        winnerBid: freezed == winnerBid
            ? _value.winnerBid
            : winnerBid // ignore: cast_nullable_to_non_nullable
                  as Bid?,
        winnerVendor: freezed == winnerVendor
            ? _value.winnerVendor
            : winnerVendor // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionRoundImpl implements _AuctionRound {
  const _$AuctionRoundImpl({
    required this.id,
    required this.deviceId,
    required this.branchId,
    required this.roundNumber,
    required this.status,
    required this.opensAt,
    required this.closesAt,
    this.acceptanceDeadlineAt,
    this.biddingMinutes,
    this.acceptanceMinutes,
    this.bidCount,
    this.highestAmountPaise,
    this.winnerVendorAccountId,
    this.cancelReason,
    this.declineReason,
    this.expectedAmountPaise,
    this.device,
    this.branch,
    this.ownBid,
    this.winnerBid,
    this.winnerVendor,
  });

  factory _$AuctionRoundImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionRoundImplFromJson(json);

  @override
  final String id;
  @override
  final String deviceId;
  @override
  final String branchId;
  @override
  final int roundNumber;
  @override
  final AuctionRoundStatus status;
  @override
  final DateTime opensAt;
  @override
  final DateTime closesAt;
  @override
  final DateTime? acceptanceDeadlineAt;
  @override
  final int? biddingMinutes;
  @override
  final int? acceptanceMinutes;
  @override
  final int? bidCount;
  @override
  final int? highestAmountPaise;
  @override
  final String? winnerVendorAccountId;
  @override
  final String? cancelReason;
  @override
  final String? declineReason;
  @override
  final int? expectedAmountPaise;
  @override
  final dynamic device;
  @override
  final dynamic branch;
  @override
  final Bid? ownBid;
  @override
  final Bid? winnerBid;
  @override
  final dynamic winnerVendor;

  @override
  String toString() {
    return 'AuctionRound(id: $id, deviceId: $deviceId, branchId: $branchId, roundNumber: $roundNumber, status: $status, opensAt: $opensAt, closesAt: $closesAt, acceptanceDeadlineAt: $acceptanceDeadlineAt, biddingMinutes: $biddingMinutes, acceptanceMinutes: $acceptanceMinutes, bidCount: $bidCount, highestAmountPaise: $highestAmountPaise, winnerVendorAccountId: $winnerVendorAccountId, cancelReason: $cancelReason, declineReason: $declineReason, expectedAmountPaise: $expectedAmountPaise, device: $device, branch: $branch, ownBid: $ownBid, winnerBid: $winnerBid, winnerVendor: $winnerVendor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionRoundImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.roundNumber, roundNumber) ||
                other.roundNumber == roundNumber) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.opensAt, opensAt) || other.opensAt == opensAt) &&
            (identical(other.closesAt, closesAt) ||
                other.closesAt == closesAt) &&
            (identical(other.acceptanceDeadlineAt, acceptanceDeadlineAt) ||
                other.acceptanceDeadlineAt == acceptanceDeadlineAt) &&
            (identical(other.biddingMinutes, biddingMinutes) ||
                other.biddingMinutes == biddingMinutes) &&
            (identical(other.acceptanceMinutes, acceptanceMinutes) ||
                other.acceptanceMinutes == acceptanceMinutes) &&
            (identical(other.bidCount, bidCount) ||
                other.bidCount == bidCount) &&
            (identical(other.highestAmountPaise, highestAmountPaise) ||
                other.highestAmountPaise == highestAmountPaise) &&
            (identical(other.winnerVendorAccountId, winnerVendorAccountId) ||
                other.winnerVendorAccountId == winnerVendorAccountId) &&
            (identical(other.cancelReason, cancelReason) ||
                other.cancelReason == cancelReason) &&
            (identical(other.declineReason, declineReason) ||
                other.declineReason == declineReason) &&
            (identical(other.expectedAmountPaise, expectedAmountPaise) ||
                other.expectedAmountPaise == expectedAmountPaise) &&
            const DeepCollectionEquality().equals(other.device, device) &&
            const DeepCollectionEquality().equals(other.branch, branch) &&
            (identical(other.ownBid, ownBid) || other.ownBid == ownBid) &&
            (identical(other.winnerBid, winnerBid) ||
                other.winnerBid == winnerBid) &&
            const DeepCollectionEquality().equals(
              other.winnerVendor,
              winnerVendor,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    deviceId,
    branchId,
    roundNumber,
    status,
    opensAt,
    closesAt,
    acceptanceDeadlineAt,
    biddingMinutes,
    acceptanceMinutes,
    bidCount,
    highestAmountPaise,
    winnerVendorAccountId,
    cancelReason,
    declineReason,
    expectedAmountPaise,
    const DeepCollectionEquality().hash(device),
    const DeepCollectionEquality().hash(branch),
    ownBid,
    winnerBid,
    const DeepCollectionEquality().hash(winnerVendor),
  ]);

  /// Create a copy of AuctionRound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionRoundImplCopyWith<_$AuctionRoundImpl> get copyWith =>
      __$$AuctionRoundImplCopyWithImpl<_$AuctionRoundImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionRoundImplToJson(this);
  }
}

abstract class _AuctionRound implements AuctionRound {
  const factory _AuctionRound({
    required final String id,
    required final String deviceId,
    required final String branchId,
    required final int roundNumber,
    required final AuctionRoundStatus status,
    required final DateTime opensAt,
    required final DateTime closesAt,
    final DateTime? acceptanceDeadlineAt,
    final int? biddingMinutes,
    final int? acceptanceMinutes,
    final int? bidCount,
    final int? highestAmountPaise,
    final String? winnerVendorAccountId,
    final String? cancelReason,
    final String? declineReason,
    final int? expectedAmountPaise,
    final dynamic device,
    final dynamic branch,
    final Bid? ownBid,
    final Bid? winnerBid,
    final dynamic winnerVendor,
  }) = _$AuctionRoundImpl;

  factory _AuctionRound.fromJson(Map<String, dynamic> json) =
      _$AuctionRoundImpl.fromJson;

  @override
  String get id;
  @override
  String get deviceId;
  @override
  String get branchId;
  @override
  int get roundNumber;
  @override
  AuctionRoundStatus get status;
  @override
  DateTime get opensAt;
  @override
  DateTime get closesAt;
  @override
  DateTime? get acceptanceDeadlineAt;
  @override
  int? get biddingMinutes;
  @override
  int? get acceptanceMinutes;
  @override
  int? get bidCount;
  @override
  int? get highestAmountPaise;
  @override
  String? get winnerVendorAccountId;
  @override
  String? get cancelReason;
  @override
  String? get declineReason;
  @override
  int? get expectedAmountPaise;
  @override
  dynamic get device;
  @override
  dynamic get branch;
  @override
  Bid? get ownBid;
  @override
  Bid? get winnerBid;
  @override
  dynamic get winnerVendor;

  /// Create a copy of AuctionRound
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionRoundImplCopyWith<_$AuctionRoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
