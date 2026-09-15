// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OverviewResponse {

 bool get success; Overview get data;
/// Create a copy of OverviewResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverviewResponseCopyWith<OverviewResponse> get copyWith => _$OverviewResponseCopyWithImpl<OverviewResponse>(this as OverviewResponse, _$identity);

  /// Serializes this OverviewResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverviewResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'OverviewResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $OverviewResponseCopyWith<$Res>  {
  factory $OverviewResponseCopyWith(OverviewResponse value, $Res Function(OverviewResponse) _then) = _$OverviewResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Overview data
});


$OverviewCopyWith<$Res> get data;

}
/// @nodoc
class _$OverviewResponseCopyWithImpl<$Res>
    implements $OverviewResponseCopyWith<$Res> {
  _$OverviewResponseCopyWithImpl(this._self, this._then);

  final OverviewResponse _self;
  final $Res Function(OverviewResponse) _then;

/// Create a copy of OverviewResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Overview,
  ));
}
/// Create a copy of OverviewResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OverviewCopyWith<$Res> get data {
  
  return $OverviewCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [OverviewResponse].
extension OverviewResponsePatterns on OverviewResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OverviewResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OverviewResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OverviewResponse value)  $default,){
final _that = this;
switch (_that) {
case _OverviewResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OverviewResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OverviewResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Overview data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OverviewResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Overview data)  $default,) {final _that = this;
switch (_that) {
case _OverviewResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Overview data)?  $default,) {final _that = this;
switch (_that) {
case _OverviewResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OverviewResponse implements OverviewResponse {
  const _OverviewResponse({required this.success, required this.data});
  factory _OverviewResponse.fromJson(Map<String, dynamic> json) => _$OverviewResponseFromJson(json);

@override final  bool success;
@override final  Overview data;

/// Create a copy of OverviewResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverviewResponseCopyWith<_OverviewResponse> get copyWith => __$OverviewResponseCopyWithImpl<_OverviewResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OverviewResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OverviewResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'OverviewResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$OverviewResponseCopyWith<$Res> implements $OverviewResponseCopyWith<$Res> {
  factory _$OverviewResponseCopyWith(_OverviewResponse value, $Res Function(_OverviewResponse) _then) = __$OverviewResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Overview data
});


@override $OverviewCopyWith<$Res> get data;

}
/// @nodoc
class __$OverviewResponseCopyWithImpl<$Res>
    implements _$OverviewResponseCopyWith<$Res> {
  __$OverviewResponseCopyWithImpl(this._self, this._then);

  final _OverviewResponse _self;
  final $Res Function(_OverviewResponse) _then;

/// Create a copy of OverviewResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_OverviewResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Overview,
  ));
}

/// Create a copy of OverviewResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OverviewCopyWith<$Res> get data {
  
  return $OverviewCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
