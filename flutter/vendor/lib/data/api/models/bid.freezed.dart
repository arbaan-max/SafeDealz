// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Bid {

 String get id; String get roundId; String get deviceId; String get vendorAccountId; int get amountPaise; int get feePaise; int get totalPaise; BidStatus get status; num? get feeRate; int? get basePaise; int? get cosmeticDeductionPaise; int? get batteryDeductionPaise; DateTime? get createdAt;
/// Create a copy of Bid
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BidCopyWith<Bid> get copyWith => _$BidCopyWithImpl<Bid>(this as Bid, _$identity);

  /// Serializes this Bid to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Bid&&(identical(other.id, id) || other.id == id)&&(identical(other.roundId, roundId) || other.roundId == roundId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.vendorAccountId, vendorAccountId) || other.vendorAccountId == vendorAccountId)&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.feePaise, feePaise) || other.feePaise == feePaise)&&(identical(other.totalPaise, totalPaise) || other.totalPaise == totalPaise)&&(identical(other.status, status) || other.status == status)&&(identical(other.feeRate, feeRate) || other.feeRate == feeRate)&&(identical(other.basePaise, basePaise) || other.basePaise == basePaise)&&(identical(other.cosmeticDeductionPaise, cosmeticDeductionPaise) || other.cosmeticDeductionPaise == cosmeticDeductionPaise)&&(identical(other.batteryDeductionPaise, batteryDeductionPaise) || other.batteryDeductionPaise == batteryDeductionPaise)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roundId,deviceId,vendorAccountId,amountPaise,feePaise,totalPaise,status,feeRate,basePaise,cosmeticDeductionPaise,batteryDeductionPaise,createdAt);

