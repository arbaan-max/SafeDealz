// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_hold.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WalletHold _$WalletHoldFromJson(Map<String, dynamic> json) {
  return _WalletHold.fromJson(json);
}

/// @nodoc
mixin _$WalletHold {
  String? get id => throw _privateConstructorUsedError;
  int? get amountPaise => throw _privateConstructorUsedError;
  WalletHoldStatus? get status => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get idempotencyKey => throw _privateConstructorUsedError;
  String? get referenceId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this WalletHold to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletHold
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletHoldCopyWith<WalletHold> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletHoldCopyWith<$Res> {
  factory $WalletHoldCopyWith(
    WalletHold value,
    $Res Function(WalletHold) then,
  ) = _$WalletHoldCopyWithImpl<$Res, WalletHold>;
  @useResult
  $Res call({
    String? id,
    int? amountPaise,
    WalletHoldStatus? status,
    String? reason,
    String? idempotencyKey,
    String? referenceId,
    DateTime? createdAt,
  });
}

/// @nodoc
class _$WalletHoldCopyWithImpl<$Res, $Val extends WalletHold>
    implements $WalletHoldCopyWith<$Res> {
  _$WalletHoldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletHold
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amountPaise = freezed,
    Object? status = freezed,
    Object? reason = freezed,
    Object? idempotencyKey = freezed,
    Object? referenceId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            amountPaise: freezed == amountPaise
                ? _value.amountPaise
                : amountPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as WalletHoldStatus?,
            reason: freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String?,
            idempotencyKey: freezed == idempotencyKey
                ? _value.idempotencyKey
                : idempotencyKey // ignore: cast_nullable_to_non_nullable
                      as String?,
            referenceId: freezed == referenceId
                ? _value.referenceId
                : referenceId // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WalletHoldImplCopyWith<$Res>
    implements $WalletHoldCopyWith<$Res> {
  factory _$$WalletHoldImplCopyWith(
    _$WalletHoldImpl value,
    $Res Function(_$WalletHoldImpl) then,
  ) = __$$WalletHoldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    int? amountPaise,
    WalletHoldStatus? status,
    String? reason,
    String? idempotencyKey,
    String? referenceId,
    DateTime? createdAt,
  });
}

/// @nodoc
class __$$WalletHoldImplCopyWithImpl<$Res>
    extends _$WalletHoldCopyWithImpl<$Res, _$WalletHoldImpl>
    implements _$$WalletHoldImplCopyWith<$Res> {
  __$$WalletHoldImplCopyWithImpl(
    _$WalletHoldImpl _value,
    $Res Function(_$WalletHoldImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalletHold
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amountPaise = freezed,
    Object? status = freezed,
    Object? reason = freezed,
    Object? idempotencyKey = freezed,
    Object? referenceId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$WalletHoldImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        amountPaise: freezed == amountPaise
            ? _value.amountPaise
            : amountPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as WalletHoldStatus?,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String?,
        idempotencyKey: freezed == idempotencyKey
            ? _value.idempotencyKey
            : idempotencyKey // ignore: cast_nullable_to_non_nullable
                  as String?,
        referenceId: freezed == referenceId
            ? _value.referenceId
            : referenceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletHoldImpl implements _WalletHold {
  const _$WalletHoldImpl({
    this.id,
    this.amountPaise,
    this.status,
    this.reason,
    this.idempotencyKey,
    this.referenceId,
    this.createdAt,
  });

  factory _$WalletHoldImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletHoldImplFromJson(json);

  @override
  final String? id;
  @override
  final int? amountPaise;
  @override
  final WalletHoldStatus? status;
  @override
  final String? reason;
  @override
  final String? idempotencyKey;
  @override
  final String? referenceId;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'WalletHold(id: $id, amountPaise: $amountPaise, status: $status, reason: $reason, idempotencyKey: $idempotencyKey, referenceId: $referenceId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletHoldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amountPaise, amountPaise) ||
                other.amountPaise == amountPaise) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.idempotencyKey, idempotencyKey) ||
                other.idempotencyKey == idempotencyKey) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    amountPaise,
    status,
    reason,
    idempotencyKey,
    referenceId,
    createdAt,
  );

  /// Create a copy of WalletHold
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletHoldImplCopyWith<_$WalletHoldImpl> get copyWith =>
      __$$WalletHoldImplCopyWithImpl<_$WalletHoldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletHoldImplToJson(this);
  }
}

abstract class _WalletHold implements WalletHold {
  const factory _WalletHold({
    final String? id,
    final int? amountPaise,
    final WalletHoldStatus? status,
    final String? reason,
    final String? idempotencyKey,
    final String? referenceId,
    final DateTime? createdAt,
  }) = _$WalletHoldImpl;

  factory _WalletHold.fromJson(Map<String, dynamic> json) =
      _$WalletHoldImpl.fromJson;

  @override
  String? get id;
  @override
  int? get amountPaise;
  @override
  WalletHoldStatus? get status;
  @override
  String? get reason;
  @override
  String? get idempotencyKey;
  @override
  String? get referenceId;
  @override
  DateTime? get createdAt;

  /// Create a copy of WalletHold
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletHoldImplCopyWith<_$WalletHoldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
