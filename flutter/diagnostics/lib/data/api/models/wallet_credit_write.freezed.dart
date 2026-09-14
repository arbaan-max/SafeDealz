// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_credit_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WalletCreditWrite _$WalletCreditWriteFromJson(Map<String, dynamic> json) {
  return _WalletCreditWrite.fromJson(json);
}

/// @nodoc
mixin _$WalletCreditWrite {
  int get amountPaise => throw _privateConstructorUsedError;
  String get idempotencyKey => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get referenceId => throw _privateConstructorUsedError;

  /// Serializes this WalletCreditWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletCreditWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletCreditWriteCopyWith<WalletCreditWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCreditWriteCopyWith<$Res> {
  factory $WalletCreditWriteCopyWith(
    WalletCreditWrite value,
    $Res Function(WalletCreditWrite) then,
  ) = _$WalletCreditWriteCopyWithImpl<$Res, WalletCreditWrite>;
  @useResult
  $Res call({
    int amountPaise,
    String idempotencyKey,
    String? reason,
    String? referenceId,
  });
}

/// @nodoc
class _$WalletCreditWriteCopyWithImpl<$Res, $Val extends WalletCreditWrite>
    implements $WalletCreditWriteCopyWith<$Res> {
  _$WalletCreditWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletCreditWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountPaise = null,
    Object? idempotencyKey = null,
    Object? reason = freezed,
    Object? referenceId = freezed,
  }) {
    return _then(
      _value.copyWith(
            amountPaise: null == amountPaise
                ? _value.amountPaise
                : amountPaise // ignore: cast_nullable_to_non_nullable
                      as int,
            idempotencyKey: null == idempotencyKey
                ? _value.idempotencyKey
                : idempotencyKey // ignore: cast_nullable_to_non_nullable
                      as String,
            reason: freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String?,
            referenceId: freezed == referenceId
                ? _value.referenceId
                : referenceId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WalletCreditWriteImplCopyWith<$Res>
    implements $WalletCreditWriteCopyWith<$Res> {
  factory _$$WalletCreditWriteImplCopyWith(
    _$WalletCreditWriteImpl value,
    $Res Function(_$WalletCreditWriteImpl) then,
  ) = __$$WalletCreditWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int amountPaise,
    String idempotencyKey,
    String? reason,
    String? referenceId,
  });
}

/// @nodoc
class __$$WalletCreditWriteImplCopyWithImpl<$Res>
    extends _$WalletCreditWriteCopyWithImpl<$Res, _$WalletCreditWriteImpl>
    implements _$$WalletCreditWriteImplCopyWith<$Res> {
  __$$WalletCreditWriteImplCopyWithImpl(
    _$WalletCreditWriteImpl _value,
    $Res Function(_$WalletCreditWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalletCreditWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountPaise = null,
    Object? idempotencyKey = null,
    Object? reason = freezed,
    Object? referenceId = freezed,
  }) {
    return _then(
      _$WalletCreditWriteImpl(
        amountPaise: null == amountPaise
            ? _value.amountPaise
            : amountPaise // ignore: cast_nullable_to_non_nullable
                  as int,
        idempotencyKey: null == idempotencyKey
            ? _value.idempotencyKey
            : idempotencyKey // ignore: cast_nullable_to_non_nullable
                  as String,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String?,
        referenceId: freezed == referenceId
            ? _value.referenceId
            : referenceId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletCreditWriteImpl implements _WalletCreditWrite {
  const _$WalletCreditWriteImpl({
    required this.amountPaise,
    required this.idempotencyKey,
    this.reason,
    this.referenceId,
  });

  factory _$WalletCreditWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletCreditWriteImplFromJson(json);

  @override
  final int amountPaise;
  @override
  final String idempotencyKey;
  @override
  final String? reason;
  @override
  final String? referenceId;

  @override
  String toString() {
    return 'WalletCreditWrite(amountPaise: $amountPaise, idempotencyKey: $idempotencyKey, reason: $reason, referenceId: $referenceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletCreditWriteImpl &&
            (identical(other.amountPaise, amountPaise) ||
                other.amountPaise == amountPaise) &&
            (identical(other.idempotencyKey, idempotencyKey) ||
                other.idempotencyKey == idempotencyKey) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    amountPaise,
    idempotencyKey,
    reason,
    referenceId,
  );

  /// Create a copy of WalletCreditWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletCreditWriteImplCopyWith<_$WalletCreditWriteImpl> get copyWith =>
      __$$WalletCreditWriteImplCopyWithImpl<_$WalletCreditWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletCreditWriteImplToJson(this);
  }
}

abstract class _WalletCreditWrite implements WalletCreditWrite {
  const factory _WalletCreditWrite({
    required final int amountPaise,
    required final String idempotencyKey,
    final String? reason,
    final String? referenceId,
  }) = _$WalletCreditWriteImpl;

  factory _WalletCreditWrite.fromJson(Map<String, dynamic> json) =
      _$WalletCreditWriteImpl.fromJson;

  @override
  int get amountPaise;
  @override
  String get idempotencyKey;
  @override
  String? get reason;
  @override
  String? get referenceId;

  /// Create a copy of WalletCreditWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletCreditWriteImplCopyWith<_$WalletCreditWriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
