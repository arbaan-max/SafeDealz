// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_recharge_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletRechargeWrite {

 int get amountPaise; String get idempotencyKey;
/// Create a copy of WalletRechargeWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletRechargeWriteCopyWith<WalletRechargeWrite> get copyWith => _$WalletRechargeWriteCopyWithImpl<WalletRechargeWrite>(this as WalletRechargeWrite, _$identity);

  /// Serializes this WalletRechargeWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletRechargeWrite&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amountPaise,idempotencyKey);

@override
String toString() {
  return 'WalletRechargeWrite(amountPaise: $amountPaise, idempotencyKey: $idempotencyKey)';
}


}

/// @nodoc
abstract mixin class $WalletRechargeWriteCopyWith<$Res>  {
  factory $WalletRechargeWriteCopyWith(WalletRechargeWrite value, $Res Function(WalletRechargeWrite) _then) = _$WalletRechargeWriteCopyWithImpl;
@useResult
$Res call({
 int amountPaise, String idempotencyKey
});




}
/// @nodoc
class _$WalletRechargeWriteCopyWithImpl<$Res>
    implements $WalletRechargeWriteCopyWith<$Res> {
  _$WalletRechargeWriteCopyWithImpl(this._self, this._then);

  final WalletRechargeWrite _self;
  final $Res Function(WalletRechargeWrite) _then;

/// Create a copy of WalletRechargeWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amountPaise = null,Object? idempotencyKey = null,}) {
  return _then(_self.copyWith(
amountPaise: null == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletRechargeWrite].
extension WalletRechargeWritePatterns on WalletRechargeWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletRechargeWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletRechargeWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletRechargeWrite value)  $default,){
final _that = this;
switch (_that) {
case _WalletRechargeWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletRechargeWrite value)?  $default,){
final _that = this;
switch (_that) {
case _WalletRechargeWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int amountPaise,  String idempotencyKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletRechargeWrite() when $default != null:
return $default(_that.amountPaise,_that.idempotencyKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int amountPaise,  String idempotencyKey)  $default,) {final _that = this;
switch (_that) {
case _WalletRechargeWrite():
return $default(_that.amountPaise,_that.idempotencyKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int amountPaise,  String idempotencyKey)?  $default,) {final _that = this;
switch (_that) {
case _WalletRechargeWrite() when $default != null:
return $default(_that.amountPaise,_that.idempotencyKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletRechargeWrite implements WalletRechargeWrite {
  const _WalletRechargeWrite({required this.amountPaise, required this.idempotencyKey});
  factory _WalletRechargeWrite.fromJson(Map<String, dynamic> json) => _$WalletRechargeWriteFromJson(json);

@override final  int amountPaise;
@override final  String idempotencyKey;

/// Create a copy of WalletRechargeWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletRechargeWriteCopyWith<_WalletRechargeWrite> get copyWith => __$WalletRechargeWriteCopyWithImpl<_WalletRechargeWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletRechargeWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletRechargeWrite&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amountPaise,idempotencyKey);

@override
String toString() {
  return 'WalletRechargeWrite(amountPaise: $amountPaise, idempotencyKey: $idempotencyKey)';
}


}

/// @nodoc
abstract mixin class _$WalletRechargeWriteCopyWith<$Res> implements $WalletRechargeWriteCopyWith<$Res> {
  factory _$WalletRechargeWriteCopyWith(_WalletRechargeWrite value, $Res Function(_WalletRechargeWrite) _then) = __$WalletRechargeWriteCopyWithImpl;
@override @useResult
$Res call({
 int amountPaise, String idempotencyKey
});




}
/// @nodoc
class __$WalletRechargeWriteCopyWithImpl<$Res>
    implements _$WalletRechargeWriteCopyWith<$Res> {
  __$WalletRechargeWriteCopyWithImpl(this._self, this._then);

  final _WalletRechargeWrite _self;
  final $Res Function(_WalletRechargeWrite) _then;

/// Create a copy of WalletRechargeWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amountPaise = null,Object? idempotencyKey = null,}) {
  return _then(_WalletRechargeWrite(
amountPaise: null == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
