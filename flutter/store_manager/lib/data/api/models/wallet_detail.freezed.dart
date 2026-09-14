// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WalletDetail _$WalletDetailFromJson(Map<String, dynamic> json) {
  return _WalletDetail.fromJson(json);
}

/// @nodoc
mixin _$WalletDetail {
  String? get id => throw _privateConstructorUsedError;
  String? get vendorAccountId => throw _privateConstructorUsedError;
  int? get availablePaise => throw _privateConstructorUsedError;
  int? get reservedPaise => throw _privateConstructorUsedError;
  int? get processingPaise => throw _privateConstructorUsedError;
  int? get paymentsProcessingPaise => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  List<WalletLedgerEntry>? get ledger => throw _privateConstructorUsedError;
  List<WalletHold>? get reservations => throw _privateConstructorUsedError;

  /// Serializes this WalletDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletDetailCopyWith<WalletDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDetailCopyWith<$Res> {
  factory $WalletDetailCopyWith(
    WalletDetail value,
    $Res Function(WalletDetail) then,
  ) = _$WalletDetailCopyWithImpl<$Res, WalletDetail>;
  @useResult
  $Res call({
    String? id,
    String? vendorAccountId,
    int? availablePaise,
    int? reservedPaise,
    int? processingPaise,
    int? paymentsProcessingPaise,
    String? currency,
    List<WalletLedgerEntry>? ledger,
    List<WalletHold>? reservations,
  });
}

/// @nodoc
class _$WalletDetailCopyWithImpl<$Res, $Val extends WalletDetail>
    implements $WalletDetailCopyWith<$Res> {
  _$WalletDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vendorAccountId = freezed,
    Object? availablePaise = freezed,
    Object? reservedPaise = freezed,
    Object? processingPaise = freezed,
    Object? paymentsProcessingPaise = freezed,
    Object? currency = freezed,
    Object? ledger = freezed,
    Object? reservations = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            vendorAccountId: freezed == vendorAccountId
                ? _value.vendorAccountId
                : vendorAccountId // ignore: cast_nullable_to_non_nullable
                      as String?,
            availablePaise: freezed == availablePaise
                ? _value.availablePaise
                : availablePaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            reservedPaise: freezed == reservedPaise
                ? _value.reservedPaise
                : reservedPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            processingPaise: freezed == processingPaise
                ? _value.processingPaise
                : processingPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            paymentsProcessingPaise: freezed == paymentsProcessingPaise
                ? _value.paymentsProcessingPaise
                : paymentsProcessingPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            currency: freezed == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String?,
            ledger: freezed == ledger
                ? _value.ledger
                : ledger // ignore: cast_nullable_to_non_nullable
                      as List<WalletLedgerEntry>?,
            reservations: freezed == reservations
                ? _value.reservations
                : reservations // ignore: cast_nullable_to_non_nullable
                      as List<WalletHold>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WalletDetailImplCopyWith<$Res>
    implements $WalletDetailCopyWith<$Res> {
  factory _$$WalletDetailImplCopyWith(
    _$WalletDetailImpl value,
    $Res Function(_$WalletDetailImpl) then,
  ) = __$$WalletDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? vendorAccountId,
    int? availablePaise,
    int? reservedPaise,
    int? processingPaise,
    int? paymentsProcessingPaise,
    String? currency,
    List<WalletLedgerEntry>? ledger,
    List<WalletHold>? reservations,
  });
}

