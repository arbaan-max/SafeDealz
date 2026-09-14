// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuditEvent _$AuditEventFromJson(Map<String, dynamic> json) {
  return _AuditEvent.fromJson(json);
}

/// @nodoc
mixin _$AuditEvent {
  String? get id => throw _privateConstructorUsedError;
  String? get actorId => throw _privateConstructorUsedError;
  String? get actorRole => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  String? get entityType => throw _privateConstructorUsedError;
  String? get entityId => throw _privateConstructorUsedError;
  String? get storeId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  dynamic get metadata => throw _privateConstructorUsedError;

  /// Serializes this AuditEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuditEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuditEventCopyWith<AuditEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditEventCopyWith<$Res> {
  factory $AuditEventCopyWith(
    AuditEvent value,
    $Res Function(AuditEvent) then,
  ) = _$AuditEventCopyWithImpl<$Res, AuditEvent>;
  @useResult
  $Res call({
    String? id,
    String? actorId,
    String? actorRole,
    String? action,
    String? entityType,
    String? entityId,
    String? storeId,
    DateTime? createdAt,
    dynamic metadata,
  });
}

/// @nodoc
class _$AuditEventCopyWithImpl<$Res, $Val extends AuditEvent>
    implements $AuditEventCopyWith<$Res> {
  _$AuditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuditEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? actorId = freezed,
    Object? actorRole = freezed,
    Object? action = freezed,
    Object? entityType = freezed,
    Object? entityId = freezed,
    Object? storeId = freezed,
    Object? createdAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            actorId: freezed == actorId
                ? _value.actorId
                : actorId // ignore: cast_nullable_to_non_nullable
                      as String?,
            actorRole: freezed == actorRole
                ? _value.actorRole
                : actorRole // ignore: cast_nullable_to_non_nullable
                      as String?,
            action: freezed == action
                ? _value.action
                : action // ignore: cast_nullable_to_non_nullable
                      as String?,
            entityType: freezed == entityType
                ? _value.entityType
                : entityType // ignore: cast_nullable_to_non_nullable
                      as String?,
            entityId: freezed == entityId
                ? _value.entityId
                : entityId // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuditEventImplCopyWith<$Res>
    implements $AuditEventCopyWith<$Res> {
  factory _$$AuditEventImplCopyWith(
    _$AuditEventImpl value,
    $Res Function(_$AuditEventImpl) then,
  ) = __$$AuditEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? actorId,
    String? actorRole,
    String? action,
    String? entityType,
    String? entityId,
    String? storeId,
    DateTime? createdAt,
    dynamic metadata,
  });
}

/// @nodoc
class __$$AuditEventImplCopyWithImpl<$Res>
    extends _$AuditEventCopyWithImpl<$Res, _$AuditEventImpl>
    implements _$$AuditEventImplCopyWith<$Res> {
  __$$AuditEventImplCopyWithImpl(
    _$AuditEventImpl _value,
    $Res Function(_$AuditEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuditEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? actorId = freezed,
    Object? actorRole = freezed,
    Object? action = freezed,
    Object? entityType = freezed,
    Object? entityId = freezed,
    Object? storeId = freezed,
    Object? createdAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$AuditEventImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        actorId: freezed == actorId
            ? _value.actorId
            : actorId // ignore: cast_nullable_to_non_nullable
                  as String?,
        actorRole: freezed == actorRole
            ? _value.actorRole
            : actorRole // ignore: cast_nullable_to_non_nullable
                  as String?,
        action: freezed == action
            ? _value.action
            : action // ignore: cast_nullable_to_non_nullable
                  as String?,
        entityType: freezed == entityType
            ? _value.entityType
            : entityType // ignore: cast_nullable_to_non_nullable
                  as String?,
        entityId: freezed == entityId
            ? _value.entityId
            : entityId // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        metadata: freezed == metadata
            ? _value.metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuditEventImpl implements _AuditEvent {
  const _$AuditEventImpl({
    this.id,
    this.actorId,
    this.actorRole,
    this.action,
    this.entityType,
    this.entityId,
    this.storeId,
    this.createdAt,
    this.metadata,
  });

  factory _$AuditEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuditEventImplFromJson(json);

  @override
  final String? id;
  @override
  final String? actorId;
  @override
  final String? actorRole;
  @override
  final String? action;
  @override
  final String? entityType;
  @override
  final String? entityId;
  @override
  final String? storeId;
  @override
  final DateTime? createdAt;
  @override
  final dynamic metadata;

  @override
  String toString() {
    return 'AuditEvent(id: $id, actorId: $actorId, actorRole: $actorRole, action: $action, entityType: $entityType, entityId: $entityId, storeId: $storeId, createdAt: $createdAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuditEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.actorId, actorId) || other.actorId == actorId) &&
            (identical(other.actorRole, actorRole) ||
                other.actorRole == actorRole) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    actorId,
    actorRole,
    action,
    entityType,
    entityId,
    storeId,
    createdAt,
    const DeepCollectionEquality().hash(metadata),
  );

  /// Create a copy of AuditEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuditEventImplCopyWith<_$AuditEventImpl> get copyWith =>
      __$$AuditEventImplCopyWithImpl<_$AuditEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuditEventImplToJson(this);
  }
}

abstract class _AuditEvent implements AuditEvent {
  const factory _AuditEvent({
    final String? id,
    final String? actorId,
    final String? actorRole,
    final String? action,
    final String? entityType,
    final String? entityId,
    final String? storeId,
    final DateTime? createdAt,
    final dynamic metadata,
  }) = _$AuditEventImpl;

  factory _AuditEvent.fromJson(Map<String, dynamic> json) =
      _$AuditEventImpl.fromJson;

  @override
  String? get id;
  @override
  String? get actorId;
  @override
  String? get actorRole;
  @override
  String? get action;
  @override
  String? get entityType;
  @override
  String? get entityId;
  @override
  String? get storeId;
  @override
  DateTime? get createdAt;
  @override
  dynamic get metadata;

  /// Create a copy of AuditEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuditEventImplCopyWith<_$AuditEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
