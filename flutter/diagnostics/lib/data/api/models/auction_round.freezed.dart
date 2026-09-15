// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_round.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuctionRound {

 String get id; String get deviceId; String get branchId; int get roundNumber; AuctionRoundStatus get status; DateTime get opensAt; DateTime get closesAt; DateTime? get acceptanceDeadlineAt; int? get biddingMinutes; int? get acceptanceMinutes; int? get bidCount; int? get highestAmountPaise; String? get winnerVendorAccountId; String? get cancelReason; String? get declineReason; int? get expectedAmountPaise; dynamic get device; dynamic get branch; Bid? get ownBid; Bid? get winnerBid; dynamic get winnerVendor;
/// Create a copy of AuctionRound
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionRoundCopyWith<AuctionRound> get copyWith => _$AuctionRoundCopyWithImpl<AuctionRound>(this as AuctionRound, _$identity);

  /// Serializes this AuctionRound to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionRound&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.roundNumber, roundNumber) || other.roundNumber == roundNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.opensAt, opensAt) || other.opensAt == opensAt)&&(identical(other.closesAt, closesAt) || other.closesAt == closesAt)&&(identical(other.acceptanceDeadlineAt, acceptanceDeadlineAt) || other.acceptanceDeadlineAt == acceptanceDeadlineAt)&&(identical(other.biddingMinutes, biddingMinutes) || other.biddingMinutes == biddingMinutes)&&(identical(other.acceptanceMinutes, acceptanceMinutes) || other.acceptanceMinutes == acceptanceMinutes)&&(identical(other.bidCount, bidCount) || other.bidCount == bidCount)&&(identical(other.highestAmountPaise, highestAmountPaise) || other.highestAmountPaise == highestAmountPaise)&&(identical(other.winnerVendorAccountId, winnerVendorAccountId) || other.winnerVendorAccountId == winnerVendorAccountId)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason)&&(identical(other.declineReason, declineReason) || other.declineReason == declineReason)&&(identical(other.expectedAmountPaise, expectedAmountPaise) || other.expectedAmountPaise == expectedAmountPaise)&&const DeepCollectionEquality().equals(other.device, device)&&const DeepCollectionEquality().equals(other.branch, branch)&&(identical(other.ownBid, ownBid) || other.ownBid == ownBid)&&(identical(other.winnerBid, winnerBid) || other.winnerBid == winnerBid)&&const DeepCollectionEquality().equals(other.winnerVendor, winnerVendor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,deviceId,branchId,roundNumber,status,opensAt,closesAt,acceptanceDeadlineAt,biddingMinutes,acceptanceMinutes,bidCount,highestAmountPaise,winnerVendorAccountId,cancelReason,declineReason,expectedAmountPaise,const DeepCollectionEquality().hash(device),const DeepCollectionEquality().hash(branch),ownBid,winnerBid,const DeepCollectionEquality().hash(winnerVendor)]);

@override
String toString() {
  return 'AuctionRound(id: $id, deviceId: $deviceId, branchId: $branchId, roundNumber: $roundNumber, status: $status, opensAt: $opensAt, closesAt: $closesAt, acceptanceDeadlineAt: $acceptanceDeadlineAt, biddingMinutes: $biddingMinutes, acceptanceMinutes: $acceptanceMinutes, bidCount: $bidCount, highestAmountPaise: $highestAmountPaise, winnerVendorAccountId: $winnerVendorAccountId, cancelReason: $cancelReason, declineReason: $declineReason, expectedAmountPaise: $expectedAmountPaise, device: $device, branch: $branch, ownBid: $ownBid, winnerBid: $winnerBid, winnerVendor: $winnerVendor)';
}


}

