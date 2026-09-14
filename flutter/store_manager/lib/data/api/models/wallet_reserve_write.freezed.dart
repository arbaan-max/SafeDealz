// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_reserve_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WalletReserveWrite _$WalletReserveWriteFromJson(Map<String, dynamic> json) {
  return _WalletReserveWrite.fromJson(json);
}

/// @nodoc
mixin _$WalletReserveWrite {
  int get amountPaise => throw _privateConstructorUsedError;
  String get idempotencyKey => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get referenceId => throw _privateConstructorUsedError;
  String? get vendorAccountId => throw _privateConstructorUsedError;

  /// Serializes this WalletReserveWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletReserveWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletReserveWriteCopyWith<WalletReserveWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletReserveWriteCopyWith<$Res> {
  factory $WalletReserveWriteCopyWith(
    WalletReserveWrite value,
    $Res Function(WalletReserveWrite) then,
  ) = _$WalletReserveWriteCopyWithImpl<$Res, WalletReserveWrite>;
  @useResult
  $Res call({
    int amountPaise,
    String idempotencyKey,
    String? reason,
    String? referenceId,
    String? vendorAccountId,
  });
}

/// @nodoc
class _$WalletReserveWriteCopyWithImpl<$Res, $Val extends WalletReserveWrite>
    implements $WalletReserveWriteCopyWith<$Res> {
  _$WalletReserveWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletReserveWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountPaise = null,
    Object? idempotencyKey = null,
    Object? reason = freezed,
    Object? referenceId = freezed,
    Object? vendorAccountId = freezed,
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
            vendorAccountId: freezed == vendorAccountId
                ? _value.vendorAccountId
                : vendorAccountId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WalletReserveWriteImplCopyWith<$Res>
    implements $WalletReserveWriteCopyWith<$Res> {
  factory _$$WalletReserveWriteImplCopyWith(
    _$WalletReserveWriteImpl value,
    $Res Function(_$WalletReserveWriteImpl) then,
  ) = __$$WalletReserveWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int amountPaise,
    String idempotencyKey,
    String? reason,
    String? referenceId,
    String? vendorAccountId,
  });
}

/// @nodoc
class __$$WalletReserveWriteImplCopyWithImpl<$Res>
    extends _$WalletReserveWriteCopyWithImpl<$Res, _$WalletReserveWriteImpl>
    implements _$$WalletReserveWriteImplCopyWith<$Res> {
  __$$WalletReserveWriteImplCopyWithImpl(
    _$WalletReserveWriteImpl _value,
    $Res Function(_$WalletReserveWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalletReserveWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountPaise = null,
    Object? idempotencyKey = null,
    Object? reason = freezed,
    Object? referenceId = freezed,
    Object? vendorAccountId = freezed,
  }) {
    return _then(
      _$WalletReserveWriteImpl(
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
        vendorAccountId: freezed == vendorAccountId
            ? _value.vendorAccountId
            : vendorAccountId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletReserveWriteImpl implements _WalletReserveWrite {
  const _$WalletReserveWriteImpl({
    required this.amountPaise,
    required this.idempotencyKey,
    this.reason,
    this.referenceId,
    this.vendorAccountId,
  });

  factory _$WalletReserveWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletReserveWriteImplFromJson(json);

  @override
  final int amountPaise;
  @override
  final String idempotencyKey;
  @override
  final String? reason;
  @override
  final String? referenceId;
  @override
  final String? vendorAccountId;

  @override
  String toString() {
    return 'WalletReserveWrite(amountPaise: $amountPaise, idempotencyKey: $idempotencyKey, reason: $reason, referenceId: $referenceId, vendorAccountId: $vendorAccountId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletReserveWriteImpl &&
            (identical(other.amountPaise, amountPaise) ||
                other.amountPaise == amountPaise) &&
            (identical(other.idempotencyKey, idempotencyKey) ||
                other.idempotencyKey == idempotencyKey) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.vendorAccountId, vendorAccountId) ||
                other.vendorAccountId == vendorAccountId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    amountPaise,
    idempotencyKey,
    reason,
    referenceId,
    vendorAccountId,
  );

  /// Create a copy of WalletReserveWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletReserveWriteImplCopyWith<_$WalletReserveWriteImpl> get copyWith =>
      __$$WalletReserveWriteImplCopyWithImpl<_$WalletReserveWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletReserveWriteImplToJson(this);
  }
}

abstract class _WalletReserveWrite implements WalletReserveWrite {
  const factory _WalletReserveWrite({
    required final int amountPaise,
    required final String idempotencyKey,
    final String? reason,
    final String? referenceId,
    final String? vendorAccountId,
  }) = _$WalletReserveWriteImpl;

  factory _WalletReserveWrite.fromJson(Map<String, dynamic> json) =
      _$WalletReserveWriteImpl.fromJson;

  @override
  int get amountPaise;
  @override
  String get idempotencyKey;
  @override
  String? get reason;
  @override
  String? get referenceId;
  @override
  String? get vendorAccountId;

  /// Create a copy of WalletReserveWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletReserveWriteImplCopyWith<_$WalletReserveWriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