@override
String toString() {
  return 'Bid(id: $id, roundId: $roundId, deviceId: $deviceId, vendorAccountId: $vendorAccountId, amountPaise: $amountPaise, feePaise: $feePaise, totalPaise: $totalPaise, status: $status, feeRate: $feeRate, basePaise: $basePaise, cosmeticDeductionPaise: $cosmeticDeductionPaise, batteryDeductionPaise: $batteryDeductionPaise, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BidCopyWith<$Res>  {
  factory $BidCopyWith(Bid value, $Res Function(Bid) _then) = _$BidCopyWithImpl;
@useResult
$Res call({
 String id, String roundId, String deviceId, String vendorAccountId, int amountPaise, int feePaise, int totalPaise, BidStatus status, num? feeRate, int? basePaise, int? cosmeticDeductionPaise, int? batteryDeductionPaise, DateTime? createdAt
});




}
/// @nodoc
class _$BidCopyWithImpl<$Res>
    implements $BidCopyWith<$Res> {
  _$BidCopyWithImpl(this._self, this._then);

  final Bid _self;
  final $Res Function(Bid) _then;

/// Create a copy of Bid
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? roundId = null,Object? deviceId = null,Object? vendorAccountId = null,Object? amountPaise = null,Object? feePaise = null,Object? totalPaise = null,Object? status = null,Object? feeRate = freezed,Object? basePaise = freezed,Object? cosmeticDeductionPaise = freezed,Object? batteryDeductionPaise = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,roundId: null == roundId ? _self.roundId : roundId // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,vendorAccountId: null == vendorAccountId ? _self.vendorAccountId : vendorAccountId // ignore: cast_nullable_to_non_nullable
as String,amountPaise: null == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int,feePaise: null == feePaise ? _self.feePaise : feePaise // ignore: cast_nullable_to_non_nullable
as int,totalPaise: null == totalPaise ? _self.totalPaise : totalPaise // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BidStatus,feeRate: freezed == feeRate ? _self.feeRate : feeRate // ignore: cast_nullable_to_non_nullable
as num?,basePaise: freezed == basePaise ? _self.basePaise : basePaise // ignore: cast_nullable_to_non_nullable
as int?,cosmeticDeductionPaise: freezed == cosmeticDeductionPaise ? _self.cosmeticDeductionPaise : cosmeticDeductionPaise // ignore: cast_nullable_to_non_nullable
as int?,batteryDeductionPaise: freezed == batteryDeductionPaise ? _self.batteryDeductionPaise : batteryDeductionPaise // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Bid].
extension BidPatterns on Bid {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Bid value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Bid() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Bid value)  $default,){
final _that = this;
switch (_that) {
case _Bid():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Bid value)?  $default,){
final _that = this;
switch (_that) {
case _Bid() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String roundId,  String deviceId,  String vendorAccountId,  int amountPaise,  int feePaise,  int totalPaise,  BidStatus status,  num? feeRate,  int? basePaise,  int? cosmeticDeductionPaise,  int? batteryDeductionPaise,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Bid() when $default != null:
return $default(_that.id,_that.roundId,_that.deviceId,_that.vendorAccountId,_that.amountPaise,_that.feePaise,_that.totalPaise,_that.status,_that.feeRate,_that.basePaise,_that.cosmeticDeductionPaise,_that.batteryDeductionPaise,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String roundId,  String deviceId,  String vendorAccountId,  int amountPaise,  int feePaise,  int totalPaise,  BidStatus status,  num? feeRate,  int? basePaise,  int? cosmeticDeductionPaise,  int? batteryDeductionPaise,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Bid():
return $default(_that.id,_that.roundId,_that.deviceId,_that.vendorAccountId,_that.amountPaise,_that.feePaise,_that.totalPaise,_that.status,_that.feeRate,_that.basePaise,_that.cosmeticDeductionPaise,_that.batteryDeductionPaise,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String roundId,  String deviceId,  String vendorAccountId,  int amountPaise,  int feePaise,  int totalPaise,  BidStatus status,  num? feeRate,  int? basePaise,  int? cosmeticDeductionPaise,  int? batteryDeductionPaise,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Bid() when $default != null:
return $default(_that.id,_that.roundId,_that.deviceId,_that.vendorAccountId,_that.amountPaise,_that.feePaise,_that.totalPaise,_that.status,_that.feeRate,_that.basePaise,_that.cosmeticDeductionPaise,_that.batteryDeductionPaise,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Bid implements Bid {
  const _Bid({required this.id, required this.roundId, required this.deviceId, required this.vendorAccountId, required this.amountPaise, required this.feePaise, required this.totalPaise, required this.status, this.feeRate, this.basePaise, this.cosmeticDeductionPaise, this.batteryDeductionPaise, this.createdAt});
  factory _Bid.fromJson(Map<String, dynamic> json) => _$BidFromJson(json);

@override final  String id;
@override final  String roundId;
@override final  String deviceId;
@override final  String vendorAccountId;
@override final  int amountPaise;
@override final  int feePaise;
@override final  int totalPaise;
@override final  BidStatus status;
@override final  num? feeRate;
@override final  int? basePaise;
@override final  int? cosmeticDeductionPaise;
@override final  int? batteryDeductionPaise;
@override final  DateTime? createdAt;

/// Create a copy of Bid
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BidCopyWith<_Bid> get copyWith => __$BidCopyWithImpl<_Bid>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BidToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Bid&&(identical(other.id, id) || other.id == id)&&(identical(other.roundId, roundId) || other.roundId == roundId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.vendorAccountId, vendorAccountId) || other.vendorAccountId == vendorAccountId)&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.feePaise, feePaise) || other.feePaise == feePaise)&&(identical(other.totalPaise, totalPaise) || other.totalPaise == totalPaise)&&(identical(other.status, status) || other.status == status)&&(identical(other.feeRate, feeRate) || other.feeRate == feeRate)&&(identical(other.basePaise, basePaise) || other.basePaise == basePaise)&&(identical(other.cosmeticDeductionPaise, cosmeticDeductionPaise) || other.cosmeticDeductionPaise == cosmeticDeductionPaise)&&(identical(other.batteryDeductionPaise, batteryDeductionPaise) || other.batteryDeductionPaise == batteryDeductionPaise)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roundId,deviceId,vendorAccountId,amountPaise,feePaise,totalPaise,status,feeRate,basePaise,cosmeticDeductionPaise,batteryDeductionPaise,createdAt);

@override
String toString() {
  return 'Bid(id: $id, roundId: $roundId, deviceId: $deviceId, vendorAccountId: $vendorAccountId, amountPaise: $amountPaise, feePaise: $feePaise, totalPaise: $totalPaise, status: $status, feeRate: $feeRate, basePaise: $basePaise, cosmeticDeductionPaise: $cosmeticDeductionPaise, batteryDeductionPaise: $batteryDeductionPaise, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BidCopyWith<$Res> implements $BidCopyWith<$Res> {
  factory _$BidCopyWith(_Bid value, $Res Function(_Bid) _then) = __$BidCopyWithImpl;
@override @useResult
$Res call({
 String id, String roundId, String deviceId, String vendorAccountId, int amountPaise, int feePaise, int totalPaise, BidStatus status, num? feeRate, int? basePaise, int? cosmeticDeductionPaise, int? batteryDeductionPaise, DateTime? createdAt
});




}
/// @nodoc
class __$BidCopyWithImpl<$Res>
    implements _$BidCopyWith<$Res> {
  __$BidCopyWithImpl(this._self, this._then);

  final _Bid _self;
  final $Res Function(_Bid) _then;

/// Create a copy of Bid
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? roundId = null,Object? deviceId = null,Object? vendorAccountId = null,Object? amountPaise = null,Object? feePaise = null,Object? totalPaise = null,Object? status = null,Object? feeRate = freezed,Object? basePaise = freezed,Object? cosmeticDeductionPaise = freezed,Object? batteryDeductionPaise = freezed,Object? createdAt = freezed,}) {
  return _then(_Bid(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,roundId: null == roundId ? _self.roundId : roundId // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,vendorAccountId: null == vendorAccountId ? _self.vendorAccountId : vendorAccountId // ignore: cast_nullable_to_non_nullable
as String,amountPaise: null == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int,feePaise: null == feePaise ? _self.feePaise : feePaise // ignore: cast_nullable_to_non_nullable
as int,totalPaise: null == totalPaise ? _self.totalPaise : totalPaise // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BidStatus,feeRate: freezed == feeRate ? _self.feeRate : feeRate // ignore: cast_nullable_to_non_nullable
as num?,basePaise: freezed == basePaise ? _self.basePaise : basePaise // ignore: cast_nullable_to_non_nullable
as int?,cosmeticDeductionPaise: freezed == cosmeticDeductionPaise ? _self.cosmeticDeductionPaise : cosmeticDeductionPaise // ignore: cast_nullable_to_non_nullable
as int?,batteryDeductionPaise: freezed == batteryDeductionPaise ? _self.batteryDeductionPaise : batteryDeductionPaise // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
