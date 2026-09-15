// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_download_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaDownloadRequest {

 String get objectKey;
/// Create a copy of MediaDownloadRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaDownloadRequestCopyWith<MediaDownloadRequest> get copyWith => _$MediaDownloadRequestCopyWithImpl<MediaDownloadRequest>(this as MediaDownloadRequest, _$identity);

  /// Serializes this MediaDownloadRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaDownloadRequest&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectKey);

@override
String toString() {
  return 'MediaDownloadRequest(objectKey: $objectKey)';
}


}

/// @nodoc
abstract mixin class $MediaDownloadRequestCopyWith<$Res>  {
  factory $MediaDownloadRequestCopyWith(MediaDownloadRequest value, $Res Function(MediaDownloadRequest) _then) = _$MediaDownloadRequestCopyWithImpl;
@useResult
$Res call({
 String objectKey
});




}
/// @nodoc
class _$MediaDownloadRequestCopyWithImpl<$Res>
    implements $MediaDownloadRequestCopyWith<$Res> {
  _$MediaDownloadRequestCopyWithImpl(this._self, this._then);

  final MediaDownloadRequest _self;
  final $Res Function(MediaDownloadRequest) _then;

/// Create a copy of MediaDownloadRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectKey = null,}) {
  return _then(_self.copyWith(
objectKey: null == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaDownloadRequest].
extension MediaDownloadRequestPatterns on MediaDownloadRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaDownloadRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaDownloadRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaDownloadRequest value)  $default,){
final _that = this;
switch (_that) {
case _MediaDownloadRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaDownloadRequest value)?  $default,){
final _that = this;
switch (_that) {
case _MediaDownloadRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String objectKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaDownloadRequest() when $default != null:
return $default(_that.objectKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String objectKey)  $default,) {final _that = this;
switch (_that) {
case _MediaDownloadRequest():
return $default(_that.objectKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String objectKey)?  $default,) {final _that = this;
switch (_that) {
case _MediaDownloadRequest() when $default != null:
return $default(_that.objectKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaDownloadRequest implements MediaDownloadRequest {
  const _MediaDownloadRequest({required this.objectKey});
  factory _MediaDownloadRequest.fromJson(Map<String, dynamic> json) => _$MediaDownloadRequestFromJson(json);

@override final  String objectKey;

/// Create a copy of MediaDownloadRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaDownloadRequestCopyWith<_MediaDownloadRequest> get copyWith => __$MediaDownloadRequestCopyWithImpl<_MediaDownloadRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaDownloadRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaDownloadRequest&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectKey);

@override
String toString() {
  return 'MediaDownloadRequest(objectKey: $objectKey)';
}


}

/// @nodoc
abstract mixin class _$MediaDownloadRequestCopyWith<$Res> implements $MediaDownloadRequestCopyWith<$Res> {
  factory _$MediaDownloadRequestCopyWith(_MediaDownloadRequest value, $Res Function(_MediaDownloadRequest) _then) = __$MediaDownloadRequestCopyWithImpl;
@override @useResult
$Res call({
 String objectKey
});




}
/// @nodoc
class __$MediaDownloadRequestCopyWithImpl<$Res>
    implements _$MediaDownloadRequestCopyWith<$Res> {
  __$MediaDownloadRequestCopyWithImpl(this._self, this._then);

  final _MediaDownloadRequest _self;
  final $Res Function(_MediaDownloadRequest) _then;

/// Create a copy of MediaDownloadRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectKey = null,}) {
  return _then(_MediaDownloadRequest(
objectKey: null == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
