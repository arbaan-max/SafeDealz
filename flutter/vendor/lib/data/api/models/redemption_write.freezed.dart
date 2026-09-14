// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redemption_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RedemptionWrite _$RedemptionWriteFromJson(Map<String, dynamic> json) {
  return _RedemptionWrite.fromJson(json);
}

/// @nodoc
mixin _$RedemptionWrite {
  String get customerPhone => throw _privateConstructorUsedError;
  String get invoiceNumber => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get billAmountPaise => throw _privateConstructorUsedError;
  int get discountPaise => throw _privateConstructorUsedError;
  String? get branchId => throw _privateConstructorUsedError;

  /// Serializes this RedemptionWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RedemptionWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RedemptionWriteCopyWith<RedemptionWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedemptionWriteCopyWith<$Res> {
  factory $RedemptionWriteCopyWith(
    RedemptionWrite value,
    $Res Function(RedemptionWrite) then,
  ) = _$RedemptionWriteCopyWithImpl<$Res, RedemptionWrite>;
  @useResult
  $Res call({
    String customerPhone,
    String invoiceNumber,
    String category,
    int billAmountPaise,
    int discountPaise,
    String? branchId,
  });
}

/// @nodoc
class _$RedemptionWriteCopyWithImpl<$Res, $Val extends RedemptionWrite>
    implements $RedemptionWriteCopyWith<$Res> {
  _$RedemptionWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RedemptionWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerPhone = null,
    Object? invoiceNumber = null,
    Object? category = null,
    Object? billAmountPaise = null,
    Object? discountPaise = null,
    Object? branchId = freezed,
  }) {
    return _then(
      _value.copyWith(
            customerPhone: null == customerPhone
                ? _value.customerPhone
                : customerPhone // ignore: cast_nullable_to_non_nullable
                      as String,
            invoiceNumber: null == invoiceNumber
                ? _value.invoiceNumber
                : invoiceNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            billAmountPaise: null == billAmountPaise
                ? _value.billAmountPaise
                : billAmountPaise // ignore: cast_nullable_to_non_nullable
                      as int,
            discountPaise: null == discountPaise
                ? _value.discountPaise
                : discountPaise // ignore: cast_nullable_to_non_nullable
                      as int,
            branchId: freezed == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RedemptionWriteImplCopyWith<$Res>
    implements $RedemptionWriteCopyWith<$Res> {
  factory _$$RedemptionWriteImplCopyWith(
    _$RedemptionWriteImpl value,
    $Res Function(_$RedemptionWriteImpl) then,
  ) = __$$RedemptionWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String customerPhone,
    String invoiceNumber,
    String category,
    int billAmountPaise,
    int discountPaise,
    String? branchId,
  });
}

/// @nodoc
class __$$RedemptionWriteImplCopyWithImpl<$Res>
    extends _$RedemptionWriteCopyWithImpl<$Res, _$RedemptionWriteImpl>
    implements _$$RedemptionWriteImplCopyWith<$Res> {
  __$$RedemptionWriteImplCopyWithImpl(
    _$RedemptionWriteImpl _value,
    $Res Function(_$RedemptionWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RedemptionWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerPhone = null,
    Object? invoiceNumber = null,
    Object? category = null,
    Object? billAmountPaise = null,
    Object? discountPaise = null,
    Object? branchId = freezed,
  }) {
    return _then(
      _$RedemptionWriteImpl(
        customerPhone: null == customerPhone
            ? _value.customerPhone
            : customerPhone // ignore: cast_nullable_to_non_nullable
                  as String,
        invoiceNumber: null == invoiceNumber
            ? _value.invoiceNumber
            : invoiceNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        billAmountPaise: null == billAmountPaise
            ? _value.billAmountPaise
            : billAmountPaise // ignore: cast_nullable_to_non_nullable
                  as int,
        discountPaise: null == discountPaise
            ? _value.discountPaise
            : discountPaise // ignore: cast_nullable_to_non_nullable
                  as int,
        branchId: freezed == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RedemptionWriteImpl implements _RedemptionWrite {
  const _$RedemptionWriteImpl({
    required this.customerPhone,
    required this.invoiceNumber,
    required this.category,
    required this.billAmountPaise,
    required this.discountPaise,
    this.branchId,
  });

  factory _$RedemptionWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedemptionWriteImplFromJson(json);

  @override
  final String customerPhone;
  @override
  final String invoiceNumber;
  @override
  final String category;
  @override
  final int billAmountPaise;
  @override
  final int discountPaise;
  @override
  final String? branchId;

  @override
  String toString() {
    return 'RedemptionWrite(customerPhone: $customerPhone, invoiceNumber: $invoiceNumber, category: $category, billAmountPaise: $billAmountPaise, discountPaise: $discountPaise, branchId: $branchId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedemptionWriteImpl &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.billAmountPaise, billAmountPaise) ||
                other.billAmountPaise == billAmountPaise) &&
            (identical(other.discountPaise, discountPaise) ||
                other.discountPaise == discountPaise) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    customerPhone,
    invoiceNumber,
    category,
    billAmountPaise,
    discountPaise,
    branchId,
  );

  /// Create a copy of RedemptionWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedemptionWriteImplCopyWith<_$RedemptionWriteImpl> get copyWith =>
      __$$RedemptionWriteImplCopyWithImpl<_$RedemptionWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RedemptionWriteImplToJson(this);
  }
}

abstract class _RedemptionWrite implements RedemptionWrite {
  const factory _RedemptionWrite({
    required final String customerPhone,
    required final String invoiceNumber,
    required final String category,
    required final int billAmountPaise,
    required final int discountPaise,
    final String? branchId,
  }) = _$RedemptionWriteImpl;

  factory _RedemptionWrite.fromJson(Map<String, dynamic> json) =
      _$RedemptionWriteImpl.fromJson;

  @override
  String get customerPhone;
  @override
  String get invoiceNumber;
  @override
  String get category;
  @override
  int get billAmountPaise;
  @override
  int get discountPaise;
  @override
  String? get branchId;

  /// Create a copy of RedemptionWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedemptionWriteImplCopyWith<_$RedemptionWriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
