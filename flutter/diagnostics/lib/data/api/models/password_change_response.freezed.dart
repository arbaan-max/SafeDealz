// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_change_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PasswordChangeResponse {

 bool get success; PasswordChange get data;
/// Create a copy of PasswordChangeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordChangeResponseCopyWith<PasswordChangeResponse> get copyWith => _$PasswordChangeResponseCopyWithImpl<PasswordChangeResponse>(this as PasswordChangeResponse, _$identity);

  /// Serializes this PasswordChangeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordChangeResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'PasswordChangeResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $PasswordChangeResponseCopyWith<$Res>  {
  factory $PasswordChangeResponseCopyWith(PasswordChangeResponse value, $Res Function(PasswordChangeResponse) _then) = _$PasswordChangeResponseCopyWithImpl;
@useResult
$Res call({
 bool success, PasswordChange data
});


$PasswordChangeCopyWith<$Res> get data;

}
/// @nodoc
class _$PasswordChangeResponseCopyWithImpl<$Res>
    implements $PasswordChangeResponseCopyWith<$Res> {
  _$PasswordChangeResponseCopyWithImpl(this._self, this._then);

  final PasswordChangeResponse _self;
  final $Res Function(PasswordChangeResponse) _then;

/// Create a copy of PasswordChangeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PasswordChange,
  ));
}
/// Create a copy of PasswordChangeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordChangeCopyWith<$Res> get data {
  
  return $PasswordChangeCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PasswordChangeResponse].
extension PasswordChangeResponsePatterns on PasswordChangeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PasswordChangeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PasswordChangeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PasswordChangeResponse value)  $default,){
final _that = this;
switch (_that) {
case _PasswordChangeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PasswordChangeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PasswordChangeResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  PasswordChange data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PasswordChangeResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  PasswordChange data)  $default,) {final _that = this;
switch (_that) {
case _PasswordChangeResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  PasswordChange data)?  $default,) {final _that = this;
switch (_that) {
case _PasswordChangeResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PasswordChangeResponse implements PasswordChangeResponse {
  const _PasswordChangeResponse({required this.success, required this.data});
  factory _PasswordChangeResponse.fromJson(Map<String, dynamic> json) => _$PasswordChangeResponseFromJson(json);

@override final  bool success;
@override final  PasswordChange data;

/// Create a copy of PasswordChangeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordChangeResponseCopyWith<_PasswordChangeResponse> get copyWith => __$PasswordChangeResponseCopyWithImpl<_PasswordChangeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PasswordChangeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordChangeResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'PasswordChangeResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PasswordChangeResponseCopyWith<$Res> implements $PasswordChangeResponseCopyWith<$Res> {
  factory _$PasswordChangeResponseCopyWith(_PasswordChangeResponse value, $Res Function(_PasswordChangeResponse) _then) = __$PasswordChangeResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, PasswordChange data
});


@override $PasswordChangeCopyWith<$Res> get data;

}
/// @nodoc
class __$PasswordChangeResponseCopyWithImpl<$Res>
    implements _$PasswordChangeResponseCopyWith<$Res> {
  __$PasswordChangeResponseCopyWithImpl(this._self, this._then);

  final _PasswordChangeResponse _self;
  final $Res Function(_PasswordChangeResponse) _then;

/// Create a copy of PasswordChangeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_PasswordChangeResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PasswordChange,
  ));
}

/// Create a copy of PasswordChangeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordChangeCopyWith<$Res> get data {
  
  return $PasswordChangeCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
