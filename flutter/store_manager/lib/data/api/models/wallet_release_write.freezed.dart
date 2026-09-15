// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_release_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletReleaseWrite {

 String get idempotencyKey;
/// Create a copy of WalletReleaseWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletReleaseWriteCopyWith<WalletReleaseWrite> get copyWith => _$WalletReleaseWriteCopyWithImpl<WalletReleaseWrite>(this as WalletReleaseWrite, _$identity);

  /// Serializes this WalletReleaseWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletReleaseWrite&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idempotencyKey);

@override
String toString() {
  return 'WalletReleaseWrite(idempotencyKey: $idempotencyKey)';
}


}

/// @nodoc
abstract mixin class $WalletReleaseWriteCopyWith<$Res>  {
  factory $WalletReleaseWriteCopyWith(WalletReleaseWrite value, $Res Function(WalletReleaseWrite) _then) = _$WalletReleaseWriteCopyWithImpl;
@useResult
$Res call({
 String idempotencyKey
});




}
/// @nodoc
class _$WalletReleaseWriteCopyWithImpl<$Res>
    implements $WalletReleaseWriteCopyWith<$Res> {
  _$WalletReleaseWriteCopyWithImpl(this._self, this._then);

  final WalletReleaseWrite _self;
  final $Res Function(WalletReleaseWrite) _then;

/// Create a copy of WalletReleaseWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idempotencyKey = null,}) {
  return _then(_self.copyWith(
idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletReleaseWrite].
extension WalletReleaseWritePatterns on WalletReleaseWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletReleaseWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletReleaseWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletReleaseWrite value)  $default,){
final _that = this;
switch (_that) {
case _WalletReleaseWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletReleaseWrite value)?  $default,){
final _that = this;
switch (_that) {
case _WalletReleaseWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String idempotencyKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletReleaseWrite() when $default != null:
return $default(_that.idempotencyKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String idempotencyKey)  $default,) {final _that = this;
switch (_that) {
case _WalletReleaseWrite():
return $default(_that.idempotencyKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String idempotencyKey)?  $default,) {final _that = this;
switch (_that) {
case _WalletReleaseWrite() when $default != null:
return $default(_that.idempotencyKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletReleaseWrite implements WalletReleaseWrite {
  const _WalletReleaseWrite({required this.idempotencyKey});
  factory _WalletReleaseWrite.fromJson(Map<String, dynamic> json) => _$WalletReleaseWriteFromJson(json);

@override final  String idempotencyKey;

/// Create a copy of WalletReleaseWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletReleaseWriteCopyWith<_WalletReleaseWrite> get copyWith => __$WalletReleaseWriteCopyWithImpl<_WalletReleaseWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletReleaseWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletReleaseWrite&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idempotencyKey);

@override
String toString() {
  return 'WalletReleaseWrite(idempotencyKey: $idempotencyKey)';
}


}

/// @nodoc
abstract mixin class _$WalletReleaseWriteCopyWith<$Res> implements $WalletReleaseWriteCopyWith<$Res> {
  factory _$WalletReleaseWriteCopyWith(_WalletReleaseWrite value, $Res Function(_WalletReleaseWrite) _then) = __$WalletReleaseWriteCopyWithImpl;
@override @useResult
$Res call({
 String idempotencyKey
});




}
/// @nodoc
class __$WalletReleaseWriteCopyWithImpl<$Res>
    implements _$WalletReleaseWriteCopyWith<$Res> {
  __$WalletReleaseWriteCopyWithImpl(this._self, this._then);

  final _WalletReleaseWrite _self;
  final $Res Function(_WalletReleaseWrite) _then;

/// Create a copy of WalletReleaseWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idempotencyKey = null,}) {
  return _then(_WalletReleaseWrite(
idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