/// @nodoc
class __$$WalletDetailImplCopyWithImpl<$Res>
    extends _$WalletDetailCopyWithImpl<$Res, _$WalletDetailImpl>
    implements _$$WalletDetailImplCopyWith<$Res> {
  __$$WalletDetailImplCopyWithImpl(
    _$WalletDetailImpl _value,
    $Res Function(_$WalletDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalletDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? vendorAccountId = freezed,
    Object? availablePaise = freezed,
    Object? reservedPaise = freezed,
    Object? processingPaise = freezed,
    Object? paymentsProcessingPaise = freezed,
    Object? currency = freezed,
    Object? ledger = freezed,
    Object? reservations = freezed,
  }) {
    return _then(
      _$WalletDetailImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        vendorAccountId: freezed == vendorAccountId
            ? _value.vendorAccountId
            : vendorAccountId // ignore: cast_nullable_to_non_nullable
                  as String?,
        availablePaise: freezed == availablePaise
            ? _value.availablePaise
            : availablePaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        reservedPaise: freezed == reservedPaise
            ? _value.reservedPaise
            : reservedPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        processingPaise: freezed == processingPaise
            ? _value.processingPaise
            : processingPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        paymentsProcessingPaise: freezed == paymentsProcessingPaise
            ? _value.paymentsProcessingPaise
            : paymentsProcessingPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        currency: freezed == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String?,
        ledger: freezed == ledger
            ? _value._ledger
            : ledger // ignore: cast_nullable_to_non_nullable
                  as List<WalletLedgerEntry>?,
        reservations: freezed == reservations
            ? _value._reservations
            : reservations // ignore: cast_nullable_to_non_nullable
                  as List<WalletHold>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletDetailImpl implements _WalletDetail {
  const _$WalletDetailImpl({
    this.id,
    this.vendorAccountId,
    this.availablePaise,
    this.reservedPaise,
    this.processingPaise,
    this.paymentsProcessingPaise,
    this.currency,
    final List<WalletLedgerEntry>? ledger,
    final List<WalletHold>? reservations,
  }) : _ledger = ledger,
       _reservations = reservations;

  factory _$WalletDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletDetailImplFromJson(json);

  @override
  final String? id;
  @override
  final String? vendorAccountId;
  @override
  final int? availablePaise;
  @override
  final int? reservedPaise;
  @override
  final int? processingPaise;
  @override
  final int? paymentsProcessingPaise;
  @override
  final String? currency;
  final List<WalletLedgerEntry>? _ledger;
  @override
  List<WalletLedgerEntry>? get ledger {
    final value = _ledger;
    if (value == null) return null;
    if (_ledger is EqualUnmodifiableListView) return _ledger;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WalletHold>? _reservations;
  @override
  List<WalletHold>? get reservations {
    final value = _reservations;
    if (value == null) return null;
    if (_reservations is EqualUnmodifiableListView) return _reservations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WalletDetail(id: $id, vendorAccountId: $vendorAccountId, availablePaise: $availablePaise, reservedPaise: $reservedPaise, processingPaise: $processingPaise, paymentsProcessingPaise: $paymentsProcessingPaise, currency: $currency, ledger: $ledger, reservations: $reservations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vendorAccountId, vendorAccountId) ||
                other.vendorAccountId == vendorAccountId) &&
            (identical(other.availablePaise, availablePaise) ||
                other.availablePaise == availablePaise) &&
            (identical(other.reservedPaise, reservedPaise) ||
                other.reservedPaise == reservedPaise) &&
            (identical(other.processingPaise, processingPaise) ||
                other.processingPaise == processingPaise) &&
            (identical(
                  other.paymentsProcessingPaise,
                  paymentsProcessingPaise,
                ) ||
                other.paymentsProcessingPaise == paymentsProcessingPaise) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality().equals(other._ledger, _ledger) &&
            const DeepCollectionEquality().equals(
              other._reservations,
              _reservations,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    vendorAccountId,
    availablePaise,
    reservedPaise,
    processingPaise,
    paymentsProcessingPaise,
    currency,
    const DeepCollectionEquality().hash(_ledger),
    const DeepCollectionEquality().hash(_reservations),
  );

  /// Create a copy of WalletDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletDetailImplCopyWith<_$WalletDetailImpl> get copyWith =>
      __$$WalletDetailImplCopyWithImpl<_$WalletDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletDetailImplToJson(this);
  }
}

abstract class _WalletDetail implements WalletDetail {
  const factory _WalletDetail({
    final String? id,
    final String? vendorAccountId,
    final int? availablePaise,
    final int? reservedPaise,
    final int? processingPaise,
    final int? paymentsProcessingPaise,
    final String? currency,
    final List<WalletLedgerEntry>? ledger,
    final List<WalletHold>? reservations,
  }) = _$WalletDetailImpl;

  factory _WalletDetail.fromJson(Map<String, dynamic> json) =
      _$WalletDetailImpl.fromJson;

  @override
  String? get id;
  @override
  String? get vendorAccountId;
  @override
  int? get availablePaise;
  @override
  int? get reservedPaise;
  @override
  int? get processingPaise;
  @override
  int? get paymentsProcessingPaise;
  @override
  String? get currency;
  @override
  List<WalletLedgerEntry>? get ledger;
  @override
  List<WalletHold>? get reservations;

  /// Create a copy of WalletDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletDetailImplCopyWith<_$WalletDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
