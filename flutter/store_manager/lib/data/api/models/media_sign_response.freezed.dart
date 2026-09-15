// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_sign_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaSignResponse {

 bool get success; Data7 get data;
/// Create a copy of MediaSignResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaSignResponseCopyWith<MediaSignResponse> get copyWith => _$MediaSignResponseCopyWithImpl<MediaSignResponse>(this as MediaSignResponse, _$identity);

  /// Serializes this MediaSignResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaSignResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'MediaSignResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $MediaSignResponseCopyWith<$Res>  {
  factory $MediaSignResponseCopyWith(MediaSignResponse value, $Res Function(MediaSignResponse) _then) = _$MediaSignResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Data7 data
});


$Data7CopyWith<$Res> get data;

}
/// @nodoc
class _$MediaSignResponseCopyWithImpl<$Res>
    implements $MediaSignResponseCopyWith<$Res> {
  _$MediaSignResponseCopyWithImpl(this._self, this._then);

  final MediaSignResponse _self;
  final $Res Function(MediaSignResponse) _then;

/// Create a copy of MediaSignResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data7,
  ));
}
/// Create a copy of MediaSignResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data7CopyWith<$Res> get data {
  
  return $Data7CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [MediaSignResponse].
extension MediaSignResponsePatterns on MediaSignResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaSignResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaSignResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaSignResponse value)  $default,){
final _that = this;
switch (_that) {
case _MediaSignResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaSignResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MediaSignResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Data7 data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaSignResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Data7 data)  $default,) {final _that = this;
switch (_that) {
case _MediaSignResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Data7 data)?  $default,) {final _that = this;
switch (_that) {
case _MediaSignResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaSignResponse implements MediaSignResponse {
  const _MediaSignResponse({required this.success, required this.data});
  factory _MediaSignResponse.fromJson(Map<String, dynamic> json) => _$MediaSignResponseFromJson(json);

@override final  bool success;
@override final  Data7 data;

/// Create a copy of MediaSignResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaSignResponseCopyWith<_MediaSignResponse> get copyWith => __$MediaSignResponseCopyWithImpl<_MediaSignResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaSignResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaSignResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'MediaSignResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$MediaSignResponseCopyWith<$Res> implements $MediaSignResponseCopyWith<$Res> {
  factory _$MediaSignResponseCopyWith(_MediaSignResponse value, $Res Function(_MediaSignResponse) _then) = __$MediaSignResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Data7 data
});


@override $Data7CopyWith<$Res> get data;

}
/// @nodoc
class __$MediaSignResponseCopyWithImpl<$Res>
    implements _$MediaSignResponseCopyWith<$Res> {
  __$MediaSignResponseCopyWithImpl(this._self, this._then);

  final _MediaSignResponse _self;
  final $Res Function(_MediaSignResponse) _then;

/// Create a copy of MediaSignResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_MediaSignResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data7,
  ));
}

/// Create a copy of MediaSignResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data7CopyWith<$Res> get data {
  
  return $Data7CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
