// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_ledger_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RewardLedgerEntry _$RewardLedgerEntryFromJson(Map<String, dynamic> json) {
  return _RewardLedgerEntry.fromJson(json);
}

/// @nodoc
mixin _$RewardLedgerEntry {
  String? get id => throw _privateConstructorUsedError;
  RewardLedgerEntryType? get type => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;
  int? get valuePaise => throw _privateConstructorUsedError;
  int? get balanceAfter => throw _privateConstructorUsedError;
  String? get branchId => throw _privateConstructorUsedError;
  String? get dealId => throw _privateConstructorUsedError;
  String? get invoiceNumber => throw _privateConstructorUsedError;
  int? get policyVersion => throw _privateConstructorUsedError;
  int? get earnPointsPerHundredRupees => throw _privateConstructorUsedError;
  int? get pointValuePaise => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this RewardLedgerEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardLedgerEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardLedgerEntryCopyWith<RewardLedgerEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardLedgerEntryCopyWith<$Res> {
  factory $RewardLedgerEntryCopyWith(
    RewardLedgerEntry value,
    $Res Function(RewardLedgerEntry) then,
  ) = _$RewardLedgerEntryCopyWithImpl<$Res, RewardLedgerEntry>;
  @useResult
  $Res call({
    String? id,
    RewardLedgerEntryType? type,
    int? points,
    int? valuePaise,
    int? balanceAfter,
    String? branchId,
    String? dealId,
    String? invoiceNumber,
    int? policyVersion,
    int? earnPointsPerHundredRupees,
    int? pointValuePaise,
    String? reason,
    DateTime? createdAt,
  });
}

/// @nodoc
class _$RewardLedgerEntryCopyWithImpl<$Res, $Val extends RewardLedgerEntry>
    implements $RewardLedgerEntryCopyWith<$Res> {
  _$RewardLedgerEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardLedgerEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? points = freezed,
    Object? valuePaise = freezed,
    Object? balanceAfter = freezed,
    Object? branchId = freezed,
    Object? dealId = freezed,
    Object? invoiceNumber = freezed,
    Object? policyVersion = freezed,
    Object? earnPointsPerHundredRupees = freezed,
    Object? pointValuePaise = freezed,
    Object? reason = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as RewardLedgerEntryType?,
            points: freezed == points
                ? _value.points
                : points // ignore: cast_nullable_to_non_nullable
                      as int?,
            valuePaise: freezed == valuePaise
                ? _value.valuePaise
                : valuePaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            balanceAfter: freezed == balanceAfter
                ? _value.balanceAfter
                : balanceAfter // ignore: cast_nullable_to_non_nullable
                      as int?,
            branchId: freezed == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as String?,
            dealId: freezed == dealId
                ? _value.dealId
                : dealId // ignore: cast_nullable_to_non_nullable
                      as String?,
            invoiceNumber: freezed == invoiceNumber
                ? _value.invoiceNumber
                : invoiceNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            policyVersion: freezed == policyVersion
                ? _value.policyVersion
                : policyVersion // ignore: cast_nullable_to_non_nullable
                      as int?,
            earnPointsPerHundredRupees: freezed == earnPointsPerHundredRupees
                ? _value.earnPointsPerHundredRupees
                : earnPointsPerHundredRupees // ignore: cast_nullable_to_non_nullable
                      as int?,
            pointValuePaise: freezed == pointValuePaise
                ? _value.pointValuePaise
                : pointValuePaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            reason: freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RewardLedgerEntryImplCopyWith<$Res>
    implements $RewardLedgerEntryCopyWith<$Res> {
  factory _$$RewardLedgerEntryImplCopyWith(
    _$RewardLedgerEntryImpl value,
    $Res Function(_$RewardLedgerEntryImpl) then,
  ) = __$$RewardLedgerEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    RewardLedgerEntryType? type,
    int? points,
    int? valuePaise,
    int? balanceAfter,
    String? branchId,
    String? dealId,
    String? invoiceNumber,
    int? policyVersion,
    int? earnPointsPerHundredRupees,
    int? pointValuePaise,
    String? reason,
    DateTime? createdAt,
  });
}

