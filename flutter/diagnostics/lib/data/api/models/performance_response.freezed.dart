// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'performance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PerformanceResponse {

 bool get success; Performance get data;
/// Create a copy of PerformanceResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PerformanceResponseCopyWith<PerformanceResponse> get copyWith => _$PerformanceResponseCopyWithImpl<PerformanceResponse>(this as PerformanceResponse, _$identity);

  /// Serializes this PerformanceResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PerformanceResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'PerformanceResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $PerformanceResponseCopyWith<$Res>  {
  factory $PerformanceResponseCopyWith(PerformanceResponse value, $Res Function(PerformanceResponse) _then) = _$PerformanceResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Performance data
});


$PerformanceCopyWith<$Res> get data;

}
/// @nodoc
class _$PerformanceResponseCopyWithImpl<$Res>
    implements $PerformanceResponseCopyWith<$Res> {
  _$PerformanceResponseCopyWithImpl(this._self, this._then);

  final PerformanceResponse _self;
  final $Res Function(PerformanceResponse) _then;

/// Create a copy of PerformanceResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Performance,
  ));
}
/// Create a copy of PerformanceResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PerformanceCopyWith<$Res> get data {
  
  return $PerformanceCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PerformanceResponse].
extension PerformanceResponsePatterns on PerformanceResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PerformanceResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PerformanceResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PerformanceResponse value)  $default,){
final _that = this;
switch (_that) {
case _PerformanceResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PerformanceResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PerformanceResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Performance data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PerformanceResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Performance data)  $default,) {final _that = this;
switch (_that) {
case _PerformanceResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Performance data)?  $default,) {final _that = this;
switch (_that) {
case _PerformanceResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PerformanceResponse implements PerformanceResponse {
  const _PerformanceResponse({required this.success, required this.data});
  factory _PerformanceResponse.fromJson(Map<String, dynamic> json) => _$PerformanceResponseFromJson(json);

@override final  bool success;
@override final  Performance data;

/// Create a copy of PerformanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PerformanceResponseCopyWith<_PerformanceResponse> get copyWith => __$PerformanceResponseCopyWithImpl<_PerformanceResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PerformanceResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PerformanceResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'PerformanceResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PerformanceResponseCopyWith<$Res> implements $PerformanceResponseCopyWith<$Res> {
  factory _$PerformanceResponseCopyWith(_PerformanceResponse value, $Res Function(_PerformanceResponse) _then) = __$PerformanceResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Performance data
});


@override $PerformanceCopyWith<$Res> get data;

}
/// @nodoc
class __$PerformanceResponseCopyWithImpl<$Res>
    implements _$PerformanceResponseCopyWith<$Res> {
  __$PerformanceResponseCopyWithImpl(this._self, this._then);

  final _PerformanceResponse _self;
  final $Res Function(_PerformanceResponse) _then;

/// Create a copy of PerformanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_PerformanceResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Performance,
  ));
}

/// Create a copy of PerformanceResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PerformanceCopyWith<$Res> get data {
  
  return $PerformanceCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
