// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_recharge_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WalletRechargeWrite _$WalletRechargeWriteFromJson(Map<String, dynamic> json) {
  return _WalletRechargeWrite.fromJson(json);
}

/// @nodoc
mixin _$WalletRechargeWrite {
  int get amountPaise => throw _privateConstructorUsedError;
  String get idempotencyKey => throw _privateConstructorUsedError;

  /// Serializes this WalletRechargeWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletRechargeWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletRechargeWriteCopyWith<WalletRechargeWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletRechargeWriteCopyWith<$Res> {
  factory $WalletRechargeWriteCopyWith(
    WalletRechargeWrite value,
    $Res Function(WalletRechargeWrite) then,
  ) = _$WalletRechargeWriteCopyWithImpl<$Res, WalletRechargeWrite>;
  @useResult
  $Res call({int amountPaise, String idempotencyKey});
}

/// @nodoc
class _$WalletRechargeWriteCopyWithImpl<$Res, $Val extends WalletRechargeWrite>
    implements $WalletRechargeWriteCopyWith<$Res> {
  _$WalletRechargeWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletRechargeWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amountPaise = null, Object? idempotencyKey = null}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WalletRechargeWriteImplCopyWith<$Res>
    implements $WalletRechargeWriteCopyWith<$Res> {
  factory _$$WalletRechargeWriteImplCopyWith(
    _$WalletRechargeWriteImpl value,
    $Res Function(_$WalletRechargeWriteImpl) then,
  ) = __$$WalletRechargeWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amountPaise, String idempotencyKey});
}

/// @nodoc
class __$$WalletRechargeWriteImplCopyWithImpl<$Res>
    extends _$WalletRechargeWriteCopyWithImpl<$Res, _$WalletRechargeWriteImpl>
    implements _$$WalletRechargeWriteImplCopyWith<$Res> {
  __$$WalletRechargeWriteImplCopyWithImpl(
    _$WalletRechargeWriteImpl _value,
    $Res Function(_$WalletRechargeWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalletRechargeWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amountPaise = null, Object? idempotencyKey = null}) {
    return _then(
      _$WalletRechargeWriteImpl(
        amountPaise: null == amountPaise
            ? _value.amountPaise
            : amountPaise // ignore: cast_nullable_to_non_nullable
                  as int,
        idempotencyKey: null == idempotencyKey
            ? _value.idempotencyKey
            : idempotencyKey // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletRechargeWriteImpl implements _WalletRechargeWrite {
  const _$WalletRechargeWriteImpl({
    required this.amountPaise,
    required this.idempotencyKey,
  });

  factory _$WalletRechargeWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletRechargeWriteImplFromJson(json);

  @override
  final int amountPaise;
  @override
  final String idempotencyKey;

  @override
  String toString() {
    return 'WalletRechargeWrite(amountPaise: $amountPaise, idempotencyKey: $idempotencyKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletRechargeWriteImpl &&
            (identical(other.amountPaise, amountPaise) ||
                other.amountPaise == amountPaise) &&
            (identical(other.idempotencyKey, idempotencyKey) ||
                other.idempotencyKey == idempotencyKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amountPaise, idempotencyKey);

  /// Create a copy of WalletRechargeWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletRechargeWriteImplCopyWith<_$WalletRechargeWriteImpl> get copyWith =>
      __$$WalletRechargeWriteImplCopyWithImpl<_$WalletRechargeWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletRechargeWriteImplToJson(this);
  }
}

abstract class _WalletRechargeWrite implements WalletRechargeWrite {
  const factory _WalletRechargeWrite({
    required final int amountPaise,
    required final String idempotencyKey,
  }) = _$WalletRechargeWriteImpl;

  factory _WalletRechargeWrite.fromJson(Map<String, dynamic> json) =
      _$WalletRechargeWriteImpl.fromJson;

  @override
  int get amountPaise;
  @override
  String get idempotencyKey;

  /// Create a copy of WalletRechargeWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletRechargeWriteImplCopyWith<_$WalletRechargeWriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
