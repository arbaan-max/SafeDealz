// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RewardBalance {

 String? get id; String? get customerPhone; String? get customerName; String? get branchId; String? get branchName; String? get chainId; int? get pointsBalance; int? get issuedPoints; int? get redeemedPoints; int? get outstandingValuePaise; bool? get redeemableAtThisBranch;
/// Create a copy of RewardBalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardBalanceCopyWith<RewardBalance> get copyWith => _$RewardBalanceCopyWithImpl<RewardBalance>(this as RewardBalance, _$identity);

  /// Serializes this RewardBalance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardBalance&&(identical(other.id, id) || other.id == id)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.chainId, chainId) || other.chainId == chainId)&&(identical(other.pointsBalance, pointsBalance) || other.pointsBalance == pointsBalance)&&(identical(other.issuedPoints, issuedPoints) || other.issuedPoints == issuedPoints)&&(identical(other.redeemedPoints, redeemedPoints) || other.redeemedPoints == redeemedPoints)&&(identical(other.outstandingValuePaise, outstandingValuePaise) || other.outstandingValuePaise == outstandingValuePaise)&&(identical(other.redeemableAtThisBranch, redeemableAtThisBranch) || other.redeemableAtThisBranch == redeemableAtThisBranch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerPhone,customerName,branchId,branchName,chainId,pointsBalance,issuedPoints,redeemedPoints,outstandingValuePaise,redeemableAtThisBranch);

@override
String toString() {
  return 'RewardBalance(id: $id, customerPhone: $customerPhone, customerName: $customerName, branchId: $branchId, branchName: $branchName, chainId: $chainId, pointsBalance: $pointsBalance, issuedPoints: $issuedPoints, redeemedPoints: $redeemedPoints, outstandingValuePaise: $outstandingValuePaise, redeemableAtThisBranch: $redeemableAtThisBranch)';
}


}

