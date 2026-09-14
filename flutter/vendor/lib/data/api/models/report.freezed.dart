// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Report _$ReportFromJson(Map<String, dynamic> json) {
  return _Report.fromJson(json);
}

/// @nodoc
mixin _$Report {
  AuctionConversion? get auctionConversion =>
      throw _privateConstructorUsedError;
  int? get acceptedValuePaise => throw _privateConstructorUsedError;
  int? get paidValuePaise => throw _privateConstructorUsedError;
  int? get pickupCount => throw _privateConstructorUsedError;
  int? get walletMovementsPaise => throw _privateConstructorUsedError;
  int? get rewardIssuedPoints => throw _privateConstructorUsedError;
  int? get rewardRedeemedPoints => throw _privateConstructorUsedError;
  BillingReconciliation? get billingReconciliation =>
      throw _privateConstructorUsedError;

  /// Serializes this Report to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res, Report>;
  @useResult
  $Res call({
    AuctionConversion? auctionConversion,
    int? acceptedValuePaise,
    int? paidValuePaise,
    int? pickupCount,
    int? walletMovementsPaise,
    int? rewardIssuedPoints,
    int? rewardRedeemedPoints,
    BillingReconciliation? billingReconciliation,
  });

  $AuctionConversionCopyWith<$Res>? get auctionConversion;
  $BillingReconciliationCopyWith<$Res>? get billingReconciliation;
}

