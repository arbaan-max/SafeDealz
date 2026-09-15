// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_overview_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RewardOverviewResponse {

 bool get success; RewardOverview get data;
/// Create a copy of RewardOverviewResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardOverviewResponseCopyWith<RewardOverviewResponse> get copyWith => _$RewardOverviewResponseCopyWithImpl<RewardOverviewResponse>(this as RewardOverviewResponse, _$identity);

  /// Serializes this RewardOverviewResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardOverviewResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'RewardOverviewResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $RewardOverviewResponseCopyWith<$Res>  {
  factory $RewardOverviewResponseCopyWith(RewardOverviewResponse value, $Res Function(RewardOverviewResponse) _then) = _$RewardOverviewResponseCopyWithImpl;
@useResult
$Res call({
 bool success, RewardOverview data
});


$RewardOverviewCopyWith<$Res> get data;

}
/// @nodoc
class _$RewardOverviewResponseCopyWithImpl<$Res>
    implements $RewardOverviewResponseCopyWith<$Res> {
  _$RewardOverviewResponseCopyWithImpl(this._self, this._then);

  final RewardOverviewResponse _self;
  final $Res Function(RewardOverviewResponse) _then;

/// Create a copy of RewardOverviewResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RewardOverview,
  ));
}
/// Create a copy of RewardOverviewResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardOverviewCopyWith<$Res> get data {
  
  return $RewardOverviewCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [RewardOverviewResponse].
extension RewardOverviewResponsePatterns on RewardOverviewResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardOverviewResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardOverviewResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardOverviewResponse value)  $default,){
final _that = this;
switch (_that) {
case _RewardOverviewResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardOverviewResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RewardOverviewResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  RewardOverview data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardOverviewResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  RewardOverview data)  $default,) {final _that = this;
switch (_that) {
case _RewardOverviewResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  RewardOverview data)?  $default,) {final _that = this;
switch (_that) {
case _RewardOverviewResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RewardOverviewResponse implements RewardOverviewResponse {
  const _RewardOverviewResponse({required this.success, required this.data});
  factory _RewardOverviewResponse.fromJson(Map<String, dynamic> json) => _$RewardOverviewResponseFromJson(json);

@override final  bool success;
@override final  RewardOverview data;

/// Create a copy of RewardOverviewResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardOverviewResponseCopyWith<_RewardOverviewResponse> get copyWith => __$RewardOverviewResponseCopyWithImpl<_RewardOverviewResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardOverviewResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardOverviewResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'RewardOverviewResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$RewardOverviewResponseCopyWith<$Res> implements $RewardOverviewResponseCopyWith<$Res> {
  factory _$RewardOverviewResponseCopyWith(_RewardOverviewResponse value, $Res Function(_RewardOverviewResponse) _then) = __$RewardOverviewResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, RewardOverview data
});


@override $RewardOverviewCopyWith<$Res> get data;

}
/// @nodoc
class __$RewardOverviewResponseCopyWithImpl<$Res>
    implements _$RewardOverviewResponseCopyWith<$Res> {
  __$RewardOverviewResponseCopyWithImpl(this._self, this._then);

  final _RewardOverviewResponse _self;
  final $Res Function(_RewardOverviewResponse) _then;

/// Create a copy of RewardOverviewResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_RewardOverviewResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RewardOverview,
  ));
}

/// Create a copy of RewardOverviewResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardOverviewCopyWith<$Res> get data {
  
  return $RewardOverviewCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
