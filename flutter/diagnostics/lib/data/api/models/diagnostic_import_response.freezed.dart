// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnostic_import_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiagnosticImportResponse {

 bool get success; Data10 get data;
/// Create a copy of DiagnosticImportResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosticImportResponseCopyWith<DiagnosticImportResponse> get copyWith => _$DiagnosticImportResponseCopyWithImpl<DiagnosticImportResponse>(this as DiagnosticImportResponse, _$identity);

  /// Serializes this DiagnosticImportResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiagnosticImportResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'DiagnosticImportResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $DiagnosticImportResponseCopyWith<$Res>  {
  factory $DiagnosticImportResponseCopyWith(DiagnosticImportResponse value, $Res Function(DiagnosticImportResponse) _then) = _$DiagnosticImportResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Data10 data
});


$Data10CopyWith<$Res> get data;

}
/// @nodoc
class _$DiagnosticImportResponseCopyWithImpl<$Res>
    implements $DiagnosticImportResponseCopyWith<$Res> {
  _$DiagnosticImportResponseCopyWithImpl(this._self, this._then);

  final DiagnosticImportResponse _self;
  final $Res Function(DiagnosticImportResponse) _then;

/// Create a copy of DiagnosticImportResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data10,
  ));
}
/// Create a copy of DiagnosticImportResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data10CopyWith<$Res> get data {
  
  return $Data10CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [DiagnosticImportResponse].
extension DiagnosticImportResponsePatterns on DiagnosticImportResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiagnosticImportResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiagnosticImportResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiagnosticImportResponse value)  $default,){
final _that = this;
switch (_that) {
case _DiagnosticImportResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiagnosticImportResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DiagnosticImportResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Data10 data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiagnosticImportResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Data10 data)  $default,) {final _that = this;
switch (_that) {
case _DiagnosticImportResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Data10 data)?  $default,) {final _that = this;
switch (_that) {
case _DiagnosticImportResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiagnosticImportResponse implements DiagnosticImportResponse {
  const _DiagnosticImportResponse({required this.success, required this.data});
  factory _DiagnosticImportResponse.fromJson(Map<String, dynamic> json) => _$DiagnosticImportResponseFromJson(json);

@override final  bool success;
@override final  Data10 data;

/// Create a copy of DiagnosticImportResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosticImportResponseCopyWith<_DiagnosticImportResponse> get copyWith => __$DiagnosticImportResponseCopyWithImpl<_DiagnosticImportResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiagnosticImportResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiagnosticImportResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'DiagnosticImportResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DiagnosticImportResponseCopyWith<$Res> implements $DiagnosticImportResponseCopyWith<$Res> {
  factory _$DiagnosticImportResponseCopyWith(_DiagnosticImportResponse value, $Res Function(_DiagnosticImportResponse) _then) = __$DiagnosticImportResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Data10 data
});


@override $Data10CopyWith<$Res> get data;

}
/// @nodoc
class __$DiagnosticImportResponseCopyWithImpl<$Res>
    implements _$DiagnosticImportResponseCopyWith<$Res> {
  __$DiagnosticImportResponseCopyWithImpl(this._self, this._then);

  final _DiagnosticImportResponse _self;
  final $Res Function(_DiagnosticImportResponse) _then;

/// Create a copy of DiagnosticImportResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_DiagnosticImportResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data10,
  ));
}

/// Create a copy of DiagnosticImportResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data10CopyWith<$Res> get data {
  
  return $Data10CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
