// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_ledger_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WalletLedgerEntry _$WalletLedgerEntryFromJson(Map<String, dynamic> json) {
  return _WalletLedgerEntry.fromJson(json);
}

/// @nodoc
mixin _$WalletLedgerEntry {
  String? get id => throw _privateConstructorUsedError;
  WalletLedgerEntryType? get type => throw _privateConstructorUsedError;
  int? get amountPaise => throw _privateConstructorUsedError;
  int? get availableAfterPaise => throw _privateConstructorUsedError;
  int? get reservedAfterPaise => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get referenceId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this WalletLedgerEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletLedgerEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletLedgerEntryCopyWith<WalletLedgerEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletLedgerEntryCopyWith<$Res> {
  factory $WalletLedgerEntryCopyWith(
    WalletLedgerEntry value,
    $Res Function(WalletLedgerEntry) then,
  ) = _$WalletLedgerEntryCopyWithImpl<$Res, WalletLedgerEntry>;
  @useResult
  $Res call({
    String? id,
    WalletLedgerEntryType? type,
    int? amountPaise,
    int? availableAfterPaise,
    int? reservedAfterPaise,
    String? reason,
    String? referenceId,
    DateTime? createdAt,
  });
}

/// @nodoc
class _$WalletLedgerEntryCopyWithImpl<$Res, $Val extends WalletLedgerEntry>
    implements $WalletLedgerEntryCopyWith<$Res> {
  _$WalletLedgerEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletLedgerEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? amountPaise = freezed,
    Object? availableAfterPaise = freezed,
    Object? reservedAfterPaise = freezed,
    Object? reason = freezed,
    Object? referenceId = freezed,
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
                      as WalletLedgerEntryType?,
            amountPaise: freezed == amountPaise
                ? _value.amountPaise
                : amountPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            availableAfterPaise: freezed == availableAfterPaise
                ? _value.availableAfterPaise
                : availableAfterPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            reservedAfterPaise: freezed == reservedAfterPaise
                ? _value.reservedAfterPaise
                : reservedAfterPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            reason: freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
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
abstract class _$$WalletLedgerEntryImplCopyWith<$Res>
    implements $WalletLedgerEntryCopyWith<$Res> {
  factory _$$WalletLedgerEntryImplCopyWith(
    _$WalletLedgerEntryImpl value,
    $Res Function(_$WalletLedgerEntryImpl) then,
  ) = __$$WalletLedgerEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    WalletLedgerEntryType? type,
    int? amountPaise,
    int? availableAfterPaise,
    int? reservedAfterPaise,
    String? reason,
    String? referenceId,
    DateTime? createdAt,
  });
}

/// @nodoc
class __$$WalletLedgerEntryImplCopyWithImpl<$Res>
    extends _$WalletLedgerEntryCopyWithImpl<$Res, _$WalletLedgerEntryImpl>
    implements _$$WalletLedgerEntryImplCopyWith<$Res> {
  __$$WalletLedgerEntryImplCopyWithImpl(
    _$WalletLedgerEntryImpl _value,
    $Res Function(_$WalletLedgerEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalletLedgerEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? amountPaise = freezed,
    Object? availableAfterPaise = freezed,
    Object? reservedAfterPaise = freezed,
    Object? reason = freezed,
    Object? referenceId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$WalletLedgerEntryImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as WalletLedgerEntryType?,
        amountPaise: freezed == amountPaise
            ? _value.amountPaise
            : amountPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        availableAfterPaise: freezed == availableAfterPaise
            ? _value.availableAfterPaise
            : availableAfterPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        reservedAfterPaise: freezed == reservedAfterPaise
            ? _value.reservedAfterPaise
            : reservedAfterPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
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
class _$WalletLedgerEntryImpl implements _WalletLedgerEntry {
  const _$WalletLedgerEntryImpl({
    this.id,
    this.type,
    this.amountPaise,
    this.availableAfterPaise,
    this.reservedAfterPaise,
    this.reason,
    this.referenceId,
    this.createdAt,
  });

  factory _$WalletLedgerEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletLedgerEntryImplFromJson(json);

  @override
  final String? id;
  @override
  final WalletLedgerEntryType? type;
  @override
  final int? amountPaise;
  @override
  final int? availableAfterPaise;
  @override
  final int? reservedAfterPaise;
  @override
  final String? reason;
  @override
  final String? referenceId;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'WalletLedgerEntry(id: $id, type: $type, amountPaise: $amountPaise, availableAfterPaise: $availableAfterPaise, reservedAfterPaise: $reservedAfterPaise, reason: $reason, referenceId: $referenceId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletLedgerEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amountPaise, amountPaise) ||
                other.amountPaise == amountPaise) &&
            (identical(other.availableAfterPaise, availableAfterPaise) ||
                other.availableAfterPaise == availableAfterPaise) &&
            (identical(other.reservedAfterPaise, reservedAfterPaise) ||
                other.reservedAfterPaise == reservedAfterPaise) &&
            (identical(other.reason, reason) || other.reason == reason) &&
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
    type,
    amountPaise,
    availableAfterPaise,
    reservedAfterPaise,
    reason,
    referenceId,
    createdAt,
  );

  /// Create a copy of WalletLedgerEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletLedgerEntryImplCopyWith<_$WalletLedgerEntryImpl> get copyWith =>
      __$$WalletLedgerEntryImplCopyWithImpl<_$WalletLedgerEntryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletLedgerEntryImplToJson(this);
  }
}

abstract class _WalletLedgerEntry implements WalletLedgerEntry {
  const factory _WalletLedgerEntry({
    final String? id,
    final WalletLedgerEntryType? type,
    final int? amountPaise,
    final int? availableAfterPaise,
    final int? reservedAfterPaise,
    final String? reason,
    final String? referenceId,
    final DateTime? createdAt,
  }) = _$WalletLedgerEntryImpl;

  factory _WalletLedgerEntry.fromJson(Map<String, dynamic> json) =
      _$WalletLedgerEntryImpl.fromJson;

  @override
  String? get id;
  @override
  WalletLedgerEntryType? get type;
  @override
  int? get amountPaise;
  @override
  int? get availableAfterPaise;
  @override
  int? get reservedAfterPaise;
  @override
  String? get reason;
  @override
  String? get referenceId;
  @override
  DateTime? get createdAt;

  /// Create a copy of WalletLedgerEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletLedgerEntryImplCopyWith<_$WalletLedgerEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
