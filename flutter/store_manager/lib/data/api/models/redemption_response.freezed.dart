// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redemption_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RedemptionResponse {

 bool get success; Redemption get data;
/// Create a copy of RedemptionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RedemptionResponseCopyWith<RedemptionResponse> get copyWith => _$RedemptionResponseCopyWithImpl<RedemptionResponse>(this as RedemptionResponse, _$identity);

  /// Serializes this RedemptionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RedemptionResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'RedemptionResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $RedemptionResponseCopyWith<$Res>  {
  factory $RedemptionResponseCopyWith(RedemptionResponse value, $Res Function(RedemptionResponse) _then) = _$RedemptionResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Redemption data
});


$RedemptionCopyWith<$Res> get data;

}
/// @nodoc
class _$RedemptionResponseCopyWithImpl<$Res>
    implements $RedemptionResponseCopyWith<$Res> {
  _$RedemptionResponseCopyWithImpl(this._self, this._then);

  final RedemptionResponse _self;
  final $Res Function(RedemptionResponse) _then;

/// Create a copy of RedemptionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Redemption,
  ));
}
/// Create a copy of RedemptionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RedemptionCopyWith<$Res> get data {
  
  return $RedemptionCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [RedemptionResponse].
extension RedemptionResponsePatterns on RedemptionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RedemptionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RedemptionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RedemptionResponse value)  $default,){
final _that = this;
switch (_that) {
case _RedemptionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RedemptionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RedemptionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Redemption data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RedemptionResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Redemption data)  $default,) {final _that = this;
switch (_that) {
case _RedemptionResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Redemption data)?  $default,) {final _that = this;
switch (_that) {
case _RedemptionResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RedemptionResponse implements RedemptionResponse {
  const _RedemptionResponse({required this.success, required this.data});
  factory _RedemptionResponse.fromJson(Map<String, dynamic> json) => _$RedemptionResponseFromJson(json);

@override final  bool success;
@override final  Redemption data;

/// Create a copy of RedemptionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RedemptionResponseCopyWith<_RedemptionResponse> get copyWith => __$RedemptionResponseCopyWithImpl<_RedemptionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RedemptionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedemptionResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'RedemptionResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$RedemptionResponseCopyWith<$Res> implements $RedemptionResponseCopyWith<$Res> {
  factory _$RedemptionResponseCopyWith(_RedemptionResponse value, $Res Function(_RedemptionResponse) _then) = __$RedemptionResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Redemption data
});


@override $RedemptionCopyWith<$Res> get data;

}
/// @nodoc
class __$RedemptionResponseCopyWithImpl<$Res>
    implements _$RedemptionResponseCopyWith<$Res> {
  __$RedemptionResponseCopyWithImpl(this._self, this._then);

  final _RedemptionResponse _self;
  final $Res Function(_RedemptionResponse) _then;

/// Create a copy of RedemptionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_RedemptionResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Redemption,
  ));
}

/// Create a copy of RedemptionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RedemptionCopyWith<$Res> get data {
  
  return $RedemptionCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
