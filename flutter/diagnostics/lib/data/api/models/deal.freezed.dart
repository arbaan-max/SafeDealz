// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Deal _$DealFromJson(Map<String, dynamic> json) {
  return _Deal.fromJson(json);
}

/// @nodoc
mixin _$Deal {
  String get id => throw _privateConstructorUsedError;
  String get auctionRoundId => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  int get amountPaise => throw _privateConstructorUsedError;
  DealStatus get status => throw _privateConstructorUsedError;
  String? get branchId => throw _privateConstructorUsedError;
  String? get vendorAccountId => throw _privateConstructorUsedError;
  String? get bidId => throw _privateConstructorUsedError;
  int? get feePaise => throw _privateConstructorUsedError;
  int? get totalPaise => throw _privateConstructorUsedError;
  PaymentInstruction? get paymentInstruction =>
      throw _privateConstructorUsedError;
  DateTime? get pickedUpAt => throw _privateConstructorUsedError;
  dynamic get branch => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  String? get customerPhone => throw _privateConstructorUsedError;
  bool? get otpVerified => throw _privateConstructorUsedError;
  bool? get idCaptured => throw _privateConstructorUsedError;
  bool? get portraitCaptured => throw _privateConstructorUsedError;
  PurchasedDevice? get purchasedDevice => throw _privateConstructorUsedError;

  /// Serializes this Deal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DealCopyWith<Deal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealCopyWith<$Res> {
  factory $DealCopyWith(Deal value, $Res Function(Deal) then) =
      _$DealCopyWithImpl<$Res, Deal>;
  @useResult
  $Res call({
    String id,
    String auctionRoundId,
    String deviceId,
    int amountPaise,
    DealStatus status,
    String? branchId,
    String? vendorAccountId,
    String? bidId,
    int? feePaise,
    int? totalPaise,
    PaymentInstruction? paymentInstruction,
    DateTime? pickedUpAt,
    dynamic branch,
    String? customerName,
    String? customerPhone,
    bool? otpVerified,
    bool? idCaptured,
    bool? portraitCaptured,
    PurchasedDevice? purchasedDevice,
  });

  $PaymentInstructionCopyWith<$Res>? get paymentInstruction;
  $PurchasedDeviceCopyWith<$Res>? get purchasedDevice;
}

