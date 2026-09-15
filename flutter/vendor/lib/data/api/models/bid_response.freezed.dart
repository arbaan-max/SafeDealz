// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BidResponse {

 bool get success; Bid get data;
/// Create a copy of BidResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BidResponseCopyWith<BidResponse> get copyWith => _$BidResponseCopyWithImpl<BidResponse>(this as BidResponse, _$identity);

  /// Serializes this BidResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BidResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'BidResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $BidResponseCopyWith<$Res>  {
  factory $BidResponseCopyWith(BidResponse value, $Res Function(BidResponse) _then) = _$BidResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Bid data
});


$BidCopyWith<$Res> get data;

}
/// @nodoc
class _$BidResponseCopyWithImpl<$Res>
    implements $BidResponseCopyWith<$Res> {
  _$BidResponseCopyWithImpl(this._self, this._then);

  final BidResponse _self;
  final $Res Function(BidResponse) _then;

/// Create a copy of BidResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Bid,
  ));
}
/// Create a copy of BidResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BidCopyWith<$Res> get data {
  
  return $BidCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [BidResponse].
extension BidResponsePatterns on BidResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BidResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BidResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BidResponse value)  $default,){
final _that = this;
switch (_that) {
case _BidResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BidResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BidResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Bid data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BidResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Bid data)  $default,) {final _that = this;
switch (_that) {
case _BidResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Bid data)?  $default,) {final _that = this;
switch (_that) {
case _BidResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BidResponse implements BidResponse {
  const _BidResponse({required this.success, required this.data});
  factory _BidResponse.fromJson(Map<String, dynamic> json) => _$BidResponseFromJson(json);

@override final  bool success;
@override final  Bid data;

/// Create a copy of BidResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BidResponseCopyWith<_BidResponse> get copyWith => __$BidResponseCopyWithImpl<_BidResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BidResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BidResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'BidResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BidResponseCopyWith<$Res> implements $BidResponseCopyWith<$Res> {
  factory _$BidResponseCopyWith(_BidResponse value, $Res Function(_BidResponse) _then) = __$BidResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Bid data
});


@override $BidCopyWith<$Res> get data;

}
/// @nodoc
class __$BidResponseCopyWithImpl<$Res>
    implements _$BidResponseCopyWith<$Res> {
  __$BidResponseCopyWithImpl(this._self, this._then);

  final _BidResponse _self;
  final $Res Function(_BidResponse) _then;

/// Create a copy of BidResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_BidResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Bid,
  ));
}

/// Create a copy of BidResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BidCopyWith<$Res> get data {
  
  return $BidCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
