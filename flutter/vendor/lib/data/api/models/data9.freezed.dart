// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data9.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Data9 {

 String? get objectKey; SignedUrl? get download;
/// Create a copy of Data9
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Data9CopyWith<Data9> get copyWith => _$Data9CopyWithImpl<Data9>(this as Data9, _$identity);

  /// Serializes this Data9 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data9&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.download, download) || other.download == download));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectKey,download);

@override
String toString() {
  return 'Data9(objectKey: $objectKey, download: $download)';
}


}

/// @nodoc
abstract mixin class $Data9CopyWith<$Res>  {
  factory $Data9CopyWith(Data9 value, $Res Function(Data9) _then) = _$Data9CopyWithImpl;
@useResult
$Res call({
 String? objectKey, SignedUrl? download
});


$SignedUrlCopyWith<$Res>? get download;

}
/// @nodoc
class _$Data9CopyWithImpl<$Res>
    implements $Data9CopyWith<$Res> {
  _$Data9CopyWithImpl(this._self, this._then);

  final Data9 _self;
  final $Res Function(Data9) _then;

/// Create a copy of Data9
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectKey = freezed,Object? download = freezed,}) {
  return _then(_self.copyWith(
objectKey: freezed == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String?,download: freezed == download ? _self.download : download // ignore: cast_nullable_to_non_nullable
as SignedUrl?,
  ));
}
/// Create a copy of Data9
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignedUrlCopyWith<$Res>? get download {
    if (_self.download == null) {
    return null;
  }

  return $SignedUrlCopyWith<$Res>(_self.download!, (value) {
    return _then(_self.copyWith(download: value));
  });
}
}


/// Adds pattern-matching-related methods to [Data9].
extension Data9Patterns on Data9 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data9 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data9() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data9 value)  $default,){
final _that = this;
switch (_that) {
case _Data9():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data9 value)?  $default,){
final _that = this;
switch (_that) {
case _Data9() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? objectKey,  SignedUrl? download)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data9() when $default != null:
return $default(_that.objectKey,_that.download);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? objectKey,  SignedUrl? download)  $default,) {final _that = this;
switch (_that) {
case _Data9():
return $default(_that.objectKey,_that.download);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? objectKey,  SignedUrl? download)?  $default,) {final _that = this;
switch (_that) {
case _Data9() when $default != null:
return $default(_that.objectKey,_that.download);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data9 implements Data9 {
  const _Data9({this.objectKey, this.download});
  factory _Data9.fromJson(Map<String, dynamic> json) => _$Data9FromJson(json);

@override final  String? objectKey;
@override final  SignedUrl? download;

/// Create a copy of Data9
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Data9CopyWith<_Data9> get copyWith => __$Data9CopyWithImpl<_Data9>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Data9ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data9&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.download, download) || other.download == download));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectKey,download);

@override
String toString() {
  return 'Data9(objectKey: $objectKey, download: $download)';
}


}

/// @nodoc
abstract mixin class _$Data9CopyWith<$Res> implements $Data9CopyWith<$Res> {
  factory _$Data9CopyWith(_Data9 value, $Res Function(_Data9) _then) = __$Data9CopyWithImpl;
@override @useResult
$Res call({
 String? objectKey, SignedUrl? download
});


@override $SignedUrlCopyWith<$Res>? get download;

}
/// @nodoc
class __$Data9CopyWithImpl<$Res>
    implements _$Data9CopyWith<$Res> {
  __$Data9CopyWithImpl(this._self, this._then);

  final _Data9 _self;
  final $Res Function(_Data9) _then;

/// Create a copy of Data9
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectKey = freezed,Object? download = freezed,}) {
  return _then(_Data9(
objectKey: freezed == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String?,download: freezed == download ? _self.download : download // ignore: cast_nullable_to_non_nullable
as SignedUrl?,
  ));
}

/// Create a copy of Data9
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignedUrlCopyWith<$Res>? get download {
    if (_self.download == null) {
    return null;
  }

  return $SignedUrlCopyWith<$Res>(_self.download!, (value) {
    return _then(_self.copyWith(download: value));
  });
}
}

// dart format on