/// @nodoc
abstract mixin class $AuctionRoundCopyWith<$Res>  {
  factory $AuctionRoundCopyWith(AuctionRound value, $Res Function(AuctionRound) _then) = _$AuctionRoundCopyWithImpl;
@useResult
$Res call({
 String id, String deviceId, String branchId, int roundNumber, AuctionRoundStatus status, DateTime opensAt, DateTime closesAt, DateTime? acceptanceDeadlineAt, int? biddingMinutes, int? acceptanceMinutes, int? bidCount, int? highestAmountPaise, String? winnerVendorAccountId, String? cancelReason, String? declineReason, int? expectedAmountPaise, dynamic device, dynamic branch, Bid? ownBid, Bid? winnerBid, dynamic winnerVendor
});


$BidCopyWith<$Res>? get ownBid;$BidCopyWith<$Res>? get winnerBid;

}
/// @nodoc
class _$AuctionRoundCopyWithImpl<$Res>
    implements $AuctionRoundCopyWith<$Res> {
  _$AuctionRoundCopyWithImpl(this._self, this._then);

  final AuctionRound _self;
  final $Res Function(AuctionRound) _then;

/// Create a copy of AuctionRound
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? deviceId = null,Object? branchId = null,Object? roundNumber = null,Object? status = null,Object? opensAt = null,Object? closesAt = null,Object? acceptanceDeadlineAt = freezed,Object? biddingMinutes = freezed,Object? acceptanceMinutes = freezed,Object? bidCount = freezed,Object? highestAmountPaise = freezed,Object? winnerVendorAccountId = freezed,Object? cancelReason = freezed,Object? declineReason = freezed,Object? expectedAmountPaise = freezed,Object? device = freezed,Object? branch = freezed,Object? ownBid = freezed,Object? winnerBid = freezed,Object? winnerVendor = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,roundNumber: null == roundNumber ? _self.roundNumber : roundNumber // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuctionRoundStatus,opensAt: null == opensAt ? _self.opensAt : opensAt // ignore: cast_nullable_to_non_nullable
as DateTime,closesAt: null == closesAt ? _self.closesAt : closesAt // ignore: cast_nullable_to_non_nullable
as DateTime,acceptanceDeadlineAt: freezed == acceptanceDeadlineAt ? _self.acceptanceDeadlineAt : acceptanceDeadlineAt // ignore: cast_nullable_to_non_nullable
as DateTime?,biddingMinutes: freezed == biddingMinutes ? _self.biddingMinutes : biddingMinutes // ignore: cast_nullable_to_non_nullable
as int?,acceptanceMinutes: freezed == acceptanceMinutes ? _self.acceptanceMinutes : acceptanceMinutes // ignore: cast_nullable_to_non_nullable
as int?,bidCount: freezed == bidCount ? _self.bidCount : bidCount // ignore: cast_nullable_to_non_nullable
as int?,highestAmountPaise: freezed == highestAmountPaise ? _self.highestAmountPaise : highestAmountPaise // ignore: cast_nullable_to_non_nullable
as int?,winnerVendorAccountId: freezed == winnerVendorAccountId ? _self.winnerVendorAccountId : winnerVendorAccountId // ignore: cast_nullable_to_non_nullable
as String?,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,declineReason: freezed == declineReason ? _self.declineReason : declineReason // ignore: cast_nullable_to_non_nullable
as String?,expectedAmountPaise: freezed == expectedAmountPaise ? _self.expectedAmountPaise : expectedAmountPaise // ignore: cast_nullable_to_non_nullable
as int?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as dynamic,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as dynamic,ownBid: freezed == ownBid ? _self.ownBid : ownBid // ignore: cast_nullable_to_non_nullable
as Bid?,winnerBid: freezed == winnerBid ? _self.winnerBid : winnerBid // ignore: cast_nullable_to_non_nullable
as Bid?,winnerVendor: freezed == winnerVendor ? _self.winnerVendor : winnerVendor // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of AuctionRound
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BidCopyWith<$Res>? get ownBid {
    if (_self.ownBid == null) {
    return null;
  }

  return $BidCopyWith<$Res>(_self.ownBid!, (value) {
    return _then(_self.copyWith(ownBid: value));
  });
}/// Create a copy of AuctionRound
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BidCopyWith<$Res>? get winnerBid {
    if (_self.winnerBid == null) {
    return null;
  }

  return $BidCopyWith<$Res>(_self.winnerBid!, (value) {
    return _then(_self.copyWith(winnerBid: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuctionRound].
extension AuctionRoundPatterns on AuctionRound {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionRound value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionRound() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionRound value)  $default,){
final _that = this;
switch (_that) {
case _AuctionRound():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionRound value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionRound() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String deviceId,  String branchId,  int roundNumber,  AuctionRoundStatus status,  DateTime opensAt,  DateTime closesAt,  DateTime? acceptanceDeadlineAt,  int? biddingMinutes,  int? acceptanceMinutes,  int? bidCount,  int? highestAmountPaise,  String? winnerVendorAccountId,  String? cancelReason,  String? declineReason,  int? expectedAmountPaise,  dynamic device,  dynamic branch,  Bid? ownBid,  Bid? winnerBid,  dynamic winnerVendor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionRound() when $default != null:
return $default(_that.id,_that.deviceId,_that.branchId,_that.roundNumber,_that.status,_that.opensAt,_that.closesAt,_that.acceptanceDeadlineAt,_that.biddingMinutes,_that.acceptanceMinutes,_that.bidCount,_that.highestAmountPaise,_that.winnerVendorAccountId,_that.cancelReason,_that.declineReason,_that.expectedAmountPaise,_that.device,_that.branch,_that.ownBid,_that.winnerBid,_that.winnerVendor);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String deviceId,  String branchId,  int roundNumber,  AuctionRoundStatus status,  DateTime opensAt,  DateTime closesAt,  DateTime? acceptanceDeadlineAt,  int? biddingMinutes,  int? acceptanceMinutes,  int? bidCount,  int? highestAmountPaise,  String? winnerVendorAccountId,  String? cancelReason,  String? declineReason,  int? expectedAmountPaise,  dynamic device,  dynamic branch,  Bid? ownBid,  Bid? winnerBid,  dynamic winnerVendor)  $default,) {final _that = this;
switch (_that) {
case _AuctionRound():
return $default(_that.id,_that.deviceId,_that.branchId,_that.roundNumber,_that.status,_that.opensAt,_that.closesAt,_that.acceptanceDeadlineAt,_that.biddingMinutes,_that.acceptanceMinutes,_that.bidCount,_that.highestAmountPaise,_that.winnerVendorAccountId,_that.cancelReason,_that.declineReason,_that.expectedAmountPaise,_that.device,_that.branch,_that.ownBid,_that.winnerBid,_that.winnerVendor);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String deviceId,  String branchId,  int roundNumber,  AuctionRoundStatus status,  DateTime opensAt,  DateTime closesAt,  DateTime? acceptanceDeadlineAt,  int? biddingMinutes,  int? acceptanceMinutes,  int? bidCount,  int? highestAmountPaise,  String? winnerVendorAccountId,  String? cancelReason,  String? declineReason,  int? expectedAmountPaise,  dynamic device,  dynamic branch,  Bid? ownBid,  Bid? winnerBid,  dynamic winnerVendor)?  $default,) {final _that = this;
switch (_that) {
case _AuctionRound() when $default != null:
return $default(_that.id,_that.deviceId,_that.branchId,_that.roundNumber,_that.status,_that.opensAt,_that.closesAt,_that.acceptanceDeadlineAt,_that.biddingMinutes,_that.acceptanceMinutes,_that.bidCount,_that.highestAmountPaise,_that.winnerVendorAccountId,_that.cancelReason,_that.declineReason,_that.expectedAmountPaise,_that.device,_that.branch,_that.ownBid,_that.winnerBid,_that.winnerVendor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionRound implements AuctionRound {
  const _AuctionRound({required this.id, required this.deviceId, required this.branchId, required this.roundNumber, required this.status, required this.opensAt, required this.closesAt, this.acceptanceDeadlineAt, this.biddingMinutes, this.acceptanceMinutes, this.bidCount, this.highestAmountPaise, this.winnerVendorAccountId, this.cancelReason, this.declineReason, this.expectedAmountPaise, this.device, this.branch, this.ownBid, this.winnerBid, this.winnerVendor});
  factory _AuctionRound.fromJson(Map<String, dynamic> json) => _$AuctionRoundFromJson(json);

@override final  String id;
@override final  String deviceId;
@override final  String branchId;
@override final  int roundNumber;
@override final  AuctionRoundStatus status;
@override final  DateTime opensAt;
@override final  DateTime closesAt;
@override final  DateTime? acceptanceDeadlineAt;
@override final  int? biddingMinutes;
@override final  int? acceptanceMinutes;
@override final  int? bidCount;
@override final  int? highestAmountPaise;
@override final  String? winnerVendorAccountId;
@override final  String? cancelReason;
@override final  String? declineReason;
@override final  int? expectedAmountPaise;
@override final  dynamic device;
@override final  dynamic branch;
@override final  Bid? ownBid;
@override final  Bid? winnerBid;
@override final  dynamic winnerVendor;

/// Create a copy of AuctionRound
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionRoundCopyWith<_AuctionRound> get copyWith => __$AuctionRoundCopyWithImpl<_AuctionRound>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionRoundToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionRound&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.roundNumber, roundNumber) || other.roundNumber == roundNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.opensAt, opensAt) || other.opensAt == opensAt)&&(identical(other.closesAt, closesAt) || other.closesAt == closesAt)&&(identical(other.acceptanceDeadlineAt, acceptanceDeadlineAt) || other.acceptanceDeadlineAt == acceptanceDeadlineAt)&&(identical(other.biddingMinutes, biddingMinutes) || other.biddingMinutes == biddingMinutes)&&(identical(other.acceptanceMinutes, acceptanceMinutes) || other.acceptanceMinutes == acceptanceMinutes)&&(identical(other.bidCount, bidCount) || other.bidCount == bidCount)&&(identical(other.highestAmountPaise, highestAmountPaise) || other.highestAmountPaise == highestAmountPaise)&&(identical(other.winnerVendorAccountId, winnerVendorAccountId) || other.winnerVendorAccountId == winnerVendorAccountId)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason)&&(identical(other.declineReason, declineReason) || other.declineReason == declineReason)&&(identical(other.expectedAmountPaise, expectedAmountPaise) || other.expectedAmountPaise == expectedAmountPaise)&&const DeepCollectionEquality().equals(other.device, device)&&const DeepCollectionEquality().equals(other.branch, branch)&&(identical(other.ownBid, ownBid) || other.ownBid == ownBid)&&(identical(other.winnerBid, winnerBid) || other.winnerBid == winnerBid)&&const DeepCollectionEquality().equals(other.winnerVendor, winnerVendor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,deviceId,branchId,roundNumber,status,opensAt,closesAt,acceptanceDeadlineAt,biddingMinutes,acceptanceMinutes,bidCount,highestAmountPaise,winnerVendorAccountId,cancelReason,declineReason,expectedAmountPaise,const DeepCollectionEquality().hash(device),const DeepCollectionEquality().hash(branch),ownBid,winnerBid,const DeepCollectionEquality().hash(winnerVendor)]);

@override
String toString() {
  return 'AuctionRound(id: $id, deviceId: $deviceId, branchId: $branchId, roundNumber: $roundNumber, status: $status, opensAt: $opensAt, closesAt: $closesAt, acceptanceDeadlineAt: $acceptanceDeadlineAt, biddingMinutes: $biddingMinutes, acceptanceMinutes: $acceptanceMinutes, bidCount: $bidCount, highestAmountPaise: $highestAmountPaise, winnerVendorAccountId: $winnerVendorAccountId, cancelReason: $cancelReason, declineReason: $declineReason, expectedAmountPaise: $expectedAmountPaise, device: $device, branch: $branch, ownBid: $ownBid, winnerBid: $winnerBid, winnerVendor: $winnerVendor)';
}


}

/// @nodoc
abstract mixin class _$AuctionRoundCopyWith<$Res> implements $AuctionRoundCopyWith<$Res> {
  factory _$AuctionRoundCopyWith(_AuctionRound value, $Res Function(_AuctionRound) _then) = __$AuctionRoundCopyWithImpl;
@override @useResult
$Res call({
 String id, String deviceId, String branchId, int roundNumber, AuctionRoundStatus status, DateTime opensAt, DateTime closesAt, DateTime? acceptanceDeadlineAt, int? biddingMinutes, int? acceptanceMinutes, int? bidCount, int? highestAmountPaise, String? winnerVendorAccountId, String? cancelReason, String? declineReason, int? expectedAmountPaise, dynamic device, dynamic branch, Bid? ownBid, Bid? winnerBid, dynamic winnerVendor
});


@override $BidCopyWith<$Res>? get ownBid;@override $BidCopyWith<$Res>? get winnerBid;

}
/// @nodoc
class __$AuctionRoundCopyWithImpl<$Res>
    implements _$AuctionRoundCopyWith<$Res> {
  __$AuctionRoundCopyWithImpl(this._self, this._then);

  final _AuctionRound _self;
  final $Res Function(_AuctionRound) _then;

/// Create a copy of AuctionRound
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? deviceId = null,Object? branchId = null,Object? roundNumber = null,Object? status = null,Object? opensAt = null,Object? closesAt = null,Object? acceptanceDeadlineAt = freezed,Object? biddingMinutes = freezed,Object? acceptanceMinutes = freezed,Object? bidCount = freezed,Object? highestAmountPaise = freezed,Object? winnerVendorAccountId = freezed,Object? cancelReason = freezed,Object? declineReason = freezed,Object? expectedAmountPaise = freezed,Object? device = freezed,Object? branch = freezed,Object? ownBid = freezed,Object? winnerBid = freezed,Object? winnerVendor = freezed,}) {
  return _then(_AuctionRound(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,roundNumber: null == roundNumber ? _self.roundNumber : roundNumber // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuctionRoundStatus,opensAt: null == opensAt ? _self.opensAt : opensAt // ignore: cast_nullable_to_non_nullable
as DateTime,closesAt: null == closesAt ? _self.closesAt : closesAt // ignore: cast_nullable_to_non_nullable
as DateTime,acceptanceDeadlineAt: freezed == acceptanceDeadlineAt ? _self.acceptanceDeadlineAt : acceptanceDeadlineAt // ignore: cast_nullable_to_non_nullable
as DateTime?,biddingMinutes: freezed == biddingMinutes ? _self.biddingMinutes : biddingMinutes // ignore: cast_nullable_to_non_nullable
as int?,acceptanceMinutes: freezed == acceptanceMinutes ? _self.acceptanceMinutes : acceptanceMinutes // ignore: cast_nullable_to_non_nullable
as int?,bidCount: freezed == bidCount ? _self.bidCount : bidCount // ignore: cast_nullable_to_non_nullable
as int?,highestAmountPaise: freezed == highestAmountPaise ? _self.highestAmountPaise : highestAmountPaise // ignore: cast_nullable_to_non_nullable
as int?,winnerVendorAccountId: freezed == winnerVendorAccountId ? _self.winnerVendorAccountId : winnerVendorAccountId // ignore: cast_nullable_to_non_nullable
as String?,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,declineReason: freezed == declineReason ? _self.declineReason : declineReason // ignore: cast_nullable_to_non_nullable
as String?,expectedAmountPaise: freezed == expectedAmountPaise ? _self.expectedAmountPaise : expectedAmountPaise // ignore: cast_nullable_to_non_nullable
as int?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as dynamic,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as dynamic,ownBid: freezed == ownBid ? _self.ownBid : ownBid // ignore: cast_nullable_to_non_nullable
as Bid?,winnerBid: freezed == winnerBid ? _self.winnerBid : winnerBid // ignore: cast_nullable_to_non_nullable
as Bid?,winnerVendor: freezed == winnerVendor ? _self.winnerVendor : winnerVendor // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of AuctionRound
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BidCopyWith<$Res>? get ownBid {
    if (_self.ownBid == null) {
    return null;
  }

  return $BidCopyWith<$Res>(_self.ownBid!, (value) {
    return _then(_self.copyWith(ownBid: value));
  });
}/// Create a copy of AuctionRound
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BidCopyWith<$Res>? get winnerBid {
    if (_self.winnerBid == null) {
    return null;
  }

  return $BidCopyWith<$Res>(_self.winnerBid!, (value) {
    return _then(_self.copyWith(winnerBid: value));
  });
}
}

// dart format on