/// @nodoc
abstract mixin class $RewardBalanceCopyWith<$Res>  {
  factory $RewardBalanceCopyWith(RewardBalance value, $Res Function(RewardBalance) _then) = _$RewardBalanceCopyWithImpl;
@useResult
$Res call({
 String? id, String? customerPhone, String? customerName, String? branchId, String? branchName, String? chainId, int? pointsBalance, int? issuedPoints, int? redeemedPoints, int? outstandingValuePaise, bool? redeemableAtThisBranch
});




}
/// @nodoc
class _$RewardBalanceCopyWithImpl<$Res>
    implements $RewardBalanceCopyWith<$Res> {
  _$RewardBalanceCopyWithImpl(this._self, this._then);

  final RewardBalance _self;
  final $Res Function(RewardBalance) _then;

/// Create a copy of RewardBalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customerPhone = freezed,Object? customerName = freezed,Object? branchId = freezed,Object? branchName = freezed,Object? chainId = freezed,Object? pointsBalance = freezed,Object? issuedPoints = freezed,Object? redeemedPoints = freezed,Object? outstandingValuePaise = freezed,Object? redeemableAtThisBranch = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,chainId: freezed == chainId ? _self.chainId : chainId // ignore: cast_nullable_to_non_nullable
as String?,pointsBalance: freezed == pointsBalance ? _self.pointsBalance : pointsBalance // ignore: cast_nullable_to_non_nullable
as int?,issuedPoints: freezed == issuedPoints ? _self.issuedPoints : issuedPoints // ignore: cast_nullable_to_non_nullable
as int?,redeemedPoints: freezed == redeemedPoints ? _self.redeemedPoints : redeemedPoints // ignore: cast_nullable_to_non_nullable
as int?,outstandingValuePaise: freezed == outstandingValuePaise ? _self.outstandingValuePaise : outstandingValuePaise // ignore: cast_nullable_to_non_nullable
as int?,redeemableAtThisBranch: freezed == redeemableAtThisBranch ? _self.redeemableAtThisBranch : redeemableAtThisBranch // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [RewardBalance].
extension RewardBalancePatterns on RewardBalance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardBalance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardBalance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardBalance value)  $default,){
final _that = this;
switch (_that) {
case _RewardBalance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardBalance value)?  $default,){
final _that = this;
switch (_that) {
case _RewardBalance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? customerPhone,  String? customerName,  String? branchId,  String? branchName,  String? chainId,  int? pointsBalance,  int? issuedPoints,  int? redeemedPoints,  int? outstandingValuePaise,  bool? redeemableAtThisBranch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardBalance() when $default != null:
return $default(_that.id,_that.customerPhone,_that.customerName,_that.branchId,_that.branchName,_that.chainId,_that.pointsBalance,_that.issuedPoints,_that.redeemedPoints,_that.outstandingValuePaise,_that.redeemableAtThisBranch);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? customerPhone,  String? customerName,  String? branchId,  String? branchName,  String? chainId,  int? pointsBalance,  int? issuedPoints,  int? redeemedPoints,  int? outstandingValuePaise,  bool? redeemableAtThisBranch)  $default,) {final _that = this;
switch (_that) {
case _RewardBalance():
return $default(_that.id,_that.customerPhone,_that.customerName,_that.branchId,_that.branchName,_that.chainId,_that.pointsBalance,_that.issuedPoints,_that.redeemedPoints,_that.outstandingValuePaise,_that.redeemableAtThisBranch);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? customerPhone,  String? customerName,  String? branchId,  String? branchName,  String? chainId,  int? pointsBalance,  int? issuedPoints,  int? redeemedPoints,  int? outstandingValuePaise,  bool? redeemableAtThisBranch)?  $default,) {final _that = this;
switch (_that) {
case _RewardBalance() when $default != null:
return $default(_that.id,_that.customerPhone,_that.customerName,_that.branchId,_that.branchName,_that.chainId,_that.pointsBalance,_that.issuedPoints,_that.redeemedPoints,_that.outstandingValuePaise,_that.redeemableAtThisBranch);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RewardBalance implements RewardBalance {
  const _RewardBalance({this.id, this.customerPhone, this.customerName, this.branchId, this.branchName, this.chainId, this.pointsBalance, this.issuedPoints, this.redeemedPoints, this.outstandingValuePaise, this.redeemableAtThisBranch});
  factory _RewardBalance.fromJson(Map<String, dynamic> json) => _$RewardBalanceFromJson(json);

@override final  String? id;
@override final  String? customerPhone;
@override final  String? customerName;
@override final  String? branchId;
@override final  String? branchName;
@override final  String? chainId;
@override final  int? pointsBalance;
@override final  int? issuedPoints;
@override final  int? redeemedPoints;
@override final  int? outstandingValuePaise;
@override final  bool? redeemableAtThisBranch;

/// Create a copy of RewardBalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardBalanceCopyWith<_RewardBalance> get copyWith => __$RewardBalanceCopyWithImpl<_RewardBalance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardBalanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardBalance&&(identical(other.id, id) || other.id == id)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.chainId, chainId) || other.chainId == chainId)&&(identical(other.pointsBalance, pointsBalance) || other.pointsBalance == pointsBalance)&&(identical(other.issuedPoints, issuedPoints) || other.issuedPoints == issuedPoints)&&(identical(other.redeemedPoints, redeemedPoints) || other.redeemedPoints == redeemedPoints)&&(identical(other.outstandingValuePaise, outstandingValuePaise) || other.outstandingValuePaise == outstandingValuePaise)&&(identical(other.redeemableAtThisBranch, redeemableAtThisBranch) || other.redeemableAtThisBranch == redeemableAtThisBranch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerPhone,customerName,branchId,branchName,chainId,pointsBalance,issuedPoints,redeemedPoints,outstandingValuePaise,redeemableAtThisBranch);

@override
String toString() {
  return 'RewardBalance(id: $id, customerPhone: $customerPhone, customerName: $customerName, branchId: $branchId, branchName: $branchName, chainId: $chainId, pointsBalance: $pointsBalance, issuedPoints: $issuedPoints, redeemedPoints: $redeemedPoints, outstandingValuePaise: $outstandingValuePaise, redeemableAtThisBranch: $redeemableAtThisBranch)';
}


}

/// @nodoc
abstract mixin class _$RewardBalanceCopyWith<$Res> implements $RewardBalanceCopyWith<$Res> {
  factory _$RewardBalanceCopyWith(_RewardBalance value, $Res Function(_RewardBalance) _then) = __$RewardBalanceCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? customerPhone, String? customerName, String? branchId, String? branchName, String? chainId, int? pointsBalance, int? issuedPoints, int? redeemedPoints, int? outstandingValuePaise, bool? redeemableAtThisBranch
});




}
/// @nodoc
class __$RewardBalanceCopyWithImpl<$Res>
    implements _$RewardBalanceCopyWith<$Res> {
  __$RewardBalanceCopyWithImpl(this._self, this._then);

  final _RewardBalance _self;
  final $Res Function(_RewardBalance) _then;

/// Create a copy of RewardBalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customerPhone = freezed,Object? customerName = freezed,Object? branchId = freezed,Object? branchName = freezed,Object? chainId = freezed,Object? pointsBalance = freezed,Object? issuedPoints = freezed,Object? redeemedPoints = freezed,Object? outstandingValuePaise = freezed,Object? redeemableAtThisBranch = freezed,}) {
  return _then(_RewardBalance(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,chainId: freezed == chainId ? _self.chainId : chainId // ignore: cast_nullable_to_non_nullable
as String?,pointsBalance: freezed == pointsBalance ? _self.pointsBalance : pointsBalance // ignore: cast_nullable_to_non_nullable
as int?,issuedPoints: freezed == issuedPoints ? _self.issuedPoints : issuedPoints // ignore: cast_nullable_to_non_nullable
as int?,redeemedPoints: freezed == redeemedPoints ? _self.redeemedPoints : redeemedPoints // ignore: cast_nullable_to_non_nullable
as int?,outstandingValuePaise: freezed == outstandingValuePaise ? _self.outstandingValuePaise : outstandingValuePaise // ignore: cast_nullable_to_non_nullable
as int?,redeemableAtThisBranch: freezed == redeemableAtThisBranch ? _self.redeemableAtThisBranch : redeemableAtThisBranch // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
