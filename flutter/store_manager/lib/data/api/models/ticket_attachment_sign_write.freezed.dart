// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_attachment_sign_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketAttachmentSignWrite {

 String get contentType; int get sizeBytes; String get checksumSha256;
/// Create a copy of TicketAttachmentSignWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketAttachmentSignWriteCopyWith<TicketAttachmentSignWrite> get copyWith => _$TicketAttachmentSignWriteCopyWithImpl<TicketAttachmentSignWrite>(this as TicketAttachmentSignWrite, _$identity);

  /// Serializes this TicketAttachmentSignWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketAttachmentSignWrite&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes)&&(identical(other.checksumSha256, checksumSha256) || other.checksumSha256 == checksumSha256));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contentType,sizeBytes,checksumSha256);

@override
String toString() {
  return 'TicketAttachmentSignWrite(contentType: $contentType, sizeBytes: $sizeBytes, checksumSha256: $checksumSha256)';
}


}

/// @nodoc
abstract mixin class $TicketAttachmentSignWriteCopyWith<$Res>  {
  factory $TicketAttachmentSignWriteCopyWith(TicketAttachmentSignWrite value, $Res Function(TicketAttachmentSignWrite) _then) = _$TicketAttachmentSignWriteCopyWithImpl;
@useResult
$Res call({
 String contentType, int sizeBytes, String checksumSha256
});




}
/// @nodoc
class _$TicketAttachmentSignWriteCopyWithImpl<$Res>
    implements $TicketAttachmentSignWriteCopyWith<$Res> {
  _$TicketAttachmentSignWriteCopyWithImpl(this._self, this._then);

  final TicketAttachmentSignWrite _self;
  final $Res Function(TicketAttachmentSignWrite) _then;

/// Create a copy of TicketAttachmentSignWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contentType = null,Object? sizeBytes = null,Object? checksumSha256 = null,}) {
  return _then(_self.copyWith(
contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,sizeBytes: null == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int,checksumSha256: null == checksumSha256 ? _self.checksumSha256 : checksumSha256 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketAttachmentSignWrite].
extension TicketAttachmentSignWritePatterns on TicketAttachmentSignWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketAttachmentSignWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketAttachmentSignWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketAttachmentSignWrite value)  $default,){
final _that = this;
switch (_that) {
case _TicketAttachmentSignWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketAttachmentSignWrite value)?  $default,){
final _that = this;
switch (_that) {
case _TicketAttachmentSignWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String contentType,  int sizeBytes,  String checksumSha256)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketAttachmentSignWrite() when $default != null:
return $default(_that.contentType,_that.sizeBytes,_that.checksumSha256);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String contentType,  int sizeBytes,  String checksumSha256)  $default,) {final _that = this;
switch (_that) {
case _TicketAttachmentSignWrite():
return $default(_that.contentType,_that.sizeBytes,_that.checksumSha256);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String contentType,  int sizeBytes,  String checksumSha256)?  $default,) {final _that = this;
switch (_that) {
case _TicketAttachmentSignWrite() when $default != null:
return $default(_that.contentType,_that.sizeBytes,_that.checksumSha256);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketAttachmentSignWrite implements TicketAttachmentSignWrite {
  const _TicketAttachmentSignWrite({required this.contentType, required this.sizeBytes, required this.checksumSha256});
  factory _TicketAttachmentSignWrite.fromJson(Map<String, dynamic> json) => _$TicketAttachmentSignWriteFromJson(json);

@override final  String contentType;
@override final  int sizeBytes;
@override final  String checksumSha256;

/// Create a copy of TicketAttachmentSignWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketAttachmentSignWriteCopyWith<_TicketAttachmentSignWrite> get copyWith => __$TicketAttachmentSignWriteCopyWithImpl<_TicketAttachmentSignWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketAttachmentSignWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketAttachmentSignWrite&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes)&&(identical(other.checksumSha256, checksumSha256) || other.checksumSha256 == checksumSha256));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contentType,sizeBytes,checksumSha256);

@override
String toString() {
  return 'TicketAttachmentSignWrite(contentType: $contentType, sizeBytes: $sizeBytes, checksumSha256: $checksumSha256)';
}


}

/// @nodoc
abstract mixin class _$TicketAttachmentSignWriteCopyWith<$Res> implements $TicketAttachmentSignWriteCopyWith<$Res> {
  factory _$TicketAttachmentSignWriteCopyWith(_TicketAttachmentSignWrite value, $Res Function(_TicketAttachmentSignWrite) _then) = __$TicketAttachmentSignWriteCopyWithImpl;
@override @useResult
$Res call({
 String contentType, int sizeBytes, String checksumSha256
});




}
/// @nodoc
class __$TicketAttachmentSignWriteCopyWithImpl<$Res>
    implements _$TicketAttachmentSignWriteCopyWith<$Res> {
  __$TicketAttachmentSignWriteCopyWithImpl(this._self, this._then);

  final _TicketAttachmentSignWrite _self;
  final $Res Function(_TicketAttachmentSignWrite) _then;

/// Create a copy of TicketAttachmentSignWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contentType = null,Object? sizeBytes = null,Object? checksumSha256 = null,}) {
  return _then(_TicketAttachmentSignWrite(
contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,sizeBytes: null == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int,checksumSha256: null == checksumSha256 ? _self.checksumSha256 : checksumSha256 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
