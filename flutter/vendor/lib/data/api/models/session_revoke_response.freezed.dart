// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_revoke_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionRevokeResponse {

 bool get success; SessionRevoke get data;
/// Create a copy of SessionRevokeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionRevokeResponseCopyWith<SessionRevokeResponse> get copyWith => _$SessionRevokeResponseCopyWithImpl<SessionRevokeResponse>(this as SessionRevokeResponse, _$identity);

  /// Serializes this SessionRevokeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionRevokeResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'SessionRevokeResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $SessionRevokeResponseCopyWith<$Res>  {
  factory $SessionRevokeResponseCopyWith(SessionRevokeResponse value, $Res Function(SessionRevokeResponse) _then) = _$SessionRevokeResponseCopyWithImpl;
@useResult
$Res call({
 bool success, SessionRevoke data
});


$SessionRevokeCopyWith<$Res> get data;

}
/// @nodoc
class _$SessionRevokeResponseCopyWithImpl<$Res>
    implements $SessionRevokeResponseCopyWith<$Res> {
  _$SessionRevokeResponseCopyWithImpl(this._self, this._then);

  final SessionRevokeResponse _self;
  final $Res Function(SessionRevokeResponse) _then;

/// Create a copy of SessionRevokeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SessionRevoke,
  ));
}
/// Create a copy of SessionRevokeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRevokeCopyWith<$Res> get data {
  
  return $SessionRevokeCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SessionRevokeResponse].
extension SessionRevokeResponsePatterns on SessionRevokeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionRevokeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionRevokeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionRevokeResponse value)  $default,){
final _that = this;
switch (_that) {
case _SessionRevokeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionRevokeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SessionRevokeResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  SessionRevoke data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionRevokeResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  SessionRevoke data)  $default,) {final _that = this;
switch (_that) {
case _SessionRevokeResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  SessionRevoke data)?  $default,) {final _that = this;
switch (_that) {
case _SessionRevokeResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionRevokeResponse implements SessionRevokeResponse {
  const _SessionRevokeResponse({required this.success, required this.data});
  factory _SessionRevokeResponse.fromJson(Map<String, dynamic> json) => _$SessionRevokeResponseFromJson(json);

@override final  bool success;
@override final  SessionRevoke data;

/// Create a copy of SessionRevokeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionRevokeResponseCopyWith<_SessionRevokeResponse> get copyWith => __$SessionRevokeResponseCopyWithImpl<_SessionRevokeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionRevokeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionRevokeResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'SessionRevokeResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SessionRevokeResponseCopyWith<$Res> implements $SessionRevokeResponseCopyWith<$Res> {
  factory _$SessionRevokeResponseCopyWith(_SessionRevokeResponse value, $Res Function(_SessionRevokeResponse) _then) = __$SessionRevokeResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, SessionRevoke data
});


@override $SessionRevokeCopyWith<$Res> get data;

}
/// @nodoc
class __$SessionRevokeResponseCopyWithImpl<$Res>
    implements _$SessionRevokeResponseCopyWith<$Res> {
  __$SessionRevokeResponseCopyWithImpl(this._self, this._then);

  final _SessionRevokeResponse _self;
  final $Res Function(_SessionRevokeResponse) _then;

/// Create a copy of SessionRevokeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_SessionRevokeResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SessionRevoke,
  ));
}

/// Create a copy of SessionRevokeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRevokeCopyWith<$Res> get data {
  
  return $SessionRevokeCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
