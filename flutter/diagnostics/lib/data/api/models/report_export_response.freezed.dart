// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_export_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportExportResponse {

 bool get success; ReportExport get data;
/// Create a copy of ReportExportResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportExportResponseCopyWith<ReportExportResponse> get copyWith => _$ReportExportResponseCopyWithImpl<ReportExportResponse>(this as ReportExportResponse, _$identity);

  /// Serializes this ReportExportResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportExportResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ReportExportResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ReportExportResponseCopyWith<$Res>  {
  factory $ReportExportResponseCopyWith(ReportExportResponse value, $Res Function(ReportExportResponse) _then) = _$ReportExportResponseCopyWithImpl;
@useResult
$Res call({
 bool success, ReportExport data
});


$ReportExportCopyWith<$Res> get data;

}
/// @nodoc
class _$ReportExportResponseCopyWithImpl<$Res>
    implements $ReportExportResponseCopyWith<$Res> {
  _$ReportExportResponseCopyWithImpl(this._self, this._then);

  final ReportExportResponse _self;
  final $Res Function(ReportExportResponse) _then;

/// Create a copy of ReportExportResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ReportExport,
  ));
}
/// Create a copy of ReportExportResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportExportCopyWith<$Res> get data {
  
  return $ReportExportCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReportExportResponse].
extension ReportExportResponsePatterns on ReportExportResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportExportResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportExportResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportExportResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReportExportResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportExportResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReportExportResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ReportExport data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportExportResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ReportExport data)  $default,) {final _that = this;
switch (_that) {
case _ReportExportResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ReportExport data)?  $default,) {final _that = this;
switch (_that) {
case _ReportExportResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportExportResponse implements ReportExportResponse {
  const _ReportExportResponse({required this.success, required this.data});
  factory _ReportExportResponse.fromJson(Map<String, dynamic> json) => _$ReportExportResponseFromJson(json);

@override final  bool success;
@override final  ReportExport data;

/// Create a copy of ReportExportResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportExportResponseCopyWith<_ReportExportResponse> get copyWith => __$ReportExportResponseCopyWithImpl<_ReportExportResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportExportResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportExportResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ReportExportResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ReportExportResponseCopyWith<$Res> implements $ReportExportResponseCopyWith<$Res> {
  factory _$ReportExportResponseCopyWith(_ReportExportResponse value, $Res Function(_ReportExportResponse) _then) = __$ReportExportResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, ReportExport data
});


@override $ReportExportCopyWith<$Res> get data;

}
/// @nodoc
class __$ReportExportResponseCopyWithImpl<$Res>
    implements _$ReportExportResponseCopyWith<$Res> {
  __$ReportExportResponseCopyWithImpl(this._self, this._then);

  final _ReportExportResponse _self;
  final $Res Function(_ReportExportResponse) _then;

/// Create a copy of ReportExportResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_ReportExportResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ReportExport,
  ));
}

/// Create a copy of ReportExportResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportExportCopyWith<$Res> get data {
  
  return $ReportExportCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
