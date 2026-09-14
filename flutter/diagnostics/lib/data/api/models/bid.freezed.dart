// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Bid _$BidFromJson(Map<String, dynamic> json) {
  return _Bid.fromJson(json);
}

/// @nodoc
mixin _$Bid {
  String get id => throw _privateConstructorUsedError;
  String get roundId => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get vendorAccountId => throw _privateConstructorUsedError;
  int get amountPaise => throw _privateConstructorUsedError;
  int get feePaise => throw _privateConstructorUsedError;
  int get totalPaise => throw _privateConstructorUsedError;
  BidStatus get status => throw _privateConstructorUsedError;
  num? get feeRate => throw _privateConstructorUsedError;
  int? get basePaise => throw _privateConstructorUsedError;
  int? get cosmeticDeductionPaise => throw _privateConstructorUsedError;
  int? get batteryDeductionPaise => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Bid to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidCopyWith<Bid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidCopyWith<$Res> {
  factory $BidCopyWith(Bid value, $Res Function(Bid) then) =
      _$BidCopyWithImpl<$Res, Bid>;
  @useResult
  $Res call({
    String id,
    String roundId,
    String deviceId,
    String vendorAccountId,
    int amountPaise,
    int feePaise,
    int totalPaise,
    BidStatus status,
    num? feeRate,
    int? basePaise,
    int? cosmeticDeductionPaise,
    int? batteryDeductionPaise,
    DateTime? createdAt,
  });
}

/// @nodoc
class _$BidCopyWithImpl<$Res, $Val extends Bid> implements $BidCopyWith<$Res> {
  _$BidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roundId = null,
    Object? deviceId = null,
    Object? vendorAccountId = null,
    Object? amountPaise = null,
    Object? feePaise = null,
    Object? totalPaise = null,
    Object? status = null,
    Object? feeRate = freezed,
    Object? basePaise = freezed,
    Object? cosmeticDeductionPaise = freezed,
    Object? batteryDeductionPaise = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            roundId: null == roundId
                ? _value.roundId
                : roundId // ignore: cast_nullable_to_non_nullable
                      as String,
            deviceId: null == deviceId
                ? _value.deviceId
                : deviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            vendorAccountId: null == vendorAccountId
                ? _value.vendorAccountId
                : vendorAccountId // ignore: cast_nullable_to_non_nullable
                      as String,
            amountPaise: null == amountPaise
                ? _value.amountPaise
                : amountPaise // ignore: cast_nullable_to_non_nullable
                      as int,
            feePaise: null == feePaise
                ? _value.feePaise
                : feePaise // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPaise: null == totalPaise
                ? _value.totalPaise
                : totalPaise // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as BidStatus,
            feeRate: freezed == feeRate
                ? _value.feeRate
                : feeRate // ignore: cast_nullable_to_non_nullable
                      as num?,
            basePaise: freezed == basePaise
                ? _value.basePaise
                : basePaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            cosmeticDeductionPaise: freezed == cosmeticDeductionPaise
                ? _value.cosmeticDeductionPaise
                : cosmeticDeductionPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            batteryDeductionPaise: freezed == batteryDeductionPaise
                ? _value.batteryDeductionPaise
                : batteryDeductionPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
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
abstract class _$$BidImplCopyWith<$Res> implements $BidCopyWith<$Res> {
  factory _$$BidImplCopyWith(_$BidImpl value, $Res Function(_$BidImpl) then) =
      __$$BidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String roundId,
    String deviceId,
    String vendorAccountId,
    int amountPaise,
    int feePaise,
    int totalPaise,
    BidStatus status,
    num? feeRate,
    int? basePaise,
    int? cosmeticDeductionPaise,
    int? batteryDeductionPaise,
    DateTime? createdAt,
  });
}

