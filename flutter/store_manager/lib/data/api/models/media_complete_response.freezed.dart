// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_complete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaCompleteResponse {

 bool get success; Data8 get data;
/// Create a copy of MediaCompleteResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaCompleteResponseCopyWith<MediaCompleteResponse> get copyWith => _$MediaCompleteResponseCopyWithImpl<MediaCompleteResponse>(this as MediaCompleteResponse, _$identity);

  /// Serializes this MediaCompleteResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaCompleteResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'MediaCompleteResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $MediaCompleteResponseCopyWith<$Res>  {
  factory $MediaCompleteResponseCopyWith(MediaCompleteResponse value, $Res Function(MediaCompleteResponse) _then) = _$MediaCompleteResponseCopyWithImpl;
@useResult
$Res call({
 bool success, Data8 data
});


$Data8CopyWith<$Res> get data;

}
/// @nodoc
class _$MediaCompleteResponseCopyWithImpl<$Res>
    implements $MediaCompleteResponseCopyWith<$Res> {
  _$MediaCompleteResponseCopyWithImpl(this._self, this._then);

  final MediaCompleteResponse _self;
  final $Res Function(MediaCompleteResponse) _then;

/// Create a copy of MediaCompleteResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data8,
  ));
}
/// Create a copy of MediaCompleteResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data8CopyWith<$Res> get data {
  
  return $Data8CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [MediaCompleteResponse].
extension MediaCompleteResponsePatterns on MediaCompleteResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaCompleteResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaCompleteResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaCompleteResponse value)  $default,){
final _that = this;
switch (_that) {
case _MediaCompleteResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaCompleteResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MediaCompleteResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  Data8 data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaCompleteResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  Data8 data)  $default,) {final _that = this;
switch (_that) {
case _MediaCompleteResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  Data8 data)?  $default,) {final _that = this;
switch (_that) {
case _MediaCompleteResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaCompleteResponse implements MediaCompleteResponse {
  const _MediaCompleteResponse({required this.success, required this.data});
  factory _MediaCompleteResponse.fromJson(Map<String, dynamic> json) => _$MediaCompleteResponseFromJson(json);

@override final  bool success;
@override final  Data8 data;

/// Create a copy of MediaCompleteResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaCompleteResponseCopyWith<_MediaCompleteResponse> get copyWith => __$MediaCompleteResponseCopyWithImpl<_MediaCompleteResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaCompleteResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaCompleteResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'MediaCompleteResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$MediaCompleteResponseCopyWith<$Res> implements $MediaCompleteResponseCopyWith<$Res> {
  factory _$MediaCompleteResponseCopyWith(_MediaCompleteResponse value, $Res Function(_MediaCompleteResponse) _then) = __$MediaCompleteResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, Data8 data
});


@override $Data8CopyWith<$Res> get data;

}
/// @nodoc
class __$MediaCompleteResponseCopyWithImpl<$Res>
    implements _$MediaCompleteResponseCopyWith<$Res> {
  __$MediaCompleteResponseCopyWithImpl(this._self, this._then);

  final _MediaCompleteResponse _self;
  final $Res Function(_MediaCompleteResponse) _then;

/// Create a copy of MediaCompleteResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_MediaCompleteResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data8,
  ));
}

/// Create a copy of MediaCompleteResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Data8CopyWith<$Res> get data {
  
  return $Data8CopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
