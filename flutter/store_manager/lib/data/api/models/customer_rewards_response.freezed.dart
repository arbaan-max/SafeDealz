// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_rewards_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerRewardsResponse {

 bool get success; CustomerRewards get data;
/// Create a copy of CustomerRewardsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerRewardsResponseCopyWith<CustomerRewardsResponse> get copyWith => _$CustomerRewardsResponseCopyWithImpl<CustomerRewardsResponse>(this as CustomerRewardsResponse, _$identity);

  /// Serializes this CustomerRewardsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerRewardsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'CustomerRewardsResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $CustomerRewardsResponseCopyWith<$Res>  {
  factory $CustomerRewardsResponseCopyWith(CustomerRewardsResponse value, $Res Function(CustomerRewardsResponse) _then) = _$CustomerRewardsResponseCopyWithImpl;
@useResult
$Res call({
 bool success, CustomerRewards data
});


$CustomerRewardsCopyWith<$Res> get data;

}
/// @nodoc
class _$CustomerRewardsResponseCopyWithImpl<$Res>
    implements $CustomerRewardsResponseCopyWith<$Res> {
  _$CustomerRewardsResponseCopyWithImpl(this._self, this._then);

  final CustomerRewardsResponse _self;
  final $Res Function(CustomerRewardsResponse) _then;

/// Create a copy of CustomerRewardsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CustomerRewards,
  ));
}
/// Create a copy of CustomerRewardsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerRewardsCopyWith<$Res> get data {
  
  return $CustomerRewardsCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomerRewardsResponse].
extension CustomerRewardsResponsePatterns on CustomerRewardsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerRewardsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerRewardsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerRewardsResponse value)  $default,){
final _that = this;
switch (_that) {
case _CustomerRewardsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerRewardsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerRewardsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  CustomerRewards data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerRewardsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  CustomerRewards data)  $default,) {final _that = this;
switch (_that) {
case _CustomerRewardsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  CustomerRewards data)?  $default,) {final _that = this;
switch (_that) {
case _CustomerRewardsResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerRewardsResponse implements CustomerRewardsResponse {
  const _CustomerRewardsResponse({required this.success, required this.data});
  factory _CustomerRewardsResponse.fromJson(Map<String, dynamic> json) => _$CustomerRewardsResponseFromJson(json);

@override final  bool success;
@override final  CustomerRewards data;

/// Create a copy of CustomerRewardsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerRewardsResponseCopyWith<_CustomerRewardsResponse> get copyWith => __$CustomerRewardsResponseCopyWithImpl<_CustomerRewardsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerRewardsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerRewardsResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'CustomerRewardsResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CustomerRewardsResponseCopyWith<$Res> implements $CustomerRewardsResponseCopyWith<$Res> {
  factory _$CustomerRewardsResponseCopyWith(_CustomerRewardsResponse value, $Res Function(_CustomerRewardsResponse) _then) = __$CustomerRewardsResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, CustomerRewards data
});


@override $CustomerRewardsCopyWith<$Res> get data;

}
/// @nodoc
class __$CustomerRewardsResponseCopyWithImpl<$Res>
    implements _$CustomerRewardsResponseCopyWith<$Res> {
  __$CustomerRewardsResponseCopyWithImpl(this._self, this._then);

  final _CustomerRewardsResponse _self;
  final $Res Function(_CustomerRewardsResponse) _then;

/// Create a copy of CustomerRewardsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_CustomerRewardsResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CustomerRewards,
  ));
}

/// Create a copy of CustomerRewardsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerRewardsCopyWith<$Res> get data {
  
  return $CustomerRewardsCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
