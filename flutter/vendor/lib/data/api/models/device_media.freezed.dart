// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceMedia {

 String? get id; String? get purpose; String? get objectKey; String? get contentType; int? get sizeBytes;
/// Create a copy of DeviceMedia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceMediaCopyWith<DeviceMedia> get copyWith => _$DeviceMediaCopyWithImpl<DeviceMedia>(this as DeviceMedia, _$identity);

  /// Serializes this DeviceMedia to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceMedia&&(identical(other.id, id) || other.id == id)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,purpose,objectKey,contentType,sizeBytes);

@override
String toString() {
  return 'DeviceMedia(id: $id, purpose: $purpose, objectKey: $objectKey, contentType: $contentType, sizeBytes: $sizeBytes)';
}


}

/// @nodoc
abstract mixin class $DeviceMediaCopyWith<$Res>  {
  factory $DeviceMediaCopyWith(DeviceMedia value, $Res Function(DeviceMedia) _then) = _$DeviceMediaCopyWithImpl;
@useResult
$Res call({
 String? id, String? purpose, String? objectKey, String? contentType, int? sizeBytes
});




}
/// @nodoc
class _$DeviceMediaCopyWithImpl<$Res>
    implements $DeviceMediaCopyWith<$Res> {
  _$DeviceMediaCopyWithImpl(this._self, this._then);

  final DeviceMedia _self;
  final $Res Function(DeviceMedia) _then;

/// Create a copy of DeviceMedia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? purpose = freezed,Object? objectKey = freezed,Object? contentType = freezed,Object? sizeBytes = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,objectKey: freezed == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,sizeBytes: freezed == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceMedia].
extension DeviceMediaPatterns on DeviceMedia {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceMedia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceMedia() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceMedia value)  $default,){
final _that = this;
switch (_that) {
case _DeviceMedia():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceMedia value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceMedia() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? purpose,  String? objectKey,  String? contentType,  int? sizeBytes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceMedia() when $default != null:
return $default(_that.id,_that.purpose,_that.objectKey,_that.contentType,_that.sizeBytes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? purpose,  String? objectKey,  String? contentType,  int? sizeBytes)  $default,) {final _that = this;
switch (_that) {
case _DeviceMedia():
return $default(_that.id,_that.purpose,_that.objectKey,_that.contentType,_that.sizeBytes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? purpose,  String? objectKey,  String? contentType,  int? sizeBytes)?  $default,) {final _that = this;
switch (_that) {
case _DeviceMedia() when $default != null:
return $default(_that.id,_that.purpose,_that.objectKey,_that.contentType,_that.sizeBytes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceMedia implements DeviceMedia {
  const _DeviceMedia({this.id, this.purpose, this.objectKey, this.contentType, this.sizeBytes});
  factory _DeviceMedia.fromJson(Map<String, dynamic> json) => _$DeviceMediaFromJson(json);

@override final  String? id;
@override final  String? purpose;
@override final  String? objectKey;
@override final  String? contentType;
@override final  int? sizeBytes;

/// Create a copy of DeviceMedia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceMediaCopyWith<_DeviceMedia> get copyWith => __$DeviceMediaCopyWithImpl<_DeviceMedia>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceMediaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceMedia&&(identical(other.id, id) || other.id == id)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,purpose,objectKey,contentType,sizeBytes);

@override
String toString() {
  return 'DeviceMedia(id: $id, purpose: $purpose, objectKey: $objectKey, contentType: $contentType, sizeBytes: $sizeBytes)';
}


}

/// @nodoc
abstract mixin class _$DeviceMediaCopyWith<$Res> implements $DeviceMediaCopyWith<$Res> {
  factory _$DeviceMediaCopyWith(_DeviceMedia value, $Res Function(_DeviceMedia) _then) = __$DeviceMediaCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? purpose, String? objectKey, String? contentType, int? sizeBytes
});




}
/// @nodoc
class __$DeviceMediaCopyWithImpl<$Res>
    implements _$DeviceMediaCopyWith<$Res> {
  __$DeviceMediaCopyWithImpl(this._self, this._then);

  final _DeviceMedia _self;
  final $Res Function(_DeviceMedia) _then;

/// Create a copy of DeviceMedia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? purpose = freezed,Object? objectKey = freezed,Object? contentType = freezed,Object? sizeBytes = freezed,}) {
  return _then(_DeviceMedia(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,objectKey: freezed == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,sizeBytes: freezed == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
