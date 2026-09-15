// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_recharge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletRecharge {

 String get id; String get vendorAccountId; int get amountPaise; String get orderId; WalletRechargeStatus get status; String get keyId; bool get clientAcknowledged; String? get paymentId;
/// Create a copy of WalletRecharge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletRechargeCopyWith<WalletRecharge> get copyWith => _$WalletRechargeCopyWithImpl<WalletRecharge>(this as WalletRecharge, _$identity);

  /// Serializes this WalletRecharge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletRecharge&&(identical(other.id, id) || other.id == id)&&(identical(other.vendorAccountId, vendorAccountId) || other.vendorAccountId == vendorAccountId)&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.status, status) || other.status == status)&&(identical(other.keyId, keyId) || other.keyId == keyId)&&(identical(other.clientAcknowledged, clientAcknowledged) || other.clientAcknowledged == clientAcknowledged)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,vendorAccountId,amountPaise,orderId,status,keyId,clientAcknowledged,paymentId);

@override
String toString() {
  return 'WalletRecharge(id: $id, vendorAccountId: $vendorAccountId, amountPaise: $amountPaise, orderId: $orderId, status: $status, keyId: $keyId, clientAcknowledged: $clientAcknowledged, paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class $WalletRechargeCopyWith<$Res>  {
  factory $WalletRechargeCopyWith(WalletRecharge value, $Res Function(WalletRecharge) _then) = _$WalletRechargeCopyWithImpl;
@useResult
$Res call({
 String id, String vendorAccountId, int amountPaise, String orderId, WalletRechargeStatus status, String keyId, bool clientAcknowledged, String? paymentId
});




}
/// @nodoc
class _$WalletRechargeCopyWithImpl<$Res>
    implements $WalletRechargeCopyWith<$Res> {
  _$WalletRechargeCopyWithImpl(this._self, this._then);

  final WalletRecharge _self;
  final $Res Function(WalletRecharge) _then;

/// Create a copy of WalletRecharge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? vendorAccountId = null,Object? amountPaise = null,Object? orderId = null,Object? status = null,Object? keyId = null,Object? clientAcknowledged = null,Object? paymentId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,vendorAccountId: null == vendorAccountId ? _self.vendorAccountId : vendorAccountId // ignore: cast_nullable_to_non_nullable
as String,amountPaise: null == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WalletRechargeStatus,keyId: null == keyId ? _self.keyId : keyId // ignore: cast_nullable_to_non_nullable
as String,clientAcknowledged: null == clientAcknowledged ? _self.clientAcknowledged : clientAcknowledged // ignore: cast_nullable_to_non_nullable
as bool,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletRecharge].
extension WalletRechargePatterns on WalletRecharge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletRecharge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletRecharge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletRecharge value)  $default,){
final _that = this;
switch (_that) {
case _WalletRecharge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletRecharge value)?  $default,){
final _that = this;
switch (_that) {
case _WalletRecharge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String vendorAccountId,  int amountPaise,  String orderId,  WalletRechargeStatus status,  String keyId,  bool clientAcknowledged,  String? paymentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletRecharge() when $default != null:
return $default(_that.id,_that.vendorAccountId,_that.amountPaise,_that.orderId,_that.status,_that.keyId,_that.clientAcknowledged,_that.paymentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String vendorAccountId,  int amountPaise,  String orderId,  WalletRechargeStatus status,  String keyId,  bool clientAcknowledged,  String? paymentId)  $default,) {final _that = this;
switch (_that) {
case _WalletRecharge():
return $default(_that.id,_that.vendorAccountId,_that.amountPaise,_that.orderId,_that.status,_that.keyId,_that.clientAcknowledged,_that.paymentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String vendorAccountId,  int amountPaise,  String orderId,  WalletRechargeStatus status,  String keyId,  bool clientAcknowledged,  String? paymentId)?  $default,) {final _that = this;
switch (_that) {
case _WalletRecharge() when $default != null:
return $default(_that.id,_that.vendorAccountId,_that.amountPaise,_that.orderId,_that.status,_that.keyId,_that.clientAcknowledged,_that.paymentId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletRecharge implements WalletRecharge {
  const _WalletRecharge({required this.id, required this.vendorAccountId, required this.amountPaise, required this.orderId, required this.status, required this.keyId, required this.clientAcknowledged, this.paymentId});
  factory _WalletRecharge.fromJson(Map<String, dynamic> json) => _$WalletRechargeFromJson(json);

@override final  String id;
@override final  String vendorAccountId;
@override final  int amountPaise;
@override final  String orderId;
@override final  WalletRechargeStatus status;
@override final  String keyId;
@override final  bool clientAcknowledged;
@override final  String? paymentId;

/// Create a copy of WalletRecharge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletRechargeCopyWith<_WalletRecharge> get copyWith => __$WalletRechargeCopyWithImpl<_WalletRecharge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletRechargeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletRecharge&&(identical(other.id, id) || other.id == id)&&(identical(other.vendorAccountId, vendorAccountId) || other.vendorAccountId == vendorAccountId)&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.status, status) || other.status == status)&&(identical(other.keyId, keyId) || other.keyId == keyId)&&(identical(other.clientAcknowledged, clientAcknowledged) || other.clientAcknowledged == clientAcknowledged)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,vendorAccountId,amountPaise,orderId,status,keyId,clientAcknowledged,paymentId);

@override
String toString() {
  return 'WalletRecharge(id: $id, vendorAccountId: $vendorAccountId, amountPaise: $amountPaise, orderId: $orderId, status: $status, keyId: $keyId, clientAcknowledged: $clientAcknowledged, paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class _$WalletRechargeCopyWith<$Res> implements $WalletRechargeCopyWith<$Res> {
  factory _$WalletRechargeCopyWith(_WalletRecharge value, $Res Function(_WalletRecharge) _then) = __$WalletRechargeCopyWithImpl;
@override @useResult
$Res call({
 String id, String vendorAccountId, int amountPaise, String orderId, WalletRechargeStatus status, String keyId, bool clientAcknowledged, String? paymentId
});




}
/// @nodoc
class __$WalletRechargeCopyWithImpl<$Res>
    implements _$WalletRechargeCopyWith<$Res> {
  __$WalletRechargeCopyWithImpl(this._self, this._then);

  final _WalletRecharge _self;
  final $Res Function(_WalletRecharge) _then;

/// Create a copy of WalletRecharge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? vendorAccountId = null,Object? amountPaise = null,Object? orderId = null,Object? status = null,Object? keyId = null,Object? clientAcknowledged = null,Object? paymentId = freezed,}) {
  return _then(_WalletRecharge(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,vendorAccountId: null == vendorAccountId ? _self.vendorAccountId : vendorAccountId // ignore: cast_nullable_to_non_nullable
as String,amountPaise: null == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WalletRechargeStatus,keyId: null == keyId ? _self.keyId : keyId // ignore: cast_nullable_to_non_nullable
as String,clientAcknowledged: null == clientAcknowledged ? _self.clientAcknowledged : clientAcknowledged // ignore: cast_nullable_to_non_nullable
as bool,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
