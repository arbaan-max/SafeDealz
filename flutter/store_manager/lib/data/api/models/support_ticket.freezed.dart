// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SupportTicket _$SupportTicketFromJson(Map<String, dynamic> json) {
  return _SupportTicket.fromJson(json);
}

/// @nodoc
mixin _$SupportTicket {
  String? get id => throw _privateConstructorUsedError;
  String? get creatorAccountId => throw _privateConstructorUsedError;
  SupportTicketCreatorRole? get creatorRole =>
      throw _privateConstructorUsedError;
  SupportTicketSubjectType? get subjectType =>
      throw _privateConstructorUsedError;
  String? get subjectId => throw _privateConstructorUsedError;
  String? get branchId => throw _privateConstructorUsedError;
  SupportTicketReasonCode? get reasonCode => throw _privateConstructorUsedError;
  SupportTicketStatus? get status => throw _privateConstructorUsedError;
  String? get ownerAccountId => throw _privateConstructorUsedError;
  List<SupportTicketNote>? get notes => throw _privateConstructorUsedError;
  List<SupportTicketAttachment>? get attachments =>
      throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SupportTicket to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketCopyWith<SupportTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketCopyWith<$Res> {
  factory $SupportTicketCopyWith(
    SupportTicket value,
    $Res Function(SupportTicket) then,
  ) = _$SupportTicketCopyWithImpl<$Res, SupportTicket>;
  @useResult
  $Res call({
    String? id,
    String? creatorAccountId,
    SupportTicketCreatorRole? creatorRole,
    SupportTicketSubjectType? subjectType,
    String? subjectId,
    String? branchId,
    SupportTicketReasonCode? reasonCode,
    SupportTicketStatus? status,
    String? ownerAccountId,
    List<SupportTicketNote>? notes,
    List<SupportTicketAttachment>? attachments,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$SupportTicketCopyWithImpl<$Res, $Val extends SupportTicket>
    implements $SupportTicketCopyWith<$Res> {
  _$SupportTicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creatorAccountId = freezed,
    Object? creatorRole = freezed,
    Object? subjectType = freezed,
    Object? subjectId = freezed,
    Object? branchId = freezed,
    Object? reasonCode = freezed,
    Object? status = freezed,
    Object? ownerAccountId = freezed,
    Object? notes = freezed,
    Object? attachments = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            creatorAccountId: freezed == creatorAccountId
                ? _value.creatorAccountId
                : creatorAccountId // ignore: cast_nullable_to_non_nullable
                      as String?,
            creatorRole: freezed == creatorRole
                ? _value.creatorRole
                : creatorRole // ignore: cast_nullable_to_non_nullable
                      as SupportTicketCreatorRole?,
            subjectType: freezed == subjectType
                ? _value.subjectType
                : subjectType // ignore: cast_nullable_to_non_nullable
                      as SupportTicketSubjectType?,
            subjectId: freezed == subjectId
                ? _value.subjectId
                : subjectId // ignore: cast_nullable_to_non_nullable
                      as String?,
            branchId: freezed == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as String?,
            reasonCode: freezed == reasonCode
                ? _value.reasonCode
                : reasonCode // ignore: cast_nullable_to_non_nullable
                      as SupportTicketReasonCode?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as SupportTicketStatus?,
            ownerAccountId: freezed == ownerAccountId
                ? _value.ownerAccountId
                : ownerAccountId // ignore: cast_nullable_to_non_nullable
                      as String?,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as List<SupportTicketNote>?,
            attachments: freezed == attachments
                ? _value.attachments
                : attachments // ignore: cast_nullable_to_non_nullable
                      as List<SupportTicketAttachment>?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SupportTicketImplCopyWith<$Res>
    implements $SupportTicketCopyWith<$Res> {
  factory _$$SupportTicketImplCopyWith(
    _$SupportTicketImpl value,
    $Res Function(_$SupportTicketImpl) then,
  ) = __$$SupportTicketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? creatorAccountId,
    SupportTicketCreatorRole? creatorRole,
    SupportTicketSubjectType? subjectType,
    String? subjectId,
    String? branchId,
    SupportTicketReasonCode? reasonCode,
    SupportTicketStatus? status,
    String? ownerAccountId,
    List<SupportTicketNote>? notes,
    List<SupportTicketAttachment>? attachments,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$SupportTicketImplCopyWithImpl<$Res>
    extends _$SupportTicketCopyWithImpl<$Res, _$SupportTicketImpl>
    implements _$$SupportTicketImplCopyWith<$Res> {
  __$$SupportTicketImplCopyWithImpl(
    _$SupportTicketImpl _value,
    $Res Function(_$SupportTicketImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SupportTicket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creatorAccountId = freezed,
    Object? creatorRole = freezed,
    Object? subjectType = freezed,
    Object? subjectId = freezed,
    Object? branchId = freezed,
    Object? reasonCode = freezed,
    Object? status = freezed,
    Object? ownerAccountId = freezed,
    Object? notes = freezed,
    Object? attachments = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$SupportTicketImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        creatorAccountId: freezed == creatorAccountId
            ? _value.creatorAccountId
            : creatorAccountId // ignore: cast_nullable_to_non_nullable
                  as String?,
        creatorRole: freezed == creatorRole
            ? _value.creatorRole
            : creatorRole // ignore: cast_nullable_to_non_nullable
                  as SupportTicketCreatorRole?,
        subjectType: freezed == subjectType
            ? _value.subjectType
            : subjectType // ignore: cast_nullable_to_non_nullable
                  as SupportTicketSubjectType?,
        subjectId: freezed == subjectId
            ? _value.subjectId
            : subjectId // ignore: cast_nullable_to_non_nullable
                  as String?,
        branchId: freezed == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as String?,
        reasonCode: freezed == reasonCode
            ? _value.reasonCode
            : reasonCode // ignore: cast_nullable_to_non_nullable
                  as SupportTicketReasonCode?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as SupportTicketStatus?,
        ownerAccountId: freezed == ownerAccountId
            ? _value.ownerAccountId
            : ownerAccountId // ignore: cast_nullable_to_non_nullable
                  as String?,
        notes: freezed == notes
            ? _value._notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as List<SupportTicketNote>?,
        attachments: freezed == attachments
            ? _value._attachments
            : attachments // ignore: cast_nullable_to_non_nullable
                  as List<SupportTicketAttachment>?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketImpl implements _SupportTicket {
  const _$SupportTicketImpl({
    this.id,
    this.creatorAccountId,
    this.creatorRole,
    this.subjectType,
    this.subjectId,
    this.branchId,
    this.reasonCode,
    this.status,
    this.ownerAccountId,
    final List<SupportTicketNote>? notes,
    final List<SupportTicketAttachment>? attachments,
    this.createdAt,
    this.updatedAt,
  }) : _notes = notes,
       _attachments = attachments;

  factory _$SupportTicketImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketImplFromJson(json);

  @override
  final String? id;
  @override
  final String? creatorAccountId;
  @override
  final SupportTicketCreatorRole? creatorRole;
  @override
  final SupportTicketSubjectType? subjectType;
  @override
  final String? subjectId;
  @override
  final String? branchId;
  @override
  final SupportTicketReasonCode? reasonCode;
  @override
  final SupportTicketStatus? status;
  @override
  final String? ownerAccountId;
  final List<SupportTicketNote>? _notes;
  @override
  List<SupportTicketNote>? get notes {
    final value = _notes;
    if (value == null) return null;
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SupportTicketAttachment>? _attachments;
  @override
  List<SupportTicketAttachment>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'SupportTicket(id: $id, creatorAccountId: $creatorAccountId, creatorRole: $creatorRole, subjectType: $subjectType, subjectId: $subjectId, branchId: $branchId, reasonCode: $reasonCode, status: $status, ownerAccountId: $ownerAccountId, notes: $notes, attachments: $attachments, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creatorAccountId, creatorAccountId) ||
                other.creatorAccountId == creatorAccountId) &&
            (identical(other.creatorRole, creatorRole) ||
                other.creatorRole == creatorRole) &&
            (identical(other.subjectType, subjectType) ||
                other.subjectType == subjectType) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.reasonCode, reasonCode) ||
                other.reasonCode == reasonCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ownerAccountId, ownerAccountId) ||
                other.ownerAccountId == ownerAccountId) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            const DeepCollectionEquality().equals(
              other._attachments,
              _attachments,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    creatorAccountId,
    creatorRole,
    subjectType,
    subjectId,
    branchId,
    reasonCode,
    status,
    ownerAccountId,
    const DeepCollectionEquality().hash(_notes),
    const DeepCollectionEquality().hash(_attachments),
    createdAt,
    updatedAt,
  );

  /// Create a copy of SupportTicket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketImplCopyWith<_$SupportTicketImpl> get copyWith =>
      __$$SupportTicketImplCopyWithImpl<_$SupportTicketImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketImplToJson(this);
  }
}

abstract class _SupportTicket implements SupportTicket {
  const factory _SupportTicket({
    final String? id,
    final String? creatorAccountId,
    final SupportTicketCreatorRole? creatorRole,
    final SupportTicketSubjectType? subjectType,
    final String? subjectId,
    final String? branchId,
    final SupportTicketReasonCode? reasonCode,
    final SupportTicketStatus? status,
    final String? ownerAccountId,
    final List<SupportTicketNote>? notes,
    final List<SupportTicketAttachment>? attachments,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$SupportTicketImpl;

  factory _SupportTicket.fromJson(Map<String, dynamic> json) =
      _$SupportTicketImpl.fromJson;

  @override
  String? get id;
  @override
  String? get creatorAccountId;
  @override
  SupportTicketCreatorRole? get creatorRole;
  @override
  SupportTicketSubjectType? get subjectType;
  @override
  String? get subjectId;
  @override
  String? get branchId;
  @override
  SupportTicketReasonCode? get reasonCode;
  @override
  SupportTicketStatus? get status;
  @override
  String? get ownerAccountId;
  @override
  List<SupportTicketNote>? get notes;
  @override
  List<SupportTicketAttachment>? get attachments;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of SupportTicket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketImplCopyWith<_$SupportTicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
