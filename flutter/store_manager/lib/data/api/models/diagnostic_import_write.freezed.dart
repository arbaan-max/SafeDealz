// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnostic_import_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiagnosticImportWrite {

 String get deviceId; dynamic get payload; String get signature;
/// Create a copy of DiagnosticImportWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosticImportWriteCopyWith<DiagnosticImportWrite> get copyWith => _$DiagnosticImportWriteCopyWithImpl<DiagnosticImportWrite>(this as DiagnosticImportWrite, _$identity);

  /// Serializes this DiagnosticImportWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiagnosticImportWrite&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&const DeepCollectionEquality().equals(other.payload, payload)&&(identical(other.signature, signature) || other.signature == signature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,const DeepCollectionEquality().hash(payload),signature);

@override
String toString() {
  return 'DiagnosticImportWrite(deviceId: $deviceId, payload: $payload, signature: $signature)';
}


}

/// @nodoc
abstract mixin class $DiagnosticImportWriteCopyWith<$Res>  {
  factory $DiagnosticImportWriteCopyWith(DiagnosticImportWrite value, $Res Function(DiagnosticImportWrite) _then) = _$DiagnosticImportWriteCopyWithImpl;
@useResult
$Res call({
 String deviceId, dynamic payload, String signature
});




}
/// @nodoc
class _$DiagnosticImportWriteCopyWithImpl<$Res>
    implements $DiagnosticImportWriteCopyWith<$Res> {
  _$DiagnosticImportWriteCopyWithImpl(this._self, this._then);

  final DiagnosticImportWrite _self;
  final $Res Function(DiagnosticImportWrite) _then;

/// Create a copy of DiagnosticImportWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = null,Object? payload = freezed,Object? signature = null,}) {
  return _then(_self.copyWith(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as dynamic,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DiagnosticImportWrite].
extension DiagnosticImportWritePatterns on DiagnosticImportWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiagnosticImportWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiagnosticImportWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiagnosticImportWrite value)  $default,){
final _that = this;
switch (_that) {
case _DiagnosticImportWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiagnosticImportWrite value)?  $default,){
final _that = this;
switch (_that) {
case _DiagnosticImportWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String deviceId,  dynamic payload,  String signature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiagnosticImportWrite() when $default != null:
return $default(_that.deviceId,_that.payload,_that.signature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String deviceId,  dynamic payload,  String signature)  $default,) {final _that = this;
switch (_that) {
case _DiagnosticImportWrite():
return $default(_that.deviceId,_that.payload,_that.signature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String deviceId,  dynamic payload,  String signature)?  $default,) {final _that = this;
switch (_that) {
case _DiagnosticImportWrite() when $default != null:
return $default(_that.deviceId,_that.payload,_that.signature);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiagnosticImportWrite implements DiagnosticImportWrite {
  const _DiagnosticImportWrite({required this.deviceId, required this.payload, required this.signature});
  factory _DiagnosticImportWrite.fromJson(Map<String, dynamic> json) => _$DiagnosticImportWriteFromJson(json);

@override final  String deviceId;
@override final  dynamic payload;
@override final  String signature;

/// Create a copy of DiagnosticImportWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosticImportWriteCopyWith<_DiagnosticImportWrite> get copyWith => __$DiagnosticImportWriteCopyWithImpl<_DiagnosticImportWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiagnosticImportWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiagnosticImportWrite&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&const DeepCollectionEquality().equals(other.payload, payload)&&(identical(other.signature, signature) || other.signature == signature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,const DeepCollectionEquality().hash(payload),signature);

@override
String toString() {
  return 'DiagnosticImportWrite(deviceId: $deviceId, payload: $payload, signature: $signature)';
}


}

/// @nodoc
abstract mixin class _$DiagnosticImportWriteCopyWith<$Res> implements $DiagnosticImportWriteCopyWith<$Res> {
  factory _$DiagnosticImportWriteCopyWith(_DiagnosticImportWrite value, $Res Function(_DiagnosticImportWrite) _then) = __$DiagnosticImportWriteCopyWithImpl;
@override @useResult
$Res call({
 String deviceId, dynamic payload, String signature
});




}
/// @nodoc
class __$DiagnosticImportWriteCopyWithImpl<$Res>
    implements _$DiagnosticImportWriteCopyWith<$Res> {
  __$DiagnosticImportWriteCopyWithImpl(this._self, this._then);

  final _DiagnosticImportWrite _self;
  final $Res Function(_DiagnosticImportWrite) _then;

/// Create a copy of DiagnosticImportWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = null,Object? payload = freezed,Object? signature = null,}) {
  return _then(_DiagnosticImportWrite(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as dynamic,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