/// @nodoc
class _$DealCopyWithImpl<$Res, $Val extends Deal>
    implements $DealCopyWith<$Res> {
  _$DealCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? auctionRoundId = null,
    Object? deviceId = null,
    Object? amountPaise = null,
    Object? status = null,
    Object? branchId = freezed,
    Object? vendorAccountId = freezed,
    Object? bidId = freezed,
    Object? feePaise = freezed,
    Object? totalPaise = freezed,
    Object? paymentInstruction = freezed,
    Object? pickedUpAt = freezed,
    Object? branch = freezed,
    Object? customerName = freezed,
    Object? customerPhone = freezed,
    Object? otpVerified = freezed,
    Object? idCaptured = freezed,
    Object? portraitCaptured = freezed,
    Object? purchasedDevice = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            auctionRoundId: null == auctionRoundId
                ? _value.auctionRoundId
                : auctionRoundId // ignore: cast_nullable_to_non_nullable
                      as String,
            deviceId: null == deviceId
                ? _value.deviceId
                : deviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            amountPaise: null == amountPaise
                ? _value.amountPaise
                : amountPaise // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as DealStatus,
            branchId: freezed == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as String?,
            vendorAccountId: freezed == vendorAccountId
                ? _value.vendorAccountId
                : vendorAccountId // ignore: cast_nullable_to_non_nullable
                      as String?,
            bidId: freezed == bidId
                ? _value.bidId
                : bidId // ignore: cast_nullable_to_non_nullable
                      as String?,
            feePaise: freezed == feePaise
                ? _value.feePaise
                : feePaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalPaise: freezed == totalPaise
                ? _value.totalPaise
                : totalPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            paymentInstruction: freezed == paymentInstruction
                ? _value.paymentInstruction
                : paymentInstruction // ignore: cast_nullable_to_non_nullable
                      as PaymentInstruction?,
            pickedUpAt: freezed == pickedUpAt
                ? _value.pickedUpAt
                : pickedUpAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            branch: freezed == branch
                ? _value.branch
                : branch // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            customerName: freezed == customerName
                ? _value.customerName
                : customerName // ignore: cast_nullable_to_non_nullable
                      as String?,
            customerPhone: freezed == customerPhone
                ? _value.customerPhone
                : customerPhone // ignore: cast_nullable_to_non_nullable
                      as String?,
            otpVerified: freezed == otpVerified
                ? _value.otpVerified
                : otpVerified // ignore: cast_nullable_to_non_nullable
                      as bool?,
            idCaptured: freezed == idCaptured
                ? _value.idCaptured
                : idCaptured // ignore: cast_nullable_to_non_nullable
                      as bool?,
            portraitCaptured: freezed == portraitCaptured
                ? _value.portraitCaptured
                : portraitCaptured // ignore: cast_nullable_to_non_nullable
                      as bool?,
            purchasedDevice: freezed == purchasedDevice
                ? _value.purchasedDevice
                : purchasedDevice // ignore: cast_nullable_to_non_nullable
                      as PurchasedDevice?,
          )
          as $Val,
    );
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentInstructionCopyWith<$Res>? get paymentInstruction {
    if (_value.paymentInstruction == null) {
      return null;
    }

    return $PaymentInstructionCopyWith<$Res>(_value.paymentInstruction!, (
      value,
    ) {
      return _then(_value.copyWith(paymentInstruction: value) as $Val);
    });
  }

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PurchasedDeviceCopyWith<$Res>? get purchasedDevice {
    if (_value.purchasedDevice == null) {
      return null;
    }

    return $PurchasedDeviceCopyWith<$Res>(_value.purchasedDevice!, (value) {
      return _then(_value.copyWith(purchasedDevice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DealImplCopyWith<$Res> implements $DealCopyWith<$Res> {
  factory _$$DealImplCopyWith(
    _$DealImpl value,
    $Res Function(_$DealImpl) then,
  ) = __$$DealImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String auctionRoundId,
    String deviceId,
    int amountPaise,
    DealStatus status,
    String? branchId,
    String? vendorAccountId,
    String? bidId,
    int? feePaise,
    int? totalPaise,
    PaymentInstruction? paymentInstruction,
    DateTime? pickedUpAt,
    dynamic branch,
    String? customerName,
    String? customerPhone,
    bool? otpVerified,
    bool? idCaptured,
    bool? portraitCaptured,
    PurchasedDevice? purchasedDevice,
  });

  @override
  $PaymentInstructionCopyWith<$Res>? get paymentInstruction;
  @override
  $PurchasedDeviceCopyWith<$Res>? get purchasedDevice;
}

/// @nodoc
class __$$DealImplCopyWithImpl<$Res>
    extends _$DealCopyWithImpl<$Res, _$DealImpl>
    implements _$$DealImplCopyWith<$Res> {
  __$$DealImplCopyWithImpl(_$DealImpl _value, $Res Function(_$DealImpl) _then)
    : super(_value, _then);

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? auctionRoundId = null,
    Object? deviceId = null,
    Object? amountPaise = null,
    Object? status = null,
    Object? branchId = freezed,
    Object? vendorAccountId = freezed,
    Object? bidId = freezed,
    Object? feePaise = freezed,
    Object? totalPaise = freezed,
    Object? paymentInstruction = freezed,
    Object? pickedUpAt = freezed,
    Object? branch = freezed,
    Object? customerName = freezed,
    Object? customerPhone = freezed,
    Object? otpVerified = freezed,
    Object? idCaptured = freezed,
    Object? portraitCaptured = freezed,
    Object? purchasedDevice = freezed,
  }) {
    return _then(
      _$DealImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        auctionRoundId: null == auctionRoundId
            ? _value.auctionRoundId
            : auctionRoundId // ignore: cast_nullable_to_non_nullable
                  as String,
        deviceId: null == deviceId
            ? _value.deviceId
            : deviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        amountPaise: null == amountPaise
            ? _value.amountPaise
            : amountPaise // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as DealStatus,
        branchId: freezed == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as String?,
        vendorAccountId: freezed == vendorAccountId
            ? _value.vendorAccountId
            : vendorAccountId // ignore: cast_nullable_to_non_nullable
                  as String?,
        bidId: freezed == bidId
            ? _value.bidId
            : bidId // ignore: cast_nullable_to_non_nullable
                  as String?,
        feePaise: freezed == feePaise
            ? _value.feePaise
            : feePaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalPaise: freezed == totalPaise
            ? _value.totalPaise
            : totalPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        paymentInstruction: freezed == paymentInstruction
            ? _value.paymentInstruction
            : paymentInstruction // ignore: cast_nullable_to_non_nullable
                  as PaymentInstruction?,
        pickedUpAt: freezed == pickedUpAt
            ? _value.pickedUpAt
            : pickedUpAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        branch: freezed == branch
            ? _value.branch
            : branch // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        customerName: freezed == customerName
            ? _value.customerName
            : customerName // ignore: cast_nullable_to_non_nullable
                  as String?,
        customerPhone: freezed == customerPhone
            ? _value.customerPhone
            : customerPhone // ignore: cast_nullable_to_non_nullable
                  as String?,
        otpVerified: freezed == otpVerified
            ? _value.otpVerified
            : otpVerified // ignore: cast_nullable_to_non_nullable
                  as bool?,
        idCaptured: freezed == idCaptured
            ? _value.idCaptured
            : idCaptured // ignore: cast_nullable_to_non_nullable
                  as bool?,
        portraitCaptured: freezed == portraitCaptured
            ? _value.portraitCaptured
            : portraitCaptured // ignore: cast_nullable_to_non_nullable
                  as bool?,
        purchasedDevice: freezed == purchasedDevice
            ? _value.purchasedDevice
            : purchasedDevice // ignore: cast_nullable_to_non_nullable
                  as PurchasedDevice?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DealImpl implements _Deal {
  const _$DealImpl({
    required this.id,
    required this.auctionRoundId,
    required this.deviceId,
    required this.amountPaise,
    required this.status,
    this.branchId,
    this.vendorAccountId,
    this.bidId,
    this.feePaise,
    this.totalPaise,
    this.paymentInstruction,
    this.pickedUpAt,
    this.branch,
    this.customerName,
    this.customerPhone,
    this.otpVerified,
    this.idCaptured,
    this.portraitCaptured,
    this.purchasedDevice,
  });

  factory _$DealImpl.fromJson(Map<String, dynamic> json) =>
      _$$DealImplFromJson(json);

  @override
  final String id;
  @override
  final String auctionRoundId;
  @override
  final String deviceId;
  @override
  final int amountPaise;
  @override
  final DealStatus status;
  @override
  final String? branchId;
  @override
  final String? vendorAccountId;
  @override
  final String? bidId;
  @override
  final int? feePaise;
  @override
  final int? totalPaise;
  @override
  final PaymentInstruction? paymentInstruction;
  @override
  final DateTime? pickedUpAt;
  @override
  final dynamic branch;
  @override
  final String? customerName;
  @override
  final String? customerPhone;
  @override
  final bool? otpVerified;
  @override
  final bool? idCaptured;
  @override
  final bool? portraitCaptured;
  @override
  final PurchasedDevice? purchasedDevice;

  @override
  String toString() {
    return 'Deal(id: $id, auctionRoundId: $auctionRoundId, deviceId: $deviceId, amountPaise: $amountPaise, status: $status, branchId: $branchId, vendorAccountId: $vendorAccountId, bidId: $bidId, feePaise: $feePaise, totalPaise: $totalPaise, paymentInstruction: $paymentInstruction, pickedUpAt: $pickedUpAt, branch: $branch, customerName: $customerName, customerPhone: $customerPhone, otpVerified: $otpVerified, idCaptured: $idCaptured, portraitCaptured: $portraitCaptured, purchasedDevice: $purchasedDevice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DealImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.auctionRoundId, auctionRoundId) ||
                other.auctionRoundId == auctionRoundId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.amountPaise, amountPaise) ||
                other.amountPaise == amountPaise) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.vendorAccountId, vendorAccountId) ||
                other.vendorAccountId == vendorAccountId) &&
            (identical(other.bidId, bidId) || other.bidId == bidId) &&
            (identical(other.feePaise, feePaise) ||
                other.feePaise == feePaise) &&
            (identical(other.totalPaise, totalPaise) ||
                other.totalPaise == totalPaise) &&
            (identical(other.paymentInstruction, paymentInstruction) ||
                other.paymentInstruction == paymentInstruction) &&
            (identical(other.pickedUpAt, pickedUpAt) ||
                other.pickedUpAt == pickedUpAt) &&
            const DeepCollectionEquality().equals(other.branch, branch) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.otpVerified, otpVerified) ||
                other.otpVerified == otpVerified) &&
            (identical(other.idCaptured, idCaptured) ||
                other.idCaptured == idCaptured) &&
            (identical(other.portraitCaptured, portraitCaptured) ||
                other.portraitCaptured == portraitCaptured) &&
            (identical(other.purchasedDevice, purchasedDevice) ||
                other.purchasedDevice == purchasedDevice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    auctionRoundId,
    deviceId,
    amountPaise,
    status,
    branchId,
    vendorAccountId,
    bidId,
    feePaise,
    totalPaise,
    paymentInstruction,
    pickedUpAt,
    const DeepCollectionEquality().hash(branch),
    customerName,
    customerPhone,
    otpVerified,
    idCaptured,
    portraitCaptured,
    purchasedDevice,
  ]);

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DealImplCopyWith<_$DealImpl> get copyWith =>
      __$$DealImplCopyWithImpl<_$DealImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DealImplToJson(this);
  }
}

