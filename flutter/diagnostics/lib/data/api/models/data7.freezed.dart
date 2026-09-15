// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data7.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Data7 {

 String? get mediaId; String? get objectKey; SignedUrl? get upload;
/// Create a copy of Data7
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Data7CopyWith<Data7> get copyWith => _$Data7CopyWithImpl<Data7>(this as Data7, _$identity);

  /// Serializes this Data7 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data7&&(identical(other.mediaId, mediaId) || other.mediaId == mediaId)&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.upload, upload) || other.upload == upload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mediaId,objectKey,upload);

@override
String toString() {
  return 'Data7(mediaId: $mediaId, objectKey: $objectKey, upload: $upload)';
}


}

/// @nodoc
abstract mixin class $Data7CopyWith<$Res>  {
  factory $Data7CopyWith(Data7 value, $Res Function(Data7) _then) = _$Data7CopyWithImpl;
@useResult
$Res call({
 String? mediaId, String? objectKey, SignedUrl? upload
});


$SignedUrlCopyWith<$Res>? get upload;

}
/// @nodoc
class _$Data7CopyWithImpl<$Res>
    implements $Data7CopyWith<$Res> {
  _$Data7CopyWithImpl(this._self, this._then);

  final Data7 _self;
  final $Res Function(Data7) _then;

/// Create a copy of Data7
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mediaId = freezed,Object? objectKey = freezed,Object? upload = freezed,}) {
  return _then(_self.copyWith(
mediaId: freezed == mediaId ? _self.mediaId : mediaId // ignore: cast_nullable_to_non_nullable
as String?,objectKey: freezed == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String?,upload: freezed == upload ? _self.upload : upload // ignore: cast_nullable_to_non_nullable
as SignedUrl?,
  ));
}
/// Create a copy of Data7
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignedUrlCopyWith<$Res>? get upload {
    if (_self.upload == null) {
    return null;
  }

  return $SignedUrlCopyWith<$Res>(_self.upload!, (value) {
    return _then(_self.copyWith(upload: value));
  });
}
}


/// Adds pattern-matching-related methods to [Data7].
extension Data7Patterns on Data7 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data7 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data7() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data7 value)  $default,){
final _that = this;
switch (_that) {
case _Data7():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data7 value)?  $default,){
final _that = this;
switch (_that) {
case _Data7() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? mediaId,  String? objectKey,  SignedUrl? upload)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data7() when $default != null:
return $default(_that.mediaId,_that.objectKey,_that.upload);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? mediaId,  String? objectKey,  SignedUrl? upload)  $default,) {final _that = this;
switch (_that) {
case _Data7():
return $default(_that.mediaId,_that.objectKey,_that.upload);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? mediaId,  String? objectKey,  SignedUrl? upload)?  $default,) {final _that = this;
switch (_that) {
case _Data7() when $default != null:
return $default(_that.mediaId,_that.objectKey,_that.upload);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data7 implements Data7 {
  const _Data7({this.mediaId, this.objectKey, this.upload});
  factory _Data7.fromJson(Map<String, dynamic> json) => _$Data7FromJson(json);

@override final  String? mediaId;
@override final  String? objectKey;
@override final  SignedUrl? upload;

/// Create a copy of Data7
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Data7CopyWith<_Data7> get copyWith => __$Data7CopyWithImpl<_Data7>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Data7ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data7&&(identical(other.mediaId, mediaId) || other.mediaId == mediaId)&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.upload, upload) || other.upload == upload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mediaId,objectKey,upload);

@override
String toString() {
  return 'Data7(mediaId: $mediaId, objectKey: $objectKey, upload: $upload)';
}


}

/// @nodoc
abstract mixin class _$Data7CopyWith<$Res> implements $Data7CopyWith<$Res> {
  factory _$Data7CopyWith(_Data7 value, $Res Function(_Data7) _then) = __$Data7CopyWithImpl;
@override @useResult
$Res call({
 String? mediaId, String? objectKey, SignedUrl? upload
});


@override $SignedUrlCopyWith<$Res>? get upload;

}
/// @nodoc
class __$Data7CopyWithImpl<$Res>
    implements _$Data7CopyWith<$Res> {
  __$Data7CopyWithImpl(this._self, this._then);

  final _Data7 _self;
  final $Res Function(_Data7) _then;

/// Create a copy of Data7
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mediaId = freezed,Object? objectKey = freezed,Object? upload = freezed,}) {
  return _then(_Data7(
mediaId: freezed == mediaId ? _self.mediaId : mediaId // ignore: cast_nullable_to_non_nullable
as String?,objectKey: freezed == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String?,upload: freezed == upload ? _self.upload : upload // ignore: cast_nullable_to_non_nullable
as SignedUrl?,
  ));
}

/// Create a copy of Data7
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignedUrlCopyWith<$Res>? get upload {
    if (_self.upload == null) {
    return null;
  }

  return $SignedUrlCopyWith<$Res>(_self.upload!, (value) {
    return _then(_self.copyWith(upload: value));
  });
}
}

// dart format on
