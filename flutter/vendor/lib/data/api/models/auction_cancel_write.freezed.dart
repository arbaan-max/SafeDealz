// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_cancel_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuctionCancelWrite {

 String get reason;
/// Create a copy of AuctionCancelWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionCancelWriteCopyWith<AuctionCancelWrite> get copyWith => _$AuctionCancelWriteCopyWithImpl<AuctionCancelWrite>(this as AuctionCancelWrite, _$identity);

  /// Serializes this AuctionCancelWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionCancelWrite&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'AuctionCancelWrite(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $AuctionCancelWriteCopyWith<$Res>  {
  factory $AuctionCancelWriteCopyWith(AuctionCancelWrite value, $Res Function(AuctionCancelWrite) _then) = _$AuctionCancelWriteCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$AuctionCancelWriteCopyWithImpl<$Res>
    implements $AuctionCancelWriteCopyWith<$Res> {
  _$AuctionCancelWriteCopyWithImpl(this._self, this._then);

  final AuctionCancelWrite _self;
  final $Res Function(AuctionCancelWrite) _then;

/// Create a copy of AuctionCancelWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reason = null,}) {
  return _then(_self.copyWith(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuctionCancelWrite].
extension AuctionCancelWritePatterns on AuctionCancelWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionCancelWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionCancelWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionCancelWrite value)  $default,){
final _that = this;
switch (_that) {
case _AuctionCancelWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionCancelWrite value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionCancelWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionCancelWrite() when $default != null:
return $default(_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String reason)  $default,) {final _that = this;
switch (_that) {
case _AuctionCancelWrite():
return $default(_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String reason)?  $default,) {final _that = this;
switch (_that) {
case _AuctionCancelWrite() when $default != null:
return $default(_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionCancelWrite implements AuctionCancelWrite {
  const _AuctionCancelWrite({required this.reason});
  factory _AuctionCancelWrite.fromJson(Map<String, dynamic> json) => _$AuctionCancelWriteFromJson(json);

@override final  String reason;

/// Create a copy of AuctionCancelWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionCancelWriteCopyWith<_AuctionCancelWrite> get copyWith => __$AuctionCancelWriteCopyWithImpl<_AuctionCancelWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionCancelWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionCancelWrite&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'AuctionCancelWrite(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$AuctionCancelWriteCopyWith<$Res> implements $AuctionCancelWriteCopyWith<$Res> {
  factory _$AuctionCancelWriteCopyWith(_AuctionCancelWrite value, $Res Function(_AuctionCancelWrite) _then) = __$AuctionCancelWriteCopyWithImpl;
@override @useResult
$Res call({
 String reason
});




}
/// @nodoc
class __$AuctionCancelWriteCopyWithImpl<$Res>
    implements _$AuctionCancelWriteCopyWith<$Res> {
  __$AuctionCancelWriteCopyWithImpl(this._self, this._then);

  final _AuctionCancelWrite _self;
  final $Res Function(_AuctionCancelWrite) _then;

/// Create a copy of AuctionCancelWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(_AuctionCancelWrite(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
