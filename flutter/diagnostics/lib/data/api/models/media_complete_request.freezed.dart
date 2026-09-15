// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_complete_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaCompleteRequest {

 String get objectKey; String get checksumSha256;
/// Create a copy of MediaCompleteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaCompleteRequestCopyWith<MediaCompleteRequest> get copyWith => _$MediaCompleteRequestCopyWithImpl<MediaCompleteRequest>(this as MediaCompleteRequest, _$identity);

  /// Serializes this MediaCompleteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaCompleteRequest&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.checksumSha256, checksumSha256) || other.checksumSha256 == checksumSha256));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectKey,checksumSha256);

@override
String toString() {
  return 'MediaCompleteRequest(objectKey: $objectKey, checksumSha256: $checksumSha256)';
}


}

/// @nodoc
abstract mixin class $MediaCompleteRequestCopyWith<$Res>  {
  factory $MediaCompleteRequestCopyWith(MediaCompleteRequest value, $Res Function(MediaCompleteRequest) _then) = _$MediaCompleteRequestCopyWithImpl;
@useResult
$Res call({
 String objectKey, String checksumSha256
});




}
/// @nodoc
class _$MediaCompleteRequestCopyWithImpl<$Res>
    implements $MediaCompleteRequestCopyWith<$Res> {
  _$MediaCompleteRequestCopyWithImpl(this._self, this._then);

  final MediaCompleteRequest _self;
  final $Res Function(MediaCompleteRequest) _then;

/// Create a copy of MediaCompleteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectKey = null,Object? checksumSha256 = null,}) {
  return _then(_self.copyWith(
objectKey: null == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String,checksumSha256: null == checksumSha256 ? _self.checksumSha256 : checksumSha256 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaCompleteRequest].
extension MediaCompleteRequestPatterns on MediaCompleteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaCompleteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaCompleteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaCompleteRequest value)  $default,){
final _that = this;
switch (_that) {
case _MediaCompleteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaCompleteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _MediaCompleteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String objectKey,  String checksumSha256)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaCompleteRequest() when $default != null:
return $default(_that.objectKey,_that.checksumSha256);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String objectKey,  String checksumSha256)  $default,) {final _that = this;
switch (_that) {
case _MediaCompleteRequest():
return $default(_that.objectKey,_that.checksumSha256);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String objectKey,  String checksumSha256)?  $default,) {final _that = this;
switch (_that) {
case _MediaCompleteRequest() when $default != null:
return $default(_that.objectKey,_that.checksumSha256);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaCompleteRequest implements MediaCompleteRequest {
  const _MediaCompleteRequest({required this.objectKey, required this.checksumSha256});
  factory _MediaCompleteRequest.fromJson(Map<String, dynamic> json) => _$MediaCompleteRequestFromJson(json);

@override final  String objectKey;
@override final  String checksumSha256;

/// Create a copy of MediaCompleteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaCompleteRequestCopyWith<_MediaCompleteRequest> get copyWith => __$MediaCompleteRequestCopyWithImpl<_MediaCompleteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaCompleteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaCompleteRequest&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.checksumSha256, checksumSha256) || other.checksumSha256 == checksumSha256));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectKey,checksumSha256);

@override
String toString() {
  return 'MediaCompleteRequest(objectKey: $objectKey, checksumSha256: $checksumSha256)';
}


}

/// @nodoc
abstract mixin class _$MediaCompleteRequestCopyWith<$Res> implements $MediaCompleteRequestCopyWith<$Res> {
  factory _$MediaCompleteRequestCopyWith(_MediaCompleteRequest value, $Res Function(_MediaCompleteRequest) _then) = __$MediaCompleteRequestCopyWithImpl;
@override @useResult
$Res call({
 String objectKey, String checksumSha256
});




}
/// @nodoc
class __$MediaCompleteRequestCopyWithImpl<$Res>
    implements _$MediaCompleteRequestCopyWith<$Res> {
  __$MediaCompleteRequestCopyWithImpl(this._self, this._then);

  final _MediaCompleteRequest _self;
  final $Res Function(_MediaCompleteRequest) _then;

/// Create a copy of MediaCompleteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectKey = null,Object? checksumSha256 = null,}) {
  return _then(_MediaCompleteRequest(
objectKey: null == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String,checksumSha256: null == checksumSha256 ? _self.checksumSha256 : checksumSha256 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
