// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_credit_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletCreditWrite {

 int get amountPaise; String get idempotencyKey; String? get reason; String? get referenceId;
/// Create a copy of WalletCreditWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletCreditWriteCopyWith<WalletCreditWrite> get copyWith => _$WalletCreditWriteCopyWithImpl<WalletCreditWrite>(this as WalletCreditWrite, _$identity);

  /// Serializes this WalletCreditWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletCreditWrite&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amountPaise,idempotencyKey,reason,referenceId);

@override
String toString() {
  return 'WalletCreditWrite(amountPaise: $amountPaise, idempotencyKey: $idempotencyKey, reason: $reason, referenceId: $referenceId)';
}


}

/// @nodoc
abstract mixin class $WalletCreditWriteCopyWith<$Res>  {
  factory $WalletCreditWriteCopyWith(WalletCreditWrite value, $Res Function(WalletCreditWrite) _then) = _$WalletCreditWriteCopyWithImpl;
@useResult
$Res call({
 int amountPaise, String idempotencyKey, String? reason, String? referenceId
});




}
/// @nodoc
class _$WalletCreditWriteCopyWithImpl<$Res>
    implements $WalletCreditWriteCopyWith<$Res> {
  _$WalletCreditWriteCopyWithImpl(this._self, this._then);

  final WalletCreditWrite _self;
  final $Res Function(WalletCreditWrite) _then;

/// Create a copy of WalletCreditWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amountPaise = null,Object? idempotencyKey = null,Object? reason = freezed,Object? referenceId = freezed,}) {
  return _then(_self.copyWith(
amountPaise: null == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletCreditWrite].
extension WalletCreditWritePatterns on WalletCreditWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletCreditWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletCreditWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletCreditWrite value)  $default,){
final _that = this;
switch (_that) {
case _WalletCreditWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletCreditWrite value)?  $default,){
final _that = this;
switch (_that) {
case _WalletCreditWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int amountPaise,  String idempotencyKey,  String? reason,  String? referenceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletCreditWrite() when $default != null:
return $default(_that.amountPaise,_that.idempotencyKey,_that.reason,_that.referenceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int amountPaise,  String idempotencyKey,  String? reason,  String? referenceId)  $default,) {final _that = this;
switch (_that) {
case _WalletCreditWrite():
return $default(_that.amountPaise,_that.idempotencyKey,_that.reason,_that.referenceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int amountPaise,  String idempotencyKey,  String? reason,  String? referenceId)?  $default,) {final _that = this;
switch (_that) {
case _WalletCreditWrite() when $default != null:
return $default(_that.amountPaise,_that.idempotencyKey,_that.reason,_that.referenceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletCreditWrite implements WalletCreditWrite {
  const _WalletCreditWrite({required this.amountPaise, required this.idempotencyKey, this.reason, this.referenceId});
  factory _WalletCreditWrite.fromJson(Map<String, dynamic> json) => _$WalletCreditWriteFromJson(json);

@override final  int amountPaise;
@override final  String idempotencyKey;
@override final  String? reason;
@override final  String? referenceId;

/// Create a copy of WalletCreditWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletCreditWriteCopyWith<_WalletCreditWrite> get copyWith => __$WalletCreditWriteCopyWithImpl<_WalletCreditWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletCreditWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletCreditWrite&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amountPaise,idempotencyKey,reason,referenceId);

@override
String toString() {
  return 'WalletCreditWrite(amountPaise: $amountPaise, idempotencyKey: $idempotencyKey, reason: $reason, referenceId: $referenceId)';
}


}

/// @nodoc
abstract mixin class _$WalletCreditWriteCopyWith<$Res> implements $WalletCreditWriteCopyWith<$Res> {
  factory _$WalletCreditWriteCopyWith(_WalletCreditWrite value, $Res Function(_WalletCreditWrite) _then) = __$WalletCreditWriteCopyWithImpl;
@override @useResult
$Res call({
 int amountPaise, String idempotencyKey, String? reason, String? referenceId
});




}
/// @nodoc
class __$WalletCreditWriteCopyWithImpl<$Res>
    implements _$WalletCreditWriteCopyWith<$Res> {
  __$WalletCreditWriteCopyWithImpl(this._self, this._then);

  final _WalletCreditWrite _self;
  final $Res Function(_WalletCreditWrite) _then;

/// Create a copy of WalletCreditWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amountPaise = null,Object? idempotencyKey = null,Object? reason = freezed,Object? referenceId = freezed,}) {
  return _then(_WalletCreditWrite(
amountPaise: null == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
