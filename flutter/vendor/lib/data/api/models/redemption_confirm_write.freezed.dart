// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redemption_confirm_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RedemptionConfirmWrite {

 String get otp;
/// Create a copy of RedemptionConfirmWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RedemptionConfirmWriteCopyWith<RedemptionConfirmWrite> get copyWith => _$RedemptionConfirmWriteCopyWithImpl<RedemptionConfirmWrite>(this as RedemptionConfirmWrite, _$identity);

  /// Serializes this RedemptionConfirmWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RedemptionConfirmWrite&&(identical(other.otp, otp) || other.otp == otp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,otp);

@override
String toString() {
  return 'RedemptionConfirmWrite(otp: $otp)';
}


}

/// @nodoc
abstract mixin class $RedemptionConfirmWriteCopyWith<$Res>  {
  factory $RedemptionConfirmWriteCopyWith(RedemptionConfirmWrite value, $Res Function(RedemptionConfirmWrite) _then) = _$RedemptionConfirmWriteCopyWithImpl;
@useResult
$Res call({
 String otp
});




}
/// @nodoc
class _$RedemptionConfirmWriteCopyWithImpl<$Res>
    implements $RedemptionConfirmWriteCopyWith<$Res> {
  _$RedemptionConfirmWriteCopyWithImpl(this._self, this._then);

  final RedemptionConfirmWrite _self;
  final $Res Function(RedemptionConfirmWrite) _then;

/// Create a copy of RedemptionConfirmWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? otp = null,}) {
  return _then(_self.copyWith(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RedemptionConfirmWrite].
extension RedemptionConfirmWritePatterns on RedemptionConfirmWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RedemptionConfirmWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RedemptionConfirmWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RedemptionConfirmWrite value)  $default,){
final _that = this;
switch (_that) {
case _RedemptionConfirmWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RedemptionConfirmWrite value)?  $default,){
final _that = this;
switch (_that) {
case _RedemptionConfirmWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String otp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RedemptionConfirmWrite() when $default != null:
return $default(_that.otp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String otp)  $default,) {final _that = this;
switch (_that) {
case _RedemptionConfirmWrite():
return $default(_that.otp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String otp)?  $default,) {final _that = this;
switch (_that) {
case _RedemptionConfirmWrite() when $default != null:
return $default(_that.otp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RedemptionConfirmWrite implements RedemptionConfirmWrite {
  const _RedemptionConfirmWrite({required this.otp});
  factory _RedemptionConfirmWrite.fromJson(Map<String, dynamic> json) => _$RedemptionConfirmWriteFromJson(json);

@override final  String otp;

/// Create a copy of RedemptionConfirmWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RedemptionConfirmWriteCopyWith<_RedemptionConfirmWrite> get copyWith => __$RedemptionConfirmWriteCopyWithImpl<_RedemptionConfirmWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RedemptionConfirmWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedemptionConfirmWrite&&(identical(other.otp, otp) || other.otp == otp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,otp);

@override
String toString() {
  return 'RedemptionConfirmWrite(otp: $otp)';
}


}

/// @nodoc
abstract mixin class _$RedemptionConfirmWriteCopyWith<$Res> implements $RedemptionConfirmWriteCopyWith<$Res> {
  factory _$RedemptionConfirmWriteCopyWith(_RedemptionConfirmWrite value, $Res Function(_RedemptionConfirmWrite) _then) = __$RedemptionConfirmWriteCopyWithImpl;
@override @useResult
$Res call({
 String otp
});




}
/// @nodoc
class __$RedemptionConfirmWriteCopyWithImpl<$Res>
    implements _$RedemptionConfirmWriteCopyWith<$Res> {
  __$RedemptionConfirmWriteCopyWithImpl(this._self, this._then);

  final _RedemptionConfirmWrite _self;
  final $Res Function(_RedemptionConfirmWrite) _then;

/// Create a copy of RedemptionConfirmWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? otp = null,}) {
  return _then(_RedemptionConfirmWrite(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
