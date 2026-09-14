// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_recharge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WalletRecharge _$WalletRechargeFromJson(Map<String, dynamic> json) {
  return _WalletRecharge.fromJson(json);
}

/// @nodoc
mixin _$WalletRecharge {
  String get id => throw _privateConstructorUsedError;
  String get vendorAccountId => throw _privateConstructorUsedError;
  int get amountPaise => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  WalletRechargeStatus get status => throw _privateConstructorUsedError;
  String get keyId => throw _privateConstructorUsedError;
  bool get clientAcknowledged => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;

  /// Serializes this WalletRecharge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletRecharge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletRechargeCopyWith<WalletRecharge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletRechargeCopyWith<$Res> {
  factory $WalletRechargeCopyWith(
    WalletRecharge value,
    $Res Function(WalletRecharge) then,
  ) = _$WalletRechargeCopyWithImpl<$Res, WalletRecharge>;
  @useResult
  $Res call({
    String id,
    String vendorAccountId,
    int amountPaise,
    String orderId,
    WalletRechargeStatus status,
    String keyId,
    bool clientAcknowledged,
    String? paymentId,
  });
}

/// @nodoc
class _$WalletRechargeCopyWithImpl<$Res, $Val extends WalletRecharge>
    implements $WalletRechargeCopyWith<$Res> {
  _$WalletRechargeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletRecharge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vendorAccountId = null,
    Object? amountPaise = null,
    Object? orderId = null,
    Object? status = null,
    Object? keyId = null,
    Object? clientAcknowledged = null,
    Object? paymentId = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            vendorAccountId: null == vendorAccountId
                ? _value.vendorAccountId
                : vendorAccountId // ignore: cast_nullable_to_non_nullable
                      as String,
            amountPaise: null == amountPaise
                ? _value.amountPaise
                : amountPaise // ignore: cast_nullable_to_non_nullable
                      as int,
            orderId: null == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as WalletRechargeStatus,
            keyId: null == keyId
                ? _value.keyId
                : keyId // ignore: cast_nullable_to_non_nullable
                      as String,
            clientAcknowledged: null == clientAcknowledged
                ? _value.clientAcknowledged
                : clientAcknowledged // ignore: cast_nullable_to_non_nullable
                      as bool,
            paymentId: freezed == paymentId
                ? _value.paymentId
                : paymentId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WalletRechargeImplCopyWith<$Res>
    implements $WalletRechargeCopyWith<$Res> {
  factory _$$WalletRechargeImplCopyWith(
    _$WalletRechargeImpl value,
    $Res Function(_$WalletRechargeImpl) then,
  ) = __$$WalletRechargeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String vendorAccountId,
    int amountPaise,
    String orderId,
    WalletRechargeStatus status,
    String keyId,
    bool clientAcknowledged,
    String? paymentId,
  });
}

/// @nodoc
class __$$WalletRechargeImplCopyWithImpl<$Res>
    extends _$WalletRechargeCopyWithImpl<$Res, _$WalletRechargeImpl>
    implements _$$WalletRechargeImplCopyWith<$Res> {
  __$$WalletRechargeImplCopyWithImpl(
    _$WalletRechargeImpl _value,
    $Res Function(_$WalletRechargeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalletRecharge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vendorAccountId = null,
    Object? amountPaise = null,
    Object? orderId = null,
    Object? status = null,
    Object? keyId = null,
    Object? clientAcknowledged = null,
    Object? paymentId = freezed,
  }) {
    return _then(
      _$WalletRechargeImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        vendorAccountId: null == vendorAccountId
            ? _value.vendorAccountId
            : vendorAccountId // ignore: cast_nullable_to_non_nullable
                  as String,
        amountPaise: null == amountPaise
            ? _value.amountPaise
            : amountPaise // ignore: cast_nullable_to_non_nullable
                  as int,
        orderId: null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as WalletRechargeStatus,
        keyId: null == keyId
            ? _value.keyId
            : keyId // ignore: cast_nullable_to_non_nullable
                  as String,
        clientAcknowledged: null == clientAcknowledged
            ? _value.clientAcknowledged
            : clientAcknowledged // ignore: cast_nullable_to_non_nullable
                  as bool,
        paymentId: freezed == paymentId
            ? _value.paymentId
            : paymentId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletRechargeImpl implements _WalletRecharge {
  const _$WalletRechargeImpl({
    required this.id,
    required this.vendorAccountId,
    required this.amountPaise,
    required this.orderId,
    required this.status,
    required this.keyId,
    required this.clientAcknowledged,
    this.paymentId,
  });

  factory _$WalletRechargeImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletRechargeImplFromJson(json);

  @override
  final String id;
  @override
  final String vendorAccountId;
  @override
  final int amountPaise;
  @override
  final String orderId;
  @override
  final WalletRechargeStatus status;
  @override
  final String keyId;
  @override
  final bool clientAcknowledged;
  @override
  final String? paymentId;

  @override
  String toString() {
    return 'WalletRecharge(id: $id, vendorAccountId: $vendorAccountId, amountPaise: $amountPaise, orderId: $orderId, status: $status, keyId: $keyId, clientAcknowledged: $clientAcknowledged, paymentId: $paymentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletRechargeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vendorAccountId, vendorAccountId) ||
                other.vendorAccountId == vendorAccountId) &&
            (identical(other.amountPaise, amountPaise) ||
                other.amountPaise == amountPaise) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.keyId, keyId) || other.keyId == keyId) &&
            (identical(other.clientAcknowledged, clientAcknowledged) ||
                other.clientAcknowledged == clientAcknowledged) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    vendorAccountId,
    amountPaise,
    orderId,
    status,
    keyId,
    clientAcknowledged,
    paymentId,
  );

  /// Create a copy of WalletRecharge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletRechargeImplCopyWith<_$WalletRechargeImpl> get copyWith =>
      __$$WalletRechargeImplCopyWithImpl<_$WalletRechargeImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletRechargeImplToJson(this);
  }
}

abstract class _WalletRecharge implements WalletRecharge {
  const factory _WalletRecharge({
    required final String id,
    required final String vendorAccountId,
    required final int amountPaise,
    required final String orderId,
    required final WalletRechargeStatus status,
    required final String keyId,
    required final bool clientAcknowledged,
    final String? paymentId,
  }) = _$WalletRechargeImpl;

  factory _WalletRecharge.fromJson(Map<String, dynamic> json) =
      _$WalletRechargeImpl.fromJson;

  @override
  String get id;
  @override
  String get vendorAccountId;
  @override
  int get amountPaise;
  @override
  String get orderId;
  @override
  WalletRechargeStatus get status;
  @override
  String get keyId;
  @override
  bool get clientAcknowledged;
  @override
  String? get paymentId;

  /// Create a copy of WalletRecharge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletRechargeImplCopyWith<_$WalletRechargeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