/// @nodoc
class __$$BidImplCopyWithImpl<$Res> extends _$BidCopyWithImpl<$Res, _$BidImpl>
    implements _$$BidImplCopyWith<$Res> {
  __$$BidImplCopyWithImpl(_$BidImpl _value, $Res Function(_$BidImpl) _then)
    : super(_value, _then);

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roundId = null,
    Object? deviceId = null,
    Object? vendorAccountId = null,
    Object? amountPaise = null,
    Object? feePaise = null,
    Object? totalPaise = null,
    Object? status = null,
    Object? feeRate = freezed,
    Object? basePaise = freezed,
    Object? cosmeticDeductionPaise = freezed,
    Object? batteryDeductionPaise = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$BidImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        roundId: null == roundId
            ? _value.roundId
            : roundId // ignore: cast_nullable_to_non_nullable
                  as String,
        deviceId: null == deviceId
            ? _value.deviceId
            : deviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        vendorAccountId: null == vendorAccountId
            ? _value.vendorAccountId
            : vendorAccountId // ignore: cast_nullable_to_non_nullable
                  as String,
        amountPaise: null == amountPaise
            ? _value.amountPaise
            : amountPaise // ignore: cast_nullable_to_non_nullable
                  as int,
        feePaise: null == feePaise
            ? _value.feePaise
            : feePaise // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPaise: null == totalPaise
            ? _value.totalPaise
            : totalPaise // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as BidStatus,
        feeRate: freezed == feeRate
            ? _value.feeRate
            : feeRate // ignore: cast_nullable_to_non_nullable
                  as num?,
        basePaise: freezed == basePaise
            ? _value.basePaise
            : basePaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        cosmeticDeductionPaise: freezed == cosmeticDeductionPaise
            ? _value.cosmeticDeductionPaise
            : cosmeticDeductionPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        batteryDeductionPaise: freezed == batteryDeductionPaise
            ? _value.batteryDeductionPaise
            : batteryDeductionPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
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
class _$BidImpl implements _Bid {
  const _$BidImpl({
    required this.id,
    required this.roundId,
    required this.deviceId,
    required this.vendorAccountId,
    required this.amountPaise,
    required this.feePaise,
    required this.totalPaise,
    required this.status,
    this.feeRate,
    this.basePaise,
    this.cosmeticDeductionPaise,
    this.batteryDeductionPaise,
    this.createdAt,
  });

  factory _$BidImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidImplFromJson(json);

  @override
  final String id;
  @override
  final String roundId;
  @override
  final String deviceId;
  @override
  final String vendorAccountId;
  @override
  final int amountPaise;
  @override
  final int feePaise;
  @override
  final int totalPaise;
  @override
  final BidStatus status;
  @override
  final num? feeRate;
  @override
  final int? basePaise;
  @override
  final int? cosmeticDeductionPaise;
  @override
  final int? batteryDeductionPaise;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Bid(id: $id, roundId: $roundId, deviceId: $deviceId, vendorAccountId: $vendorAccountId, amountPaise: $amountPaise, feePaise: $feePaise, totalPaise: $totalPaise, status: $status, feeRate: $feeRate, basePaise: $basePaise, cosmeticDeductionPaise: $cosmeticDeductionPaise, batteryDeductionPaise: $batteryDeductionPaise, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roundId, roundId) || other.roundId == roundId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.vendorAccountId, vendorAccountId) ||
                other.vendorAccountId == vendorAccountId) &&
            (identical(other.amountPaise, amountPaise) ||
                other.amountPaise == amountPaise) &&
            (identical(other.feePaise, feePaise) ||
                other.feePaise == feePaise) &&
            (identical(other.totalPaise, totalPaise) ||
                other.totalPaise == totalPaise) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.feeRate, feeRate) || other.feeRate == feeRate) &&
            (identical(other.basePaise, basePaise) ||
                other.basePaise == basePaise) &&
            (identical(other.cosmeticDeductionPaise, cosmeticDeductionPaise) ||
                other.cosmeticDeductionPaise == cosmeticDeductionPaise) &&
            (identical(other.batteryDeductionPaise, batteryDeductionPaise) ||
                other.batteryDeductionPaise == batteryDeductionPaise) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    roundId,
    deviceId,
    vendorAccountId,
    amountPaise,
    feePaise,
    totalPaise,
    status,
    feeRate,
    basePaise,
    cosmeticDeductionPaise,
    batteryDeductionPaise,
    createdAt,
  );

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidImplCopyWith<_$BidImpl> get copyWith =>
      __$$BidImplCopyWithImpl<_$BidImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidImplToJson(this);
  }
}

abstract class _Bid implements Bid {
  const factory _Bid({
    required final String id,
    required final String roundId,
    required final String deviceId,
    required final String vendorAccountId,
    required final int amountPaise,
    required final int feePaise,
    required final int totalPaise,
    required final BidStatus status,
    final num? feeRate,
    final int? basePaise,
    final int? cosmeticDeductionPaise,
    final int? batteryDeductionPaise,
    final DateTime? createdAt,
  }) = _$BidImpl;

  factory _Bid.fromJson(Map<String, dynamic> json) = _$BidImpl.fromJson;

  @override
  String get id;
  @override
  String get roundId;
  @override
  String get deviceId;
  @override
  String get vendorAccountId;
  @override
  int get amountPaise;
  @override
  int get feePaise;
  @override
  int get totalPaise;
  @override
  BidStatus get status;
  @override
  num? get feeRate;
  @override
  int? get basePaise;
  @override
  int? get cosmeticDeductionPaise;
  @override
  int? get batteryDeductionPaise;
  @override
  DateTime? get createdAt;

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidImplCopyWith<_$BidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
