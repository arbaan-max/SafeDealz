// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_tick_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuctionTickResponse {

 bool get success; Data6 get data;
/// Create a copy of AuctionTickResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionTickResponseCopyWith<AuctionTickResponse> get copyWith => _$AuctionTickResponseCopyWithImpl<AuctionTickResponse>(this as AuctionTickResponse, _$identity);

  /// Serializes this AuctionTickResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionTickResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'AuctionTickResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $AuctionTickResponseCopyWith<$Res>  {
  factory $AuctionTickResponseCopyWith(AuctionTickResponse value, $Res Function(AuctionTickResponse) _then) = _$AuctionTickResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Data6 data
});


$Data6CopyWith<$Res> get data;

}
/// @nodoc
class _$AuctionTickResponseCopyWithImpl<$Res>
    implements $AuctionTickResponseCopyWith<$Res> {
  _$AuctionTickResponseCopyWithImpl(this._self, this._then);

  final AuctionTickResponse _self;
  final $Res Function(AuctionTickResponse) _then;

/// Create a copy of AuctionTickResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data6,
  ));
}
/// Create a copy of AuctionTickResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data6CopyWith<$Res> get data {
  
  return $Data6CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuctionTickResponse].
extension AuctionTickResponsePatterns on AuctionTickResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionTickResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionTickResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionTickResponse value)  $default,){
final _that = this;
switch (_that) {
case _AuctionTickResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionTickResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionTickResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Data6 data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionTickResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Data6 data)  $default,) {final _that = this;
switch (_that) {
case _AuctionTickResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Data6 data)?  $default,) {final _that = this;
switch (_that) {
case _AuctionTickResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionTickResponse implements AuctionTickResponse {
  const _AuctionTickResponse({required this.success, required this.data});
  factory _AuctionTickResponse.fromJson(Map<String, dynamic> json) => _$AuctionTickResponseFromJson(json);

@override final  bool success;
@override final  Data6 data;

/// Create a copy of AuctionTickResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionTickResponseCopyWith<_AuctionTickResponse> get copyWith => __$AuctionTickResponseCopyWithImpl<_AuctionTickResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionTickResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionTickResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'AuctionTickResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AuctionTickResponseCopyWith<$Res> implements $AuctionTickResponseCopyWith<$Res> {
  factory _$AuctionTickResponseCopyWith(_AuctionTickResponse value, $Res Function(_AuctionTickResponse) _then) = __$AuctionTickResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Data6 data
});


@override $Data6CopyWith<$Res> get data;

}
/// @nodoc
class __$AuctionTickResponseCopyWithImpl<$Res>
    implements _$AuctionTickResponseCopyWith<$Res> {
  __$AuctionTickResponseCopyWithImpl(this._self, this._then);

  final _AuctionTickResponse _self;
  final $Res Function(_AuctionTickResponse) _then;

/// Create a copy of AuctionTickResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_AuctionTickResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data6,
  ));
}

/// Create a copy of AuctionTickResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data6CopyWith<$Res> get data {
  
  return $Data6CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
