// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuctionResponse {

 bool get success; AuctionRound get data;
/// Create a copy of AuctionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionResponseCopyWith<AuctionResponse> get copyWith => _$AuctionResponseCopyWithImpl<AuctionResponse>(this as AuctionResponse, _$identity);

  /// Serializes this AuctionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'AuctionResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $AuctionResponseCopyWith<$Res>  {
  factory $AuctionResponseCopyWith(AuctionResponse value, $Res Function(AuctionResponse) _then) = _$AuctionResponseCopyWithImpl;
@useResult
$Res call({
 bool success, AuctionRound data
});


$AuctionRoundCopyWith<$Res> get data;

}
/// @nodoc
class _$AuctionResponseCopyWithImpl<$Res>
    implements $AuctionResponseCopyWith<$Res> {
  _$AuctionResponseCopyWithImpl(this._self, this._then);

  final AuctionResponse _self;
  final $Res Function(AuctionResponse) _then;

/// Create a copy of AuctionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AuctionRound,
  ));
}
/// Create a copy of AuctionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionRoundCopyWith<$Res> get data {
  
  return $AuctionRoundCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuctionResponse].
extension AuctionResponsePatterns on AuctionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionResponse value)  $default,){
final _that = this;
switch (_that) {
case _AuctionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  AuctionRound data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionResponse() when $default != null:
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  AuctionRound data)  $default,) {final _that = this;
switch (_that) {
case _AuctionResponse():
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  AuctionRound data)?  $default,) {final _that = this;
switch (_that) {
case _AuctionResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionResponse implements AuctionResponse {
  const _AuctionResponse({required this.success, required this.data});
  factory _AuctionResponse.fromJson(Map<String, dynamic> json) => _$AuctionResponseFromJson(json);

@override final  bool success;
@override final  AuctionRound data;

/// Create a copy of AuctionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionResponseCopyWith<_AuctionResponse> get copyWith => __$AuctionResponseCopyWithImpl<_AuctionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'AuctionResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AuctionResponseCopyWith<$Res> implements $AuctionResponseCopyWith<$Res> {
  factory _$AuctionResponseCopyWith(_AuctionResponse value, $Res Function(_AuctionResponse) _then) = __$AuctionResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, AuctionRound data
});


@override $AuctionRoundCopyWith<$Res> get data;

}
/// @nodoc
class __$AuctionResponseCopyWithImpl<$Res>
    implements _$AuctionResponseCopyWith<$Res> {
  __$AuctionResponseCopyWithImpl(this._self, this._then);

  final _AuctionResponse _self;
  final $Res Function(_AuctionResponse) _then;

/// Create a copy of AuctionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_AuctionResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AuctionRound,
  ));
}

/// Create a copy of AuctionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionRoundCopyWith<$Res> get data {
  
  return $AuctionRoundCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
