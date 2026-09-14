// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SupportTicketWrite _$SupportTicketWriteFromJson(Map<String, dynamic> json) {
  return _SupportTicketWrite.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketWrite {
  SupportTicketWriteSubjectType get subjectType =>
      throw _privateConstructorUsedError;
  String get subjectId => throw _privateConstructorUsedError;
  SupportTicketWriteReasonCode get reasonCode =>
      throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  String? get idempotencyKey => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketWriteCopyWith<SupportTicketWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketWriteCopyWith<$Res> {
  factory $SupportTicketWriteCopyWith(
    SupportTicketWrite value,
    $Res Function(SupportTicketWrite) then,
  ) = _$SupportTicketWriteCopyWithImpl<$Res, SupportTicketWrite>;
  @useResult
  $Res call({
    SupportTicketWriteSubjectType subjectType,
    String subjectId,
    SupportTicketWriteReasonCode reasonCode,
    String notes,
    String? idempotencyKey,
  });
}

/// @nodoc
class _$SupportTicketWriteCopyWithImpl<$Res, $Val extends SupportTicketWrite>
    implements $SupportTicketWriteCopyWith<$Res> {
  _$SupportTicketWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectType = null,
    Object? subjectId = null,
    Object? reasonCode = null,
    Object? notes = null,
    Object? idempotencyKey = freezed,
  }) {
    return _then(
      _value.copyWith(
            subjectType: null == subjectType
                ? _value.subjectType
                : subjectType // ignore: cast_nullable_to_non_nullable
                      as SupportTicketWriteSubjectType,
            subjectId: null == subjectId
                ? _value.subjectId
                : subjectId // ignore: cast_nullable_to_non_nullable
                      as String,
            reasonCode: null == reasonCode
                ? _value.reasonCode
                : reasonCode // ignore: cast_nullable_to_non_nullable
                      as SupportTicketWriteReasonCode,
            notes: null == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String,
            idempotencyKey: freezed == idempotencyKey
                ? _value.idempotencyKey
                : idempotencyKey // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SupportTicketWriteImplCopyWith<$Res>
    implements $SupportTicketWriteCopyWith<$Res> {
  factory _$$SupportTicketWriteImplCopyWith(
    _$SupportTicketWriteImpl value,
    $Res Function(_$SupportTicketWriteImpl) then,
  ) = __$$SupportTicketWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SupportTicketWriteSubjectType subjectType,
    String subjectId,
    SupportTicketWriteReasonCode reasonCode,
    String notes,
    String? idempotencyKey,
  });
}

/// @nodoc
class __$$SupportTicketWriteImplCopyWithImpl<$Res>
    extends _$SupportTicketWriteCopyWithImpl<$Res, _$SupportTicketWriteImpl>
    implements _$$SupportTicketWriteImplCopyWith<$Res> {
  __$$SupportTicketWriteImplCopyWithImpl(
    _$SupportTicketWriteImpl _value,
    $Res Function(_$SupportTicketWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SupportTicketWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectType = null,
    Object? subjectId = null,
    Object? reasonCode = null,
    Object? notes = null,
    Object? idempotencyKey = freezed,
  }) {
    return _then(
      _$SupportTicketWriteImpl(
        subjectType: null == subjectType
            ? _value.subjectType
            : subjectType // ignore: cast_nullable_to_non_nullable
                  as SupportTicketWriteSubjectType,
        subjectId: null == subjectId
            ? _value.subjectId
            : subjectId // ignore: cast_nullable_to_non_nullable
                  as String,
        reasonCode: null == reasonCode
            ? _value.reasonCode
            : reasonCode // ignore: cast_nullable_to_non_nullable
                  as SupportTicketWriteReasonCode,
        notes: null == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String,
        idempotencyKey: freezed == idempotencyKey
            ? _value.idempotencyKey
            : idempotencyKey // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketWriteImpl implements _SupportTicketWrite {
  const _$SupportTicketWriteImpl({
    required this.subjectType,
    required this.subjectId,
    required this.reasonCode,
    required this.notes,
    this.idempotencyKey,
  });

  factory _$SupportTicketWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketWriteImplFromJson(json);

  @override
  final SupportTicketWriteSubjectType subjectType;
  @override
  final String subjectId;
  @override
  final SupportTicketWriteReasonCode reasonCode;
  @override
  final String notes;
  @override
  final String? idempotencyKey;

  @override
  String toString() {
    return 'SupportTicketWrite(subjectType: $subjectType, subjectId: $subjectId, reasonCode: $reasonCode, notes: $notes, idempotencyKey: $idempotencyKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketWriteImpl &&
            (identical(other.subjectType, subjectType) ||
                other.subjectType == subjectType) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.reasonCode, reasonCode) ||
                other.reasonCode == reasonCode) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.idempotencyKey, idempotencyKey) ||
                other.idempotencyKey == idempotencyKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    subjectType,
    subjectId,
    reasonCode,
    notes,
    idempotencyKey,
  );

  /// Create a copy of SupportTicketWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketWriteImplCopyWith<_$SupportTicketWriteImpl> get copyWith =>
      __$$SupportTicketWriteImplCopyWithImpl<_$SupportTicketWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketWriteImplToJson(this);
  }
}

abstract class _SupportTicketWrite implements SupportTicketWrite {
  const factory _SupportTicketWrite({
    required final SupportTicketWriteSubjectType subjectType,
    required final String subjectId,
    required final SupportTicketWriteReasonCode reasonCode,
    required final String notes,
    final String? idempotencyKey,
  }) = _$SupportTicketWriteImpl;

  factory _SupportTicketWrite.fromJson(Map<String, dynamic> json) =
      _$SupportTicketWriteImpl.fromJson;

  @override
  SupportTicketWriteSubjectType get subjectType;
  @override
  String get subjectId;
  @override
  SupportTicketWriteReasonCode get reasonCode;
  @override
  String get notes;
  @override
  String? get idempotencyKey;

  /// Create a copy of SupportTicketWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketWriteImplCopyWith<_$SupportTicketWriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
