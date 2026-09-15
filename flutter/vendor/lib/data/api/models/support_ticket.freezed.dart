// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupportTicket {

 String? get id; String? get creatorAccountId; SupportTicketCreatorRole? get creatorRole; SupportTicketSubjectType? get subjectType; String? get subjectId; String? get branchId; SupportTicketReasonCode? get reasonCode; SupportTicketStatus? get status; String? get ownerAccountId; List<SupportTicketNote>? get notes; List<SupportTicketAttachment>? get attachments; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of SupportTicket
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportTicketCopyWith<SupportTicket> get copyWith => _$SupportTicketCopyWithImpl<SupportTicket>(this as SupportTicket, _$identity);

  /// Serializes this SupportTicket to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportTicket&&(identical(other.id, id) || other.id == id)&&(identical(other.creatorAccountId, creatorAccountId) || other.creatorAccountId == creatorAccountId)&&(identical(other.creatorRole, creatorRole) || other.creatorRole == creatorRole)&&(identical(other.subjectType, subjectType) || other.subjectType == subjectType)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.ownerAccountId, ownerAccountId) || other.ownerAccountId == ownerAccountId)&&const DeepCollectionEquality().equals(other.notes, notes)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,creatorAccountId,creatorRole,subjectType,subjectId,branchId,reasonCode,status,ownerAccountId,const DeepCollectionEquality().hash(notes),const DeepCollectionEquality().hash(attachments),createdAt,updatedAt);

