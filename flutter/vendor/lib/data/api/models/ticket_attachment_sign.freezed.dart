// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_attachment_sign.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketAttachmentSign {

 String? get attachmentId; String? get objectKey; SignedUrl? get upload;
/// Create a copy of TicketAttachmentSign
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketAttachmentSignCopyWith<TicketAttachmentSign> get copyWith => _$TicketAttachmentSignCopyWithImpl<TicketAttachmentSign>(this as TicketAttachmentSign, _$identity);

  /// Serializes this TicketAttachmentSign to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketAttachmentSign&&(identical(other.attachmentId, attachmentId) || other.attachmentId == attachmentId)&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.upload, upload) || other.upload == upload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attachmentId,objectKey,upload);

@override
String toString() {
  return 'TicketAttachmentSign(attachmentId: $attachmentId, objectKey: $objectKey, upload: $upload)';
}


}

/// @nodoc
abstract mixin class $TicketAttachmentSignCopyWith<$Res>  {
  factory $TicketAttachmentSignCopyWith(TicketAttachmentSign value, $Res Function(TicketAttachmentSign) _then) = _$TicketAttachmentSignCopyWithImpl;
@useResult
$Res call({
 String? attachmentId, String? objectKey, SignedUrl? upload
});


$SignedUrlCopyWith<$Res>? get upload;

}
/// @nodoc
class _$TicketAttachmentSignCopyWithImpl<$Res>
    implements $TicketAttachmentSignCopyWith<$Res> {
  _$TicketAttachmentSignCopyWithImpl(this._self, this._then);

  final TicketAttachmentSign _self;
  final $Res Function(TicketAttachmentSign) _then;

/// Create a copy of TicketAttachmentSign
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attachmentId = freezed,Object? objectKey = freezed,Object? upload = freezed,}) {
  return _then(_self.copyWith(
attachmentId: freezed == attachmentId ? _self.attachmentId : attachmentId // ignore: cast_nullable_to_non_nullable
as String?,objectKey: freezed == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String?,upload: freezed == upload ? _self.upload : upload // ignore: cast_nullable_to_non_nullable
as SignedUrl?,
  ));
}
/// Create a copy of TicketAttachmentSign
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


/// Adds pattern-matching-related methods to [TicketAttachmentSign].
extension TicketAttachmentSignPatterns on TicketAttachmentSign {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketAttachmentSign value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketAttachmentSign() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketAttachmentSign value)  $default,){
final _that = this;
switch (_that) {
case _TicketAttachmentSign():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketAttachmentSign value)?  $default,){
final _that = this;
switch (_that) {
case _TicketAttachmentSign() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? attachmentId,  String? objectKey,  SignedUrl? upload)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketAttachmentSign() when $default != null:
return $default(_that.attachmentId,_that.objectKey,_that.upload);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? attachmentId,  String? objectKey,  SignedUrl? upload)  $default,) {final _that = this;
switch (_that) {
case _TicketAttachmentSign():
return $default(_that.attachmentId,_that.objectKey,_that.upload);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? attachmentId,  String? objectKey,  SignedUrl? upload)?  $default,) {final _that = this;
switch (_that) {
case _TicketAttachmentSign() when $default != null:
return $default(_that.attachmentId,_that.objectKey,_that.upload);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketAttachmentSign implements TicketAttachmentSign {
  const _TicketAttachmentSign({this.attachmentId, this.objectKey, this.upload});
  factory _TicketAttachmentSign.fromJson(Map<String, dynamic> json) => _$TicketAttachmentSignFromJson(json);

@override final  String? attachmentId;
@override final  String? objectKey;
@override final  SignedUrl? upload;

/// Create a copy of TicketAttachmentSign
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketAttachmentSignCopyWith<_TicketAttachmentSign> get copyWith => __$TicketAttachmentSignCopyWithImpl<_TicketAttachmentSign>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketAttachmentSignToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketAttachmentSign&&(identical(other.attachmentId, attachmentId) || other.attachmentId == attachmentId)&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.upload, upload) || other.upload == upload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attachmentId,objectKey,upload);

@override
String toString() {
  return 'TicketAttachmentSign(attachmentId: $attachmentId, objectKey: $objectKey, upload: $upload)';
}


}

/// @nodoc
abstract mixin class _$TicketAttachmentSignCopyWith<$Res> implements $TicketAttachmentSignCopyWith<$Res> {
  factory _$TicketAttachmentSignCopyWith(_TicketAttachmentSign value, $Res Function(_TicketAttachmentSign) _then) = __$TicketAttachmentSignCopyWithImpl;
@override @useResult
$Res call({
 String? attachmentId, String? objectKey, SignedUrl? upload
});


@override $SignedUrlCopyWith<$Res>? get upload;

}
/// @nodoc
class __$TicketAttachmentSignCopyWithImpl<$Res>
    implements _$TicketAttachmentSignCopyWith<$Res> {
  __$TicketAttachmentSignCopyWithImpl(this._self, this._then);

  final _TicketAttachmentSign _self;
  final $Res Function(_TicketAttachmentSign) _then;

/// Create a copy of TicketAttachmentSign
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attachmentId = freezed,Object? objectKey = freezed,Object? upload = freezed,}) {
  return _then(_TicketAttachmentSign(
attachmentId: freezed == attachmentId ? _self.attachmentId : attachmentId // ignore: cast_nullable_to_non_nullable
as String?,objectKey: freezed == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String?,upload: freezed == upload ? _self.upload : upload // ignore: cast_nullable_to_non_nullable
as SignedUrl?,
  ));
}

/// Create a copy of TicketAttachmentSign
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
