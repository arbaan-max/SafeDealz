// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VendorWallet _$VendorWalletFromJson(Map<String, dynamic> json) {
  return _VendorWallet.fromJson(json);
}

/// @nodoc
mixin _$VendorWallet {
  String? get id => throw _privateConstructorUsedError;
  String? get vendorAccountId => throw _privateConstructorUsedError;
  int? get availablePaise => throw _privateConstructorUsedError;
  int? get reservedPaise => throw _privateConstructorUsedError;
  int? get processingPaise => throw _privateConstructorUsedError;
  int? get paymentsProcessingPaise => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;

  /// Serializes this VendorWallet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorWallet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorWalletCopyWith<VendorWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorWalletCopyWith<$Res> {
  factory $VendorWalletCopyWith(
    VendorWallet value,
    $Res Function(VendorWallet) then,
  ) = _$VendorWalletCopyWithImpl<$Res, VendorWallet>;
  @useResult
  $Res call({
    String? id,
    String? vendorAccountId,
    int? availablePaise,
    int? reservedPaise,
    int? processingPaise,
    int? paymentsProcessingPaise,
    String? currency,
  });
}

/// @nodoc
class _$VendorWalletCopyWithImpl<$Res, $Val extends VendorWallet>
    implements $VendorWalletCopyWith<$Res> {
  _$VendorWalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorWallet
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VendorWalletImplCopyWith<$Res>
    implements $VendorWalletCopyWith<$Res> {
  factory _$$VendorWalletImplCopyWith(
    _$VendorWalletImpl value,
    $Res Function(_$VendorWalletImpl) then,
  ) = __$$VendorWalletImplCopyWithImpl<$Res>;
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
  });
}

/// @nodoc
class __$$VendorWalletImplCopyWithImpl<$Res>
    extends _$VendorWalletCopyWithImpl<$Res, _$VendorWalletImpl>
    implements _$$VendorWalletImplCopyWith<$Res> {
  __$$VendorWalletImplCopyWithImpl(
    _$VendorWalletImpl _value,
    $Res Function(_$VendorWalletImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VendorWallet
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
  }) {
    return _then(
      _$VendorWalletImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorWalletImpl implements _VendorWallet {
  const _$VendorWalletImpl({
    this.id,
    this.vendorAccountId,
    this.availablePaise,
    this.reservedPaise,
    this.processingPaise,
    this.paymentsProcessingPaise,
    this.currency,
  });

  factory _$VendorWalletImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorWalletImplFromJson(json);

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

  @override
  String toString() {
    return 'VendorWallet(id: $id, vendorAccountId: $vendorAccountId, availablePaise: $availablePaise, reservedPaise: $reservedPaise, processingPaise: $processingPaise, paymentsProcessingPaise: $paymentsProcessingPaise, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorWalletImpl &&
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
                other.currency == currency));
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
  );

  /// Create a copy of VendorWallet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorWalletImplCopyWith<_$VendorWalletImpl> get copyWith =>
      __$$VendorWalletImplCopyWithImpl<_$VendorWalletImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorWalletImplToJson(this);
  }
}

abstract class _VendorWallet implements VendorWallet {
  const factory _VendorWallet({
    final String? id,
    final String? vendorAccountId,
    final int? availablePaise,
    final int? reservedPaise,
    final int? processingPaise,
    final int? paymentsProcessingPaise,
    final String? currency,
  }) = _$VendorWalletImpl;

  factory _VendorWallet.fromJson(Map<String, dynamic> json) =
      _$VendorWalletImpl.fromJson;

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

  /// Create a copy of VendorWallet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorWalletImplCopyWith<_$VendorWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