/// @nodoc
class _$ReportCopyWithImpl<$Res, $Val extends Report>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionConversion = freezed,
    Object? acceptedValuePaise = freezed,
    Object? paidValuePaise = freezed,
    Object? pickupCount = freezed,
    Object? walletMovementsPaise = freezed,
    Object? rewardIssuedPoints = freezed,
    Object? rewardRedeemedPoints = freezed,
    Object? billingReconciliation = freezed,
  }) {
    return _then(
      _value.copyWith(
            auctionConversion: freezed == auctionConversion
                ? _value.auctionConversion
                : auctionConversion // ignore: cast_nullable_to_non_nullable
                      as AuctionConversion?,
            acceptedValuePaise: freezed == acceptedValuePaise
                ? _value.acceptedValuePaise
                : acceptedValuePaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            paidValuePaise: freezed == paidValuePaise
                ? _value.paidValuePaise
                : paidValuePaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            pickupCount: freezed == pickupCount
                ? _value.pickupCount
                : pickupCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            walletMovementsPaise: freezed == walletMovementsPaise
                ? _value.walletMovementsPaise
                : walletMovementsPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            rewardIssuedPoints: freezed == rewardIssuedPoints
                ? _value.rewardIssuedPoints
                : rewardIssuedPoints // ignore: cast_nullable_to_non_nullable
                      as int?,
            rewardRedeemedPoints: freezed == rewardRedeemedPoints
                ? _value.rewardRedeemedPoints
                : rewardRedeemedPoints // ignore: cast_nullable_to_non_nullable
                      as int?,
            billingReconciliation: freezed == billingReconciliation
                ? _value.billingReconciliation
                : billingReconciliation // ignore: cast_nullable_to_non_nullable
                      as BillingReconciliation?,
          )
          as $Val,
    );
  }

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuctionConversionCopyWith<$Res>? get auctionConversion {
    if (_value.auctionConversion == null) {
      return null;
    }

    return $AuctionConversionCopyWith<$Res>(_value.auctionConversion!, (value) {
      return _then(_value.copyWith(auctionConversion: value) as $Val);
    });
  }

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BillingReconciliationCopyWith<$Res>? get billingReconciliation {
    if (_value.billingReconciliation == null) {
      return null;
    }

    return $BillingReconciliationCopyWith<$Res>(_value.billingReconciliation!, (
      value,
    ) {
      return _then(_value.copyWith(billingReconciliation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReportImplCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$$ReportImplCopyWith(
    _$ReportImpl value,
    $Res Function(_$ReportImpl) then,
  ) = __$$ReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AuctionConversion? auctionConversion,
    int? acceptedValuePaise,
    int? paidValuePaise,
    int? pickupCount,
    int? walletMovementsPaise,
    int? rewardIssuedPoints,
    int? rewardRedeemedPoints,
    BillingReconciliation? billingReconciliation,
  });

  @override
  $AuctionConversionCopyWith<$Res>? get auctionConversion;
  @override
  $BillingReconciliationCopyWith<$Res>? get billingReconciliation;
}

/// @nodoc
class __$$ReportImplCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$ReportImpl>
    implements _$$ReportImplCopyWith<$Res> {
  __$$ReportImplCopyWithImpl(
    _$ReportImpl _value,
    $Res Function(_$ReportImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionConversion = freezed,
    Object? acceptedValuePaise = freezed,
    Object? paidValuePaise = freezed,
    Object? pickupCount = freezed,
    Object? walletMovementsPaise = freezed,
    Object? rewardIssuedPoints = freezed,
    Object? rewardRedeemedPoints = freezed,
    Object? billingReconciliation = freezed,
  }) {
    return _then(
      _$ReportImpl(
        auctionConversion: freezed == auctionConversion
            ? _value.auctionConversion
            : auctionConversion // ignore: cast_nullable_to_non_nullable
                  as AuctionConversion?,
        acceptedValuePaise: freezed == acceptedValuePaise
            ? _value.acceptedValuePaise
            : acceptedValuePaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        paidValuePaise: freezed == paidValuePaise
            ? _value.paidValuePaise
            : paidValuePaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        pickupCount: freezed == pickupCount
            ? _value.pickupCount
            : pickupCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        walletMovementsPaise: freezed == walletMovementsPaise
            ? _value.walletMovementsPaise
            : walletMovementsPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        rewardIssuedPoints: freezed == rewardIssuedPoints
            ? _value.rewardIssuedPoints
            : rewardIssuedPoints // ignore: cast_nullable_to_non_nullable
                  as int?,
        rewardRedeemedPoints: freezed == rewardRedeemedPoints
            ? _value.rewardRedeemedPoints
            : rewardRedeemedPoints // ignore: cast_nullable_to_non_nullable
                  as int?,
        billingReconciliation: freezed == billingReconciliation
            ? _value.billingReconciliation
            : billingReconciliation // ignore: cast_nullable_to_non_nullable
                  as BillingReconciliation?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportImpl implements _Report {
  const _$ReportImpl({
    this.auctionConversion,
    this.acceptedValuePaise,
    this.paidValuePaise,
    this.pickupCount,
    this.walletMovementsPaise,
    this.rewardIssuedPoints,
    this.rewardRedeemedPoints,
    this.billingReconciliation,
  });

  factory _$ReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportImplFromJson(json);

  @override
  final AuctionConversion? auctionConversion;
  @override
  final int? acceptedValuePaise;
  @override
  final int? paidValuePaise;
  @override
  final int? pickupCount;
  @override
  final int? walletMovementsPaise;
  @override
  final int? rewardIssuedPoints;
  @override
  final int? rewardRedeemedPoints;
  @override
  final BillingReconciliation? billingReconciliation;

  @override
  String toString() {
    return 'Report(auctionConversion: $auctionConversion, acceptedValuePaise: $acceptedValuePaise, paidValuePaise: $paidValuePaise, pickupCount: $pickupCount, walletMovementsPaise: $walletMovementsPaise, rewardIssuedPoints: $rewardIssuedPoints, rewardRedeemedPoints: $rewardRedeemedPoints, billingReconciliation: $billingReconciliation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportImpl &&
            (identical(other.auctionConversion, auctionConversion) ||
                other.auctionConversion == auctionConversion) &&
            (identical(other.acceptedValuePaise, acceptedValuePaise) ||
                other.acceptedValuePaise == acceptedValuePaise) &&
            (identical(other.paidValuePaise, paidValuePaise) ||
                other.paidValuePaise == paidValuePaise) &&
            (identical(other.pickupCount, pickupCount) ||
                other.pickupCount == pickupCount) &&
            (identical(other.walletMovementsPaise, walletMovementsPaise) ||
                other.walletMovementsPaise == walletMovementsPaise) &&
            (identical(other.rewardIssuedPoints, rewardIssuedPoints) ||
                other.rewardIssuedPoints == rewardIssuedPoints) &&
            (identical(other.rewardRedeemedPoints, rewardRedeemedPoints) ||
                other.rewardRedeemedPoints == rewardRedeemedPoints) &&
            (identical(other.billingReconciliation, billingReconciliation) ||
                other.billingReconciliation == billingReconciliation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    auctionConversion,
    acceptedValuePaise,
    paidValuePaise,
    pickupCount,
    walletMovementsPaise,
    rewardIssuedPoints,
    rewardRedeemedPoints,
    billingReconciliation,
  );

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      __$$ReportImplCopyWithImpl<_$ReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportImplToJson(this);
  }
}

abstract class _Report implements Report {
  const factory _Report({
    final AuctionConversion? auctionConversion,
    final int? acceptedValuePaise,
    final int? paidValuePaise,
    final int? pickupCount,
    final int? walletMovementsPaise,
    final int? rewardIssuedPoints,
    final int? rewardRedeemedPoints,
    final BillingReconciliation? billingReconciliation,
  }) = _$ReportImpl;

  factory _Report.fromJson(Map<String, dynamic> json) = _$ReportImpl.fromJson;

  @override
  AuctionConversion? get auctionConversion;
  @override
  int? get acceptedValuePaise;
  @override
  int? get paidValuePaise;
  @override
  int? get pickupCount;
  @override
  int? get walletMovementsPaise;
  @override
  int? get rewardIssuedPoints;
  @override
  int? get rewardRedeemedPoints;
  @override
  BillingReconciliation? get billingReconciliation;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