/// @nodoc
class __$$RewardLedgerEntryImplCopyWithImpl<$Res>
    extends _$RewardLedgerEntryCopyWithImpl<$Res, _$RewardLedgerEntryImpl>
    implements _$$RewardLedgerEntryImplCopyWith<$Res> {
  __$$RewardLedgerEntryImplCopyWithImpl(
    _$RewardLedgerEntryImpl _value,
    $Res Function(_$RewardLedgerEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RewardLedgerEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? points = freezed,
    Object? valuePaise = freezed,
    Object? balanceAfter = freezed,
    Object? branchId = freezed,
    Object? dealId = freezed,
    Object? invoiceNumber = freezed,
    Object? policyVersion = freezed,
    Object? earnPointsPerHundredRupees = freezed,
    Object? pointValuePaise = freezed,
    Object? reason = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$RewardLedgerEntryImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as RewardLedgerEntryType?,
        points: freezed == points
            ? _value.points
            : points // ignore: cast_nullable_to_non_nullable
                  as int?,
        valuePaise: freezed == valuePaise
            ? _value.valuePaise
            : valuePaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        balanceAfter: freezed == balanceAfter
            ? _value.balanceAfter
            : balanceAfter // ignore: cast_nullable_to_non_nullable
                  as int?,
        branchId: freezed == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as String?,
        dealId: freezed == dealId
            ? _value.dealId
            : dealId // ignore: cast_nullable_to_non_nullable
                  as String?,
        invoiceNumber: freezed == invoiceNumber
            ? _value.invoiceNumber
            : invoiceNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        policyVersion: freezed == policyVersion
            ? _value.policyVersion
            : policyVersion // ignore: cast_nullable_to_non_nullable
                  as int?,
        earnPointsPerHundredRupees: freezed == earnPointsPerHundredRupees
            ? _value.earnPointsPerHundredRupees
            : earnPointsPerHundredRupees // ignore: cast_nullable_to_non_nullable
                  as int?,
        pointValuePaise: freezed == pointValuePaise
            ? _value.pointValuePaise
            : pointValuePaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
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
class _$RewardLedgerEntryImpl implements _RewardLedgerEntry {
  const _$RewardLedgerEntryImpl({
    this.id,
    this.type,
    this.points,
    this.valuePaise,
    this.balanceAfter,
    this.branchId,
    this.dealId,
    this.invoiceNumber,
    this.policyVersion,
    this.earnPointsPerHundredRupees,
    this.pointValuePaise,
    this.reason,
    this.createdAt,
  });

  factory _$RewardLedgerEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardLedgerEntryImplFromJson(json);

  @override
  final String? id;
  @override
  final RewardLedgerEntryType? type;
  @override
  final int? points;
  @override
  final int? valuePaise;
  @override
  final int? balanceAfter;
  @override
  final String? branchId;
  @override
  final String? dealId;
  @override
  final String? invoiceNumber;
  @override
  final int? policyVersion;
  @override
  final int? earnPointsPerHundredRupees;
  @override
  final int? pointValuePaise;
  @override
  final String? reason;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'RewardLedgerEntry(id: $id, type: $type, points: $points, valuePaise: $valuePaise, balanceAfter: $balanceAfter, branchId: $branchId, dealId: $dealId, invoiceNumber: $invoiceNumber, policyVersion: $policyVersion, earnPointsPerHundredRupees: $earnPointsPerHundredRupees, pointValuePaise: $pointValuePaise, reason: $reason, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardLedgerEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.valuePaise, valuePaise) ||
                other.valuePaise == valuePaise) &&
            (identical(other.balanceAfter, balanceAfter) ||
                other.balanceAfter == balanceAfter) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.dealId, dealId) || other.dealId == dealId) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.policyVersion, policyVersion) ||
                other.policyVersion == policyVersion) &&
            (identical(
                  other.earnPointsPerHundredRupees,
                  earnPointsPerHundredRupees,
                ) ||
                other.earnPointsPerHundredRupees ==
                    earnPointsPerHundredRupees) &&
            (identical(other.pointValuePaise, pointValuePaise) ||
                other.pointValuePaise == pointValuePaise) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    type,
    points,
    valuePaise,
    balanceAfter,
    branchId,
    dealId,
    invoiceNumber,
    policyVersion,
    earnPointsPerHundredRupees,
    pointValuePaise,
    reason,
    createdAt,
  );

  /// Create a copy of RewardLedgerEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardLedgerEntryImplCopyWith<_$RewardLedgerEntryImpl> get copyWith =>
      __$$RewardLedgerEntryImplCopyWithImpl<_$RewardLedgerEntryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardLedgerEntryImplToJson(this);
  }
}

abstract class _RewardLedgerEntry implements RewardLedgerEntry {
  const factory _RewardLedgerEntry({
    final String? id,
    final RewardLedgerEntryType? type,
    final int? points,
    final int? valuePaise,
    final int? balanceAfter,
    final String? branchId,
    final String? dealId,
    final String? invoiceNumber,
    final int? policyVersion,
    final int? earnPointsPerHundredRupees,
    final int? pointValuePaise,
    final String? reason,
    final DateTime? createdAt,
  }) = _$RewardLedgerEntryImpl;

  factory _RewardLedgerEntry.fromJson(Map<String, dynamic> json) =
      _$RewardLedgerEntryImpl.fromJson;

  @override
  String? get id;
  @override
  RewardLedgerEntryType? get type;
  @override
  int? get points;
  @override
  int? get valuePaise;
  @override
  int? get balanceAfter;
  @override
  String? get branchId;
  @override
  String? get dealId;
  @override
  String? get invoiceNumber;
  @override
  int? get policyVersion;
  @override
  int? get earnPointsPerHundredRupees;
  @override
  int? get pointValuePaise;
  @override
  String? get reason;
  @override
  DateTime? get createdAt;

  /// Create a copy of RewardLedgerEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardLedgerEntryImplCopyWith<_$RewardLedgerEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
