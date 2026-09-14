// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AccountSession _$AccountSessionFromJson(Map<String, dynamic> json) {
  return _AccountSession.fromJson(json);
}

/// @nodoc
mixin _$AccountSession {
  String? get id => throw _privateConstructorUsedError;
  String? get clientType => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  DateTime? get revokedAt => throw _privateConstructorUsedError;
  bool? get current => throw _privateConstructorUsedError;

  /// Serializes this AccountSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountSessionCopyWith<AccountSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSessionCopyWith<$Res> {
  factory $AccountSessionCopyWith(
    AccountSession value,
    $Res Function(AccountSession) then,
  ) = _$AccountSessionCopyWithImpl<$Res, AccountSession>;
  @useResult
  $Res call({
    String? id,
    String? clientType,
    DateTime? createdAt,
    DateTime? expiresAt,
    DateTime? revokedAt,
    bool? current,
  });
}

/// @nodoc
class _$AccountSessionCopyWithImpl<$Res, $Val extends AccountSession>
    implements $AccountSessionCopyWith<$Res> {
  _$AccountSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientType = freezed,
    Object? createdAt = freezed,
    Object? expiresAt = freezed,
    Object? revokedAt = freezed,
    Object? current = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            clientType: freezed == clientType
                ? _value.clientType
                : clientType // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            expiresAt: freezed == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            revokedAt: freezed == revokedAt
                ? _value.revokedAt
                : revokedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            current: freezed == current
                ? _value.current
                : current // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AccountSessionImplCopyWith<$Res>
    implements $AccountSessionCopyWith<$Res> {
  factory _$$AccountSessionImplCopyWith(
    _$AccountSessionImpl value,
    $Res Function(_$AccountSessionImpl) then,
  ) = __$$AccountSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? clientType,
    DateTime? createdAt,
    DateTime? expiresAt,
    DateTime? revokedAt,
    bool? current,
  });
}

/// @nodoc
class __$$AccountSessionImplCopyWithImpl<$Res>
    extends _$AccountSessionCopyWithImpl<$Res, _$AccountSessionImpl>
    implements _$$AccountSessionImplCopyWith<$Res> {
  __$$AccountSessionImplCopyWithImpl(
    _$AccountSessionImpl _value,
    $Res Function(_$AccountSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientType = freezed,
    Object? createdAt = freezed,
    Object? expiresAt = freezed,
    Object? revokedAt = freezed,
    Object? current = freezed,
  }) {
    return _then(
      _$AccountSessionImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        clientType: freezed == clientType
            ? _value.clientType
            : clientType // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        expiresAt: freezed == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        revokedAt: freezed == revokedAt
            ? _value.revokedAt
            : revokedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        current: freezed == current
            ? _value.current
            : current // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountSessionImpl implements _AccountSession {
  const _$AccountSessionImpl({
    this.id,
    this.clientType,
    this.createdAt,
    this.expiresAt,
    this.revokedAt,
    this.current,
  });

  factory _$AccountSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountSessionImplFromJson(json);

  @override
  final String? id;
  @override
  final String? clientType;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? revokedAt;
  @override
  final bool? current;

  @override
  String toString() {
    return 'AccountSession(id: $id, clientType: $clientType, createdAt: $createdAt, expiresAt: $expiresAt, revokedAt: $revokedAt, current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientType, clientType) ||
                other.clientType == clientType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.revokedAt, revokedAt) ||
                other.revokedAt == revokedAt) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    clientType,
    createdAt,
    expiresAt,
    revokedAt,
    current,
  );

  /// Create a copy of AccountSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSessionImplCopyWith<_$AccountSessionImpl> get copyWith =>
      __$$AccountSessionImplCopyWithImpl<_$AccountSessionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountSessionImplToJson(this);
  }
}

abstract class _AccountSession implements AccountSession {
  const factory _AccountSession({
    final String? id,
    final String? clientType,
    final DateTime? createdAt,
    final DateTime? expiresAt,
    final DateTime? revokedAt,
    final bool? current,
  }) = _$AccountSessionImpl;

  factory _AccountSession.fromJson(Map<String, dynamic> json) =
      _$AccountSessionImpl.fromJson;

  @override
  String? get id;
  @override
  String? get clientType;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get expiresAt;
  @override
  DateTime? get revokedAt;
  @override
  bool? get current;

  /// Create a copy of AccountSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountSessionImplCopyWith<_$AccountSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
