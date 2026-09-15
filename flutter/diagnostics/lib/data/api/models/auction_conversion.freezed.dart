// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_conversion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuctionConversion {

 int? get started; int? get accepted; num? get rate;
/// Create a copy of AuctionConversion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionConversionCopyWith<AuctionConversion> get copyWith => _$AuctionConversionCopyWithImpl<AuctionConversion>(this as AuctionConversion, _$identity);

  /// Serializes this AuctionConversion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionConversion&&(identical(other.started, started) || other.started == started)&&(identical(other.accepted, accepted) || other.accepted == accepted)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,started,accepted,rate);

@override
String toString() {
  return 'AuctionConversion(started: $started, accepted: $accepted, rate: $rate)';
}


}

/// @nodoc
abstract mixin class $AuctionConversionCopyWith<$Res>  {
  factory $AuctionConversionCopyWith(AuctionConversion value, $Res Function(AuctionConversion) _then) = _$AuctionConversionCopyWithImpl;
@useResult
$Res call({
 int? started, int? accepted, num? rate
});




}
/// @nodoc
class _$AuctionConversionCopyWithImpl<$Res>
    implements $AuctionConversionCopyWith<$Res> {
  _$AuctionConversionCopyWithImpl(this._self, this._then);

  final AuctionConversion _self;
  final $Res Function(AuctionConversion) _then;

/// Create a copy of AuctionConversion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? started = freezed,Object? accepted = freezed,Object? rate = freezed,}) {
  return _then(_self.copyWith(
started: freezed == started ? _self.started : started // ignore: cast_nullable_to_non_nullable
as int?,accepted: freezed == accepted ? _self.accepted : accepted // ignore: cast_nullable_to_non_nullable
as int?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuctionConversion].
extension AuctionConversionPatterns on AuctionConversion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionConversion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionConversion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionConversion value)  $default,){
final _that = this;
switch (_that) {
case _AuctionConversion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionConversion value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionConversion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? started,  int? accepted,  num? rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionConversion() when $default != null:
return $default(_that.started,_that.accepted,_that.rate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? started,  int? accepted,  num? rate)  $default,) {final _that = this;
switch (_that) {
case _AuctionConversion():
return $default(_that.started,_that.accepted,_that.rate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? started,  int? accepted,  num? rate)?  $default,) {final _that = this;
switch (_that) {
case _AuctionConversion() when $default != null:
return $default(_that.started,_that.accepted,_that.rate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionConversion implements AuctionConversion {
  const _AuctionConversion({this.started, this.accepted, this.rate});
  factory _AuctionConversion.fromJson(Map<String, dynamic> json) => _$AuctionConversionFromJson(json);

@override final  int? started;
@override final  int? accepted;
@override final  num? rate;

/// Create a copy of AuctionConversion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionConversionCopyWith<_AuctionConversion> get copyWith => __$AuctionConversionCopyWithImpl<_AuctionConversion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionConversionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionConversion&&(identical(other.started, started) || other.started == started)&&(identical(other.accepted, accepted) || other.accepted == accepted)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,started,accepted,rate);

@override
String toString() {
  return 'AuctionConversion(started: $started, accepted: $accepted, rate: $rate)';
}


}

/// @nodoc
abstract mixin class _$AuctionConversionCopyWith<$Res> implements $AuctionConversionCopyWith<$Res> {
  factory _$AuctionConversionCopyWith(_AuctionConversion value, $Res Function(_AuctionConversion) _then) = __$AuctionConversionCopyWithImpl;
@override @useResult
$Res call({
 int? started, int? accepted, num? rate
});




}
/// @nodoc
class __$AuctionConversionCopyWithImpl<$Res>
    implements _$AuctionConversionCopyWith<$Res> {
  __$AuctionConversionCopyWithImpl(this._self, this._then);

  final _AuctionConversion _self;
  final $Res Function(_AuctionConversion) _then;

/// Create a copy of AuctionConversion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? started = freezed,Object? accepted = freezed,Object? rate = freezed,}) {
  return _then(_AuctionConversion(
started: freezed == started ? _self.started : started // ignore: cast_nullable_to_non_nullable
as int?,accepted: freezed == accepted ? _self.accepted : accepted // ignore: cast_nullable_to_non_nullable
as int?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}

// dart format on
