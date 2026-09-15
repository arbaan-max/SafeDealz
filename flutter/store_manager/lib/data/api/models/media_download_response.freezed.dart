// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_download_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaDownloadResponse {

 bool get success; Data9 get data;
/// Create a copy of MediaDownloadResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaDownloadResponseCopyWith<MediaDownloadResponse> get copyWith => _$MediaDownloadResponseCopyWithImpl<MediaDownloadResponse>(this as MediaDownloadResponse, _$identity);

  /// Serializes this MediaDownloadResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaDownloadResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'MediaDownloadResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $MediaDownloadResponseCopyWith<$Res>  {
  factory $MediaDownloadResponseCopyWith(MediaDownloadResponse value, $Res Function(MediaDownloadResponse) _then) = _$MediaDownloadResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Data9 data
});


$Data9CopyWith<$Res> get data;

}
/// @nodoc
class _$MediaDownloadResponseCopyWithImpl<$Res>
    implements $MediaDownloadResponseCopyWith<$Res> {
  _$MediaDownloadResponseCopyWithImpl(this._self, this._then);

  final MediaDownloadResponse _self;
  final $Res Function(MediaDownloadResponse) _then;

/// Create a copy of MediaDownloadResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data9,
  ));
}
/// Create a copy of MediaDownloadResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data9CopyWith<$Res> get data {
  
  return $Data9CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [MediaDownloadResponse].
extension MediaDownloadResponsePatterns on MediaDownloadResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaDownloadResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaDownloadResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaDownloadResponse value)  $default,){
final _that = this;
switch (_that) {
case _MediaDownloadResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaDownloadResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MediaDownloadResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Data9 data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaDownloadResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Data9 data)  $default,) {final _that = this;
switch (_that) {
case _MediaDownloadResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Data9 data)?  $default,) {final _that = this;
switch (_that) {
case _MediaDownloadResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaDownloadResponse implements MediaDownloadResponse {
  const _MediaDownloadResponse({required this.success, required this.data});
  factory _MediaDownloadResponse.fromJson(Map<String, dynamic> json) => _$MediaDownloadResponseFromJson(json);

@override final  bool success;
@override final  Data9 data;

/// Create a copy of MediaDownloadResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaDownloadResponseCopyWith<_MediaDownloadResponse> get copyWith => __$MediaDownloadResponseCopyWithImpl<_MediaDownloadResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaDownloadResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaDownloadResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'MediaDownloadResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$MediaDownloadResponseCopyWith<$Res> implements $MediaDownloadResponseCopyWith<$Res> {
  factory _$MediaDownloadResponseCopyWith(_MediaDownloadResponse value, $Res Function(_MediaDownloadResponse) _then) = __$MediaDownloadResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Data9 data
});


@override $Data9CopyWith<$Res> get data;

}
/// @nodoc
class __$MediaDownloadResponseCopyWithImpl<$Res>
    implements _$MediaDownloadResponseCopyWith<$Res> {
  __$MediaDownloadResponseCopyWithImpl(this._self, this._then);

  final _MediaDownloadResponse _self;
  final $Res Function(_MediaDownloadResponse) _then;

/// Create a copy of MediaDownloadResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_MediaDownloadResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data9,
  ));
}

/// Create a copy of MediaDownloadResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data9CopyWith<$Res> get data {
  
  return $Data9CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
