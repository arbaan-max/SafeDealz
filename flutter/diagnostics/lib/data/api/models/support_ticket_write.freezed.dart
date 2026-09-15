// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupportTicketWrite {

 SupportTicketWriteSubjectType get subjectType; String get subjectId; SupportTicketWriteReasonCode get reasonCode; String get notes; String? get idempotencyKey;
/// Create a copy of SupportTicketWrite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportTicketWriteCopyWith<SupportTicketWrite> get copyWith => _$SupportTicketWriteCopyWithImpl<SupportTicketWrite>(this as SupportTicketWrite, _$identity);

  /// Serializes this SupportTicketWrite to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportTicketWrite&&(identical(other.subjectType, subjectType) || other.subjectType == subjectType)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subjectType,subjectId,reasonCode,notes,idempotencyKey);

@override
String toString() {
  return 'SupportTicketWrite(subjectType: $subjectType, subjectId: $subjectId, reasonCode: $reasonCode, notes: $notes, idempotencyKey: $idempotencyKey)';
}


}

/// @nodoc
abstract mixin class $SupportTicketWriteCopyWith<$Res>  {
  factory $SupportTicketWriteCopyWith(SupportTicketWrite value, $Res Function(SupportTicketWrite) _then) = _$SupportTicketWriteCopyWithImpl;
@useResult
$Res call({
 SupportTicketWriteSubjectType subjectType, String subjectId, SupportTicketWriteReasonCode reasonCode, String notes, String? idempotencyKey
});




}
/// @nodoc
class _$SupportTicketWriteCopyWithImpl<$Res>
    implements $SupportTicketWriteCopyWith<$Res> {
  _$SupportTicketWriteCopyWithImpl(this._self, this._then);

  final SupportTicketWrite _self;
  final $Res Function(SupportTicketWrite) _then;

/// Create a copy of SupportTicketWrite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subjectType = null,Object? subjectId = null,Object? reasonCode = null,Object? notes = null,Object? idempotencyKey = freezed,}) {
  return _then(_self.copyWith(
subjectType: null == subjectType ? _self.subjectType : subjectType // ignore: cast_nullable_to_non_nullable
as SupportTicketWriteSubjectType,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,reasonCode: null == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as SupportTicketWriteReasonCode,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,idempotencyKey: freezed == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportTicketWrite].
extension SupportTicketWritePatterns on SupportTicketWrite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportTicketWrite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportTicketWrite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportTicketWrite value)  $default,){
final _that = this;
switch (_that) {
case _SupportTicketWrite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportTicketWrite value)?  $default,){
final _that = this;
switch (_that) {
case _SupportTicketWrite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SupportTicketWriteSubjectType subjectType,  String subjectId,  SupportTicketWriteReasonCode reasonCode,  String notes,  String? idempotencyKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportTicketWrite() when $default != null:
return $default(_that.subjectType,_that.subjectId,_that.reasonCode,_that.notes,_that.idempotencyKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SupportTicketWriteSubjectType subjectType,  String subjectId,  SupportTicketWriteReasonCode reasonCode,  String notes,  String? idempotencyKey)  $default,) {final _that = this;
switch (_that) {
case _SupportTicketWrite():
return $default(_that.subjectType,_that.subjectId,_that.reasonCode,_that.notes,_that.idempotencyKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SupportTicketWriteSubjectType subjectType,  String subjectId,  SupportTicketWriteReasonCode reasonCode,  String notes,  String? idempotencyKey)?  $default,) {final _that = this;
switch (_that) {
case _SupportTicketWrite() when $default != null:
return $default(_that.subjectType,_that.subjectId,_that.reasonCode,_that.notes,_that.idempotencyKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportTicketWrite implements SupportTicketWrite {
  const _SupportTicketWrite({required this.subjectType, required this.subjectId, required this.reasonCode, required this.notes, this.idempotencyKey});
  factory _SupportTicketWrite.fromJson(Map<String, dynamic> json) => _$SupportTicketWriteFromJson(json);

@override final  SupportTicketWriteSubjectType subjectType;
@override final  String subjectId;
@override final  SupportTicketWriteReasonCode reasonCode;
@override final  String notes;
@override final  String? idempotencyKey;

/// Create a copy of SupportTicketWrite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportTicketWriteCopyWith<_SupportTicketWrite> get copyWith => __$SupportTicketWriteCopyWithImpl<_SupportTicketWrite>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportTicketWriteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportTicketWrite&&(identical(other.subjectType, subjectType) || other.subjectType == subjectType)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subjectType,subjectId,reasonCode,notes,idempotencyKey);

@override
String toString() {
  return 'SupportTicketWrite(subjectType: $subjectType, subjectId: $subjectId, reasonCode: $reasonCode, notes: $notes, idempotencyKey: $idempotencyKey)';
}


}

/// @nodoc
abstract mixin class _$SupportTicketWriteCopyWith<$Res> implements $SupportTicketWriteCopyWith<$Res> {
  factory _$SupportTicketWriteCopyWith(_SupportTicketWrite value, $Res Function(_SupportTicketWrite) _then) = __$SupportTicketWriteCopyWithImpl;
@override @useResult
$Res call({
 SupportTicketWriteSubjectType subjectType, String subjectId, SupportTicketWriteReasonCode reasonCode, String notes, String? idempotencyKey
});




}
/// @nodoc
class __$SupportTicketWriteCopyWithImpl<$Res>
    implements _$SupportTicketWriteCopyWith<$Res> {
  __$SupportTicketWriteCopyWithImpl(this._self, this._then);

  final _SupportTicketWrite _self;
  final $Res Function(_SupportTicketWrite) _then;

/// Create a copy of SupportTicketWrite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subjectType = null,Object? subjectId = null,Object? reasonCode = null,Object? notes = null,Object? idempotencyKey = freezed,}) {
  return _then(_SupportTicketWrite(
subjectType: null == subjectType ? _self.subjectType : subjectType // ignore: cast_nullable_to_non_nullable
as SupportTicketWriteSubjectType,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,reasonCode: null == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as SupportTicketWriteReasonCode,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,idempotencyKey: freezed == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
