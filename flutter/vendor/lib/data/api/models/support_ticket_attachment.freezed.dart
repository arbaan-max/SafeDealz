// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupportTicketAttachment {

 String? get id; String? get objectKey; String? get contentType; int? get sizeBytes; SupportTicketAttachmentStatus? get status;
/// Create a copy of SupportTicketAttachment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportTicketAttachmentCopyWith<SupportTicketAttachment> get copyWith => _$SupportTicketAttachmentCopyWithImpl<SupportTicketAttachment>(this as SupportTicketAttachment, _$identity);

  /// Serializes this SupportTicketAttachment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportTicketAttachment&&(identical(other.id, id) || other.id == id)&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,objectKey,contentType,sizeBytes,status);

@override
String toString() {
  return 'SupportTicketAttachment(id: $id, objectKey: $objectKey, contentType: $contentType, sizeBytes: $sizeBytes, status: $status)';
}


}

/// @nodoc
abstract mixin class $SupportTicketAttachmentCopyWith<$Res>  {
  factory $SupportTicketAttachmentCopyWith(SupportTicketAttachment value, $Res Function(SupportTicketAttachment) _then) = _$SupportTicketAttachmentCopyWithImpl;
@useResult
$Res call({
 String? id, String? objectKey, String? contentType, int? sizeBytes, SupportTicketAttachmentStatus? status
});




}
/// @nodoc
class _$SupportTicketAttachmentCopyWithImpl<$Res>
    implements $SupportTicketAttachmentCopyWith<$Res> {
  _$SupportTicketAttachmentCopyWithImpl(this._self, this._then);

  final SupportTicketAttachment _self;
  final $Res Function(SupportTicketAttachment) _then;

/// Create a copy of SupportTicketAttachment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? objectKey = freezed,Object? contentType = freezed,Object? sizeBytes = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,objectKey: freezed == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,sizeBytes: freezed == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupportTicketAttachmentStatus?,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportTicketAttachment].
extension SupportTicketAttachmentPatterns on SupportTicketAttachment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportTicketAttachment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportTicketAttachment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportTicketAttachment value)  $default,){
final _that = this;
switch (_that) {
case _SupportTicketAttachment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportTicketAttachment value)?  $default,){
final _that = this;
switch (_that) {
case _SupportTicketAttachment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? objectKey,  String? contentType,  int? sizeBytes,  SupportTicketAttachmentStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportTicketAttachment() when $default != null:
return $default(_that.id,_that.objectKey,_that.contentType,_that.sizeBytes,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? objectKey,  String? contentType,  int? sizeBytes,  SupportTicketAttachmentStatus? status)  $default,) {final _that = this;
switch (_that) {
case _SupportTicketAttachment():
return $default(_that.id,_that.objectKey,_that.contentType,_that.sizeBytes,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? objectKey,  String? contentType,  int? sizeBytes,  SupportTicketAttachmentStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _SupportTicketAttachment() when $default != null:
return $default(_that.id,_that.objectKey,_that.contentType,_that.sizeBytes,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportTicketAttachment implements SupportTicketAttachment {
  const _SupportTicketAttachment({this.id, this.objectKey, this.contentType, this.sizeBytes, this.status});
  factory _SupportTicketAttachment.fromJson(Map<String, dynamic> json) => _$SupportTicketAttachmentFromJson(json);

@override final  String? id;
@override final  String? objectKey;
@override final  String? contentType;
@override final  int? sizeBytes;
@override final  SupportTicketAttachmentStatus? status;

/// Create a copy of SupportTicketAttachment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportTicketAttachmentCopyWith<_SupportTicketAttachment> get copyWith => __$SupportTicketAttachmentCopyWithImpl<_SupportTicketAttachment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportTicketAttachmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportTicketAttachment&&(identical(other.id, id) || other.id == id)&&(identical(other.objectKey, objectKey) || other.objectKey == objectKey)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,objectKey,contentType,sizeBytes,status);

@override
String toString() {
  return 'SupportTicketAttachment(id: $id, objectKey: $objectKey, contentType: $contentType, sizeBytes: $sizeBytes, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SupportTicketAttachmentCopyWith<$Res> implements $SupportTicketAttachmentCopyWith<$Res> {
  factory _$SupportTicketAttachmentCopyWith(_SupportTicketAttachment value, $Res Function(_SupportTicketAttachment) _then) = __$SupportTicketAttachmentCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? objectKey, String? contentType, int? sizeBytes, SupportTicketAttachmentStatus? status
});




}
/// @nodoc
class __$SupportTicketAttachmentCopyWithImpl<$Res>
    implements _$SupportTicketAttachmentCopyWith<$Res> {
  __$SupportTicketAttachmentCopyWithImpl(this._self, this._then);

  final _SupportTicketAttachment _self;
  final $Res Function(_SupportTicketAttachment) _then;

/// Create a copy of SupportTicketAttachment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? objectKey = freezed,Object? contentType = freezed,Object? sizeBytes = freezed,Object? status = freezed,}) {
  return _then(_SupportTicketAttachment(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,objectKey: freezed == objectKey ? _self.objectKey : objectKey // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,sizeBytes: freezed == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupportTicketAttachmentStatus?,
  ));
}


}

// dart format on
