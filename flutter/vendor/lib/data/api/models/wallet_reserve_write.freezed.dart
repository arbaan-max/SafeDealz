// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_reserve_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletReserveWrite {

 int get amountPaise; String get idempotencyKey; String? get reason; String? get referenceId; String? get vendorAccountId;
/// Create a copy of WalletReserveWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletReserveWriteCopyWith<WalletReserveWrite> get copyWith => _$WalletReserveWriteCopyWithImpl<WalletReserveWrite>(this as WalletReserveWrite, _$identity);

  /// Serializes this WalletReserveWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletReserveWrite&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.vendorAccountId, vendorAccountId) || other.vendorAccountId == vendorAccountId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amountPaise,idempotencyKey,reason,referenceId,vendorAccountId);

@override
String toString() {
  return 'WalletReserveWrite(amountPaise: $amountPaise, idempotencyKey: $idempotencyKey, reason: $reason, referenceId: $referenceId, vendorAccountId: $vendorAccountId)';
}


}

/// @nodoc
abstract mixin class $WalletReserveWriteCopyWith<$Res>  {
  factory $WalletReserveWriteCopyWith(WalletReserveWrite value, $Res Function(WalletReserveWrite) _then) = _$WalletReserveWriteCopyWithImpl;
@useResult
$Res call({
 int amountPaise, String idempotencyKey, String? reason, String? referenceId, String? vendorAccountId
});




}
/// @nodoc
class _$WalletReserveWriteCopyWithImpl<$Res>
    implements $WalletReserveWriteCopyWith<$Res> {
  _$WalletReserveWriteCopyWithImpl(this._self, this._then);

  final WalletReserveWrite _self;
  final $Res Function(WalletReserveWrite) _then;

/// Create a copy of WalletReserveWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amountPaise = null,Object? idempotencyKey = null,Object? reason = freezed,Object? referenceId = freezed,Object? vendorAccountId = freezed,}) {
  return _then(_self.copyWith(
amountPaise: null == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,vendorAccountId: freezed == vendorAccountId ? _self.vendorAccountId : vendorAccountId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletReserveWrite].
extension WalletReserveWritePatterns on WalletReserveWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletReserveWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletReserveWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletReserveWrite value)  $default,){
final _that = this;
switch (_that) {
case _WalletReserveWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletReserveWrite value)?  $default,){
final _that = this;
switch (_that) {
case _WalletReserveWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int amountPaise,  String idempotencyKey,  String? reason,  String? referenceId,  String? vendorAccountId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletReserveWrite() when $default != null:
return $default(_that.amountPaise,_that.idempotencyKey,_that.reason,_that.referenceId,_that.vendorAccountId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int amountPaise,  String idempotencyKey,  String? reason,  String? referenceId,  String? vendorAccountId)  $default,) {final _that = this;
switch (_that) {
case _WalletReserveWrite():
return $default(_that.amountPaise,_that.idempotencyKey,_that.reason,_that.referenceId,_that.vendorAccountId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int amountPaise,  String idempotencyKey,  String? reason,  String? referenceId,  String? vendorAccountId)?  $default,) {final _that = this;
switch (_that) {
case _WalletReserveWrite() when $default != null:
return $default(_that.amountPaise,_that.idempotencyKey,_that.reason,_that.referenceId,_that.vendorAccountId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletReserveWrite implements WalletReserveWrite {
  const _WalletReserveWrite({required this.amountPaise, required this.idempotencyKey, this.reason, this.referenceId, this.vendorAccountId});
  factory _WalletReserveWrite.fromJson(Map<String, dynamic> json) => _$WalletReserveWriteFromJson(json);

@override final  int amountPaise;
@override final  String idempotencyKey;
@override final  String? reason;
@override final  String? referenceId;
@override final  String? vendorAccountId;

/// Create a copy of WalletReserveWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletReserveWriteCopyWith<_WalletReserveWrite> get copyWith => __$WalletReserveWriteCopyWithImpl<_WalletReserveWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletReserveWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletReserveWrite&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.vendorAccountId, vendorAccountId) || other.vendorAccountId == vendorAccountId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amountPaise,idempotencyKey,reason,referenceId,vendorAccountId);

@override
String toString() {
  return 'WalletReserveWrite(amountPaise: $amountPaise, idempotencyKey: $idempotencyKey, reason: $reason, referenceId: $referenceId, vendorAccountId: $vendorAccountId)';
}


}

/// @nodoc
abstract mixin class _$WalletReserveWriteCopyWith<$Res> implements $WalletReserveWriteCopyWith<$Res> {
  factory _$WalletReserveWriteCopyWith(_WalletReserveWrite value, $Res Function(_WalletReserveWrite) _then) = __$WalletReserveWriteCopyWithImpl;
@override @useResult
$Res call({
 int amountPaise, String idempotencyKey, String? reason, String? referenceId, String? vendorAccountId
});




}
/// @nodoc
class __$WalletReserveWriteCopyWithImpl<$Res>
    implements _$WalletReserveWriteCopyWith<$Res> {
  __$WalletReserveWriteCopyWithImpl(this._self, this._then);

  final _WalletReserveWrite _self;
  final $Res Function(_WalletReserveWrite) _then;

/// Create a copy of WalletReserveWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amountPaise = null,Object? idempotencyKey = null,Object? reason = freezed,Object? referenceId = freezed,Object? vendorAccountId = freezed,}) {
  return _then(_WalletReserveWrite(
amountPaise: null == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,vendorAccountId: freezed == vendorAccountId ? _self.vendorAccountId : vendorAccountId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
