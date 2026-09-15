// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_rebid_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuctionRebidResponse {

 bool get success; Data3 get data;
/// Create a copy of AuctionRebidResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionRebidResponseCopyWith<AuctionRebidResponse> get copyWith => _$AuctionRebidResponseCopyWithImpl<AuctionRebidResponse>(this as AuctionRebidResponse, _$identity);

  /// Serializes this AuctionRebidResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionRebidResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'AuctionRebidResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $AuctionRebidResponseCopyWith<$Res>  {
  factory $AuctionRebidResponseCopyWith(AuctionRebidResponse value, $Res Function(AuctionRebidResponse) _then) = _$AuctionRebidResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Data3 data
});


$Data3CopyWith<$Res> get data;

}
/// @nodoc
class _$AuctionRebidResponseCopyWithImpl<$Res>
    implements $AuctionRebidResponseCopyWith<$Res> {
  _$AuctionRebidResponseCopyWithImpl(this._self, this._then);

  final AuctionRebidResponse _self;
  final $Res Function(AuctionRebidResponse) _then;

/// Create a copy of AuctionRebidResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data3,
  ));
}
/// Create a copy of AuctionRebidResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data3CopyWith<$Res> get data {
  
  return $Data3CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuctionRebidResponse].
extension AuctionRebidResponsePatterns on AuctionRebidResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionRebidResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionRebidResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionRebidResponse value)  $default,){
final _that = this;
switch (_that) {
case _AuctionRebidResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionRebidResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionRebidResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Data3 data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionRebidResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Data3 data)  $default,) {final _that = this;
switch (_that) {
case _AuctionRebidResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Data3 data)?  $default,) {final _that = this;
switch (_that) {
case _AuctionRebidResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionRebidResponse implements AuctionRebidResponse {
  const _AuctionRebidResponse({required this.success, required this.data});
  factory _AuctionRebidResponse.fromJson(Map<String, dynamic> json) => _$AuctionRebidResponseFromJson(json);

@override final  bool success;
@override final  Data3 data;

/// Create a copy of AuctionRebidResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionRebidResponseCopyWith<_AuctionRebidResponse> get copyWith => __$AuctionRebidResponseCopyWithImpl<_AuctionRebidResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionRebidResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionRebidResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'AuctionRebidResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AuctionRebidResponseCopyWith<$Res> implements $AuctionRebidResponseCopyWith<$Res> {
  factory _$AuctionRebidResponseCopyWith(_AuctionRebidResponse value, $Res Function(_AuctionRebidResponse) _then) = __$AuctionRebidResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Data3 data
});


@override $Data3CopyWith<$Res> get data;

}
/// @nodoc
class __$AuctionRebidResponseCopyWithImpl<$Res>
    implements _$AuctionRebidResponseCopyWith<$Res> {
  __$AuctionRebidResponseCopyWithImpl(this._self, this._then);

  final _AuctionRebidResponse _self;
  final $Res Function(_AuctionRebidResponse) _then;

/// Create a copy of AuctionRebidResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_AuctionRebidResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data3,
  ));
}

/// Create a copy of AuctionRebidResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data3CopyWith<$Res> get data {
  
  return $Data3CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