abstract class _Deal implements Deal {
  const factory _Deal({
    required final String id,
    required final String auctionRoundId,
    required final String deviceId,
    required final int amountPaise,
    required final DealStatus status,
    final String? branchId,
    final String? vendorAccountId,
    final String? bidId,
    final int? feePaise,
    final int? totalPaise,
    final PaymentInstruction? paymentInstruction,
    final DateTime? pickedUpAt,
    final dynamic branch,
    final String? customerName,
    final String? customerPhone,
    final bool? otpVerified,
    final bool? idCaptured,
    final bool? portraitCaptured,
    final PurchasedDevice? purchasedDevice,
  }) = _$DealImpl;

  factory _Deal.fromJson(Map<String, dynamic> json) = _$DealImpl.fromJson;

  @override
  String get id;
  @override
  String get auctionRoundId;
  @override
  String get deviceId;
  @override
  int get amountPaise;
  @override
  DealStatus get status;
  @override
  String? get branchId;
  @override
  String? get vendorAccountId;
  @override
  String? get bidId;
  @override
  int? get feePaise;
  @override
  int? get totalPaise;
  @override
  PaymentInstruction? get paymentInstruction;
  @override
  DateTime? get pickedUpAt;
  @override
  dynamic get branch;
  @override
  String? get customerName;
  @override
  String? get customerPhone;
  @override
  bool? get otpVerified;
  @override
  bool? get idCaptured;
  @override
  bool? get portraitCaptured;
  @override
  PurchasedDevice? get purchasedDevice;

  /// Create a copy of Deal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DealImplCopyWith<_$DealImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
