// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_decline_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuctionDeclineWrite {

 AuctionDeclineWriteReasonCode get reasonCode; String? get reason;
/// Create a copy of AuctionDeclineWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionDeclineWriteCopyWith<AuctionDeclineWrite> get copyWith => _$AuctionDeclineWriteCopyWithImpl<AuctionDeclineWrite>(this as AuctionDeclineWrite, _$identity);

  /// Serializes this AuctionDeclineWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionDeclineWrite&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reasonCode,reason);

@override
String toString() {
  return 'AuctionDeclineWrite(reasonCode: $reasonCode, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $AuctionDeclineWriteCopyWith<$Res>  {
  factory $AuctionDeclineWriteCopyWith(AuctionDeclineWrite value, $Res Function(AuctionDeclineWrite) _then) = _$AuctionDeclineWriteCopyWithImpl;
@useResult
$Res call({
 AuctionDeclineWriteReasonCode reasonCode, String? reason
});




}
/// @nodoc
class _$AuctionDeclineWriteCopyWithImpl<$Res>
    implements $AuctionDeclineWriteCopyWith<$Res> {
  _$AuctionDeclineWriteCopyWithImpl(this._self, this._then);

  final AuctionDeclineWrite _self;
  final $Res Function(AuctionDeclineWrite) _then;

/// Create a copy of AuctionDeclineWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reasonCode = null,Object? reason = freezed,}) {
  return _then(_self.copyWith(
reasonCode: null == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as AuctionDeclineWriteReasonCode,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuctionDeclineWrite].
extension AuctionDeclineWritePatterns on AuctionDeclineWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionDeclineWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionDeclineWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionDeclineWrite value)  $default,){
final _that = this;
switch (_that) {
case _AuctionDeclineWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionDeclineWrite value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionDeclineWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuctionDeclineWriteReasonCode reasonCode,  String? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionDeclineWrite() when $default != null:
return $default(_that.reasonCode,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuctionDeclineWriteReasonCode reasonCode,  String? reason)  $default,) {final _that = this;
switch (_that) {
case _AuctionDeclineWrite():
return $default(_that.reasonCode,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuctionDeclineWriteReasonCode reasonCode,  String? reason)?  $default,) {final _that = this;
switch (_that) {
case _AuctionDeclineWrite() when $default != null:
return $default(_that.reasonCode,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionDeclineWrite implements AuctionDeclineWrite {
  const _AuctionDeclineWrite({required this.reasonCode, this.reason});
  factory _AuctionDeclineWrite.fromJson(Map<String, dynamic> json) => _$AuctionDeclineWriteFromJson(json);

@override final  AuctionDeclineWriteReasonCode reasonCode;
@override final  String? reason;

/// Create a copy of AuctionDeclineWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionDeclineWriteCopyWith<_AuctionDeclineWrite> get copyWith => __$AuctionDeclineWriteCopyWithImpl<_AuctionDeclineWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionDeclineWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionDeclineWrite&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reasonCode,reason);

@override
String toString() {
  return 'AuctionDeclineWrite(reasonCode: $reasonCode, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$AuctionDeclineWriteCopyWith<$Res> implements $AuctionDeclineWriteCopyWith<$Res> {
  factory _$AuctionDeclineWriteCopyWith(_AuctionDeclineWrite value, $Res Function(_AuctionDeclineWrite) _then) = __$AuctionDeclineWriteCopyWithImpl;
@override @useResult
$Res call({
 AuctionDeclineWriteReasonCode reasonCode, String? reason
});




}
/// @nodoc
class __$AuctionDeclineWriteCopyWithImpl<$Res>
    implements _$AuctionDeclineWriteCopyWith<$Res> {
  __$AuctionDeclineWriteCopyWithImpl(this._self, this._then);

  final _AuctionDeclineWrite _self;
  final $Res Function(_AuctionDeclineWrite) _then;

/// Create a copy of AuctionDeclineWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reasonCode = null,Object? reason = freezed,}) {
  return _then(_AuctionDeclineWrite(
reasonCode: null == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as AuctionDeclineWriteReasonCode,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
