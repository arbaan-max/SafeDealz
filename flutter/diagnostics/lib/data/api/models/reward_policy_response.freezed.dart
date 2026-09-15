// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_policy_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RewardPolicyResponse {

 bool get success; Data4 get data;
/// Create a copy of RewardPolicyResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardPolicyResponseCopyWith<RewardPolicyResponse> get copyWith => _$RewardPolicyResponseCopyWithImpl<RewardPolicyResponse>(this as RewardPolicyResponse, _$identity);

  /// Serializes this RewardPolicyResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardPolicyResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'RewardPolicyResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $RewardPolicyResponseCopyWith<$Res>  {
  factory $RewardPolicyResponseCopyWith(RewardPolicyResponse value, $Res Function(RewardPolicyResponse) _then) = _$RewardPolicyResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Data4 data
});


$Data4CopyWith<$Res> get data;

}
/// @nodoc
class _$RewardPolicyResponseCopyWithImpl<$Res>
    implements $RewardPolicyResponseCopyWith<$Res> {
  _$RewardPolicyResponseCopyWithImpl(this._self, this._then);

  final RewardPolicyResponse _self;
  final $Res Function(RewardPolicyResponse) _then;

/// Create a copy of RewardPolicyResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data4,
  ));
}
/// Create a copy of RewardPolicyResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data4CopyWith<$Res> get data {
  
  return $Data4CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [RewardPolicyResponse].
extension RewardPolicyResponsePatterns on RewardPolicyResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardPolicyResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardPolicyResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardPolicyResponse value)  $default,){
final _that = this;
switch (_that) {
case _RewardPolicyResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardPolicyResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RewardPolicyResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Data4 data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardPolicyResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Data4 data)  $default,) {final _that = this;
switch (_that) {
case _RewardPolicyResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Data4 data)?  $default,) {final _that = this;
switch (_that) {
case _RewardPolicyResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RewardPolicyResponse implements RewardPolicyResponse {
  const _RewardPolicyResponse({required this.success, required this.data});
  factory _RewardPolicyResponse.fromJson(Map<String, dynamic> json) => _$RewardPolicyResponseFromJson(json);

@override final  bool success;
@override final  Data4 data;

/// Create a copy of RewardPolicyResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardPolicyResponseCopyWith<_RewardPolicyResponse> get copyWith => __$RewardPolicyResponseCopyWithImpl<_RewardPolicyResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardPolicyResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardPolicyResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'RewardPolicyResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$RewardPolicyResponseCopyWith<$Res> implements $RewardPolicyResponseCopyWith<$Res> {
  factory _$RewardPolicyResponseCopyWith(_RewardPolicyResponse value, $Res Function(_RewardPolicyResponse) _then) = __$RewardPolicyResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Data4 data
});


@override $Data4CopyWith<$Res> get data;

}
/// @nodoc
class __$RewardPolicyResponseCopyWithImpl<$Res>
    implements _$RewardPolicyResponseCopyWith<$Res> {
  __$RewardPolicyResponseCopyWithImpl(this._self, this._then);

  final _RewardPolicyResponse _self;
  final $Res Function(_RewardPolicyResponse) _then;

/// Create a copy of RewardPolicyResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_RewardPolicyResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data4,
  ));
}

/// Create a copy of RewardPolicyResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data4CopyWith<$Res> get data {
  
  return $Data4CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