@override
String toString() {
  return 'SupportTicket(id: $id, creatorAccountId: $creatorAccountId, creatorRole: $creatorRole, subjectType: $subjectType, subjectId: $subjectId, branchId: $branchId, reasonCode: $reasonCode, status: $status, ownerAccountId: $ownerAccountId, notes: $notes, attachments: $attachments, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SupportTicketCopyWith<$Res>  {
  factory $SupportTicketCopyWith(SupportTicket value, $Res Function(SupportTicket) _then) = _$SupportTicketCopyWithImpl;
@useResult
$Res call({
 String? id, String? creatorAccountId, SupportTicketCreatorRole? creatorRole, SupportTicketSubjectType? subjectType, String? subjectId, String? branchId, SupportTicketReasonCode? reasonCode, SupportTicketStatus? status, String? ownerAccountId, List<SupportTicketNote>? notes, List<SupportTicketAttachment>? attachments, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$SupportTicketCopyWithImpl<$Res>
    implements $SupportTicketCopyWith<$Res> {
  _$SupportTicketCopyWithImpl(this._self, this._then);

  final SupportTicket _self;
  final $Res Function(SupportTicket) _then;

/// Create a copy of SupportTicket
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? creatorAccountId = freezed,Object? creatorRole = freezed,Object? subjectType = freezed,Object? subjectId = freezed,Object? branchId = freezed,Object? reasonCode = freezed,Object? status = freezed,Object? ownerAccountId = freezed,Object? notes = freezed,Object? attachments = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,creatorAccountId: freezed == creatorAccountId ? _self.creatorAccountId : creatorAccountId // ignore: cast_nullable_to_non_nullable
as String?,creatorRole: freezed == creatorRole ? _self.creatorRole : creatorRole // ignore: cast_nullable_to_non_nullable
as SupportTicketCreatorRole?,subjectType: freezed == subjectType ? _self.subjectType : subjectType // ignore: cast_nullable_to_non_nullable
as SupportTicketSubjectType?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,reasonCode: freezed == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as SupportTicketReasonCode?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupportTicketStatus?,ownerAccountId: freezed == ownerAccountId ? _self.ownerAccountId : ownerAccountId // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as List<SupportTicketNote>?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<SupportTicketAttachment>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportTicket].
extension SupportTicketPatterns on SupportTicket {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportTicket value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportTicket() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportTicket value)  $default,){
final _that = this;
switch (_that) {
case _SupportTicket():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportTicket value)?  $default,){
final _that = this;
switch (_that) {
case _SupportTicket() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? creatorAccountId,  SupportTicketCreatorRole? creatorRole,  SupportTicketSubjectType? subjectType,  String? subjectId,  String? branchId,  SupportTicketReasonCode? reasonCode,  SupportTicketStatus? status,  String? ownerAccountId,  List<SupportTicketNote>? notes,  List<SupportTicketAttachment>? attachments,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportTicket() when $default != null:
return $default(_that.id,_that.creatorAccountId,_that.creatorRole,_that.subjectType,_that.subjectId,_that.branchId,_that.reasonCode,_that.status,_that.ownerAccountId,_that.notes,_that.attachments,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? creatorAccountId,  SupportTicketCreatorRole? creatorRole,  SupportTicketSubjectType? subjectType,  String? subjectId,  String? branchId,  SupportTicketReasonCode? reasonCode,  SupportTicketStatus? status,  String? ownerAccountId,  List<SupportTicketNote>? notes,  List<SupportTicketAttachment>? attachments,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _SupportTicket():
return $default(_that.id,_that.creatorAccountId,_that.creatorRole,_that.subjectType,_that.subjectId,_that.branchId,_that.reasonCode,_that.status,_that.ownerAccountId,_that.notes,_that.attachments,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? creatorAccountId,  SupportTicketCreatorRole? creatorRole,  SupportTicketSubjectType? subjectType,  String? subjectId,  String? branchId,  SupportTicketReasonCode? reasonCode,  SupportTicketStatus? status,  String? ownerAccountId,  List<SupportTicketNote>? notes,  List<SupportTicketAttachment>? attachments,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _SupportTicket() when $default != null:
return $default(_that.id,_that.creatorAccountId,_that.creatorRole,_that.subjectType,_that.subjectId,_that.branchId,_that.reasonCode,_that.status,_that.ownerAccountId,_that.notes,_that.attachments,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportTicket implements SupportTicket {
  const _SupportTicket({this.id, this.creatorAccountId, this.creatorRole, this.subjectType, this.subjectId, this.branchId, this.reasonCode, this.status, this.ownerAccountId, final  List<SupportTicketNote>? notes, final  List<SupportTicketAttachment>? attachments, this.createdAt, this.updatedAt}): _notes = notes,_attachments = attachments;
  factory _SupportTicket.fromJson(Map<String, dynamic> json) => _$SupportTicketFromJson(json);

@override final  String? id;
@override final  String? creatorAccountId;
@override final  SupportTicketCreatorRole? creatorRole;
@override final  SupportTicketSubjectType? subjectType;
@override final  String? subjectId;
@override final  String? branchId;
@override final  SupportTicketReasonCode? reasonCode;
@override final  SupportTicketStatus? status;
@override final  String? ownerAccountId;
 final  List<SupportTicketNote>? _notes;
@override List<SupportTicketNote>? get notes {
  final value = _notes;
  if (value == null) return null;
  if (_notes is EqualUnmodifiableListView) return _notes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<SupportTicketAttachment>? _attachments;
@override List<SupportTicketAttachment>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of SupportTicket
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportTicketCopyWith<_SupportTicket> get copyWith => __$SupportTicketCopyWithImpl<_SupportTicket>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportTicketToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportTicket&&(identical(other.id, id) || other.id == id)&&(identical(other.creatorAccountId, creatorAccountId) || other.creatorAccountId == creatorAccountId)&&(identical(other.creatorRole, creatorRole) || other.creatorRole == creatorRole)&&(identical(other.subjectType, subjectType) || other.subjectType == subjectType)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.ownerAccountId, ownerAccountId) || other.ownerAccountId == ownerAccountId)&&const DeepCollectionEquality().equals(other._notes, _notes)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,creatorAccountId,creatorRole,subjectType,subjectId,branchId,reasonCode,status,ownerAccountId,const DeepCollectionEquality().hash(_notes),const DeepCollectionEquality().hash(_attachments),createdAt,updatedAt);

@override
String toString() {
  return 'SupportTicket(id: $id, creatorAccountId: $creatorAccountId, creatorRole: $creatorRole, subjectType: $subjectType, subjectId: $subjectId, branchId: $branchId, reasonCode: $reasonCode, status: $status, ownerAccountId: $ownerAccountId, notes: $notes, attachments: $attachments, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SupportTicketCopyWith<$Res> implements $SupportTicketCopyWith<$Res> {
  factory _$SupportTicketCopyWith(_SupportTicket value, $Res Function(_SupportTicket) _then) = __$SupportTicketCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? creatorAccountId, SupportTicketCreatorRole? creatorRole, SupportTicketSubjectType? subjectType, String? subjectId, String? branchId, SupportTicketReasonCode? reasonCode, SupportTicketStatus? status, String? ownerAccountId, List<SupportTicketNote>? notes, List<SupportTicketAttachment>? attachments, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$SupportTicketCopyWithImpl<$Res>
    implements _$SupportTicketCopyWith<$Res> {
  __$SupportTicketCopyWithImpl(this._self, this._then);

  final _SupportTicket _self;
  final $Res Function(_SupportTicket) _then;

/// Create a copy of SupportTicket
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? creatorAccountId = freezed,Object? creatorRole = freezed,Object? subjectType = freezed,Object? subjectId = freezed,Object? branchId = freezed,Object? reasonCode = freezed,Object? status = freezed,Object? ownerAccountId = freezed,Object? notes = freezed,Object? attachments = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_SupportTicket(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,creatorAccountId: freezed == creatorAccountId ? _self.creatorAccountId : creatorAccountId // ignore: cast_nullable_to_non_nullable
as String?,creatorRole: freezed == creatorRole ? _self.creatorRole : creatorRole // ignore: cast_nullable_to_non_nullable
as SupportTicketCreatorRole?,subjectType: freezed == subjectType ? _self.subjectType : subjectType // ignore: cast_nullable_to_non_nullable
as SupportTicketSubjectType?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,reasonCode: freezed == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as SupportTicketReasonCode?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupportTicketStatus?,ownerAccountId: freezed == ownerAccountId ? _self.ownerAccountId : ownerAccountId // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self._notes : notes // ignore: cast_nullable_to_non_nullable
as List<SupportTicketNote>?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<SupportTicketAttachment>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
