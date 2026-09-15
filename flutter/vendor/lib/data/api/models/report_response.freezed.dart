// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportResponse {

 bool get success; Report get data;
/// Create a copy of ReportResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportResponseCopyWith<ReportResponse> get copyWith => _$ReportResponseCopyWithImpl<ReportResponse>(this as ReportResponse, _$identity);

  /// Serializes this ReportResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ReportResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ReportResponseCopyWith<$Res>  {
  factory $ReportResponseCopyWith(ReportResponse value, $Res Function(ReportResponse) _then) = _$ReportResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Report data
});


$ReportCopyWith<$Res> get data;

}
/// @nodoc
class _$ReportResponseCopyWithImpl<$Res>
    implements $ReportResponseCopyWith<$Res> {
  _$ReportResponseCopyWithImpl(this._self, this._then);

  final ReportResponse _self;
  final $Res Function(ReportResponse) _then;

/// Create a copy of ReportResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Report,
  ));
}
/// Create a copy of ReportResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportCopyWith<$Res> get data {
  
  return $ReportCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReportResponse].
extension ReportResponsePatterns on ReportResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReportResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReportResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Report data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Report data)  $default,) {final _that = this;
switch (_that) {
case _ReportResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Report data)?  $default,) {final _that = this;
switch (_that) {
case _ReportResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportResponse implements ReportResponse {
  const _ReportResponse({required this.success, required this.data});
  factory _ReportResponse.fromJson(Map<String, dynamic> json) => _$ReportResponseFromJson(json);

@override final  bool success;
@override final  Report data;

/// Create a copy of ReportResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportResponseCopyWith<_ReportResponse> get copyWith => __$ReportResponseCopyWithImpl<_ReportResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ReportResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ReportResponseCopyWith<$Res> implements $ReportResponseCopyWith<$Res> {
  factory _$ReportResponseCopyWith(_ReportResponse value, $Res Function(_ReportResponse) _then) = __$ReportResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Report data
});


@override $ReportCopyWith<$Res> get data;

}
/// @nodoc
class __$ReportResponseCopyWithImpl<$Res>
    implements _$ReportResponseCopyWith<$Res> {
  __$ReportResponseCopyWithImpl(this._self, this._then);

  final _ReportResponse _self;
  final $Res Function(_ReportResponse) _then;

/// Create a copy of ReportResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_ReportResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Report,
  ));
}

/// Create a copy of ReportResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportCopyWith<$Res> get data {
  
  return $ReportCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
