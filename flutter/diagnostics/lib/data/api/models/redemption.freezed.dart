// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redemption.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Redemption _$RedemptionFromJson(Map<String, dynamic> json) {
  return _Redemption.fromJson(json);
}

/// @nodoc
mixin _$Redemption {
  String? get id => throw _privateConstructorUsedError;
  String? get customerPhone => throw _privateConstructorUsedError;
  String? get customerPhoneMasked => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  String? get branchId => throw _privateConstructorUsedError;
  String? get invoiceNumber => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  int? get billAmountPaise => throw _privateConstructorUsedError;
  int? get discountPaise => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;
  int? get remainingPoints => throw _privateConstructorUsedError;
  int? get remainingValuePaise => throw _privateConstructorUsedError;
  RedemptionStatus? get status => throw _privateConstructorUsedError;
  bool? get duplicateInvoice => throw _privateConstructorUsedError;
  bool? get otpRequired => throw _privateConstructorUsedError;
  DateTime? get redeemedAt => throw _privateConstructorUsedError;
  String? get reminder => throw _privateConstructorUsedError;

  /// Serializes this Redemption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Redemption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RedemptionCopyWith<Redemption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedemptionCopyWith<$Res> {
  factory $RedemptionCopyWith(
    Redemption value,
    $Res Function(Redemption) then,
  ) = _$RedemptionCopyWithImpl<$Res, Redemption>;
  @useResult
  $Res call({
    String? id,
    String? customerPhone,
    String? customerPhoneMasked,
    String? customerName,
    String? branchId,
    String? invoiceNumber,
    String? category,
    int? billAmountPaise,
    int? discountPaise,
    int? points,
    int? remainingPoints,
    int? remainingValuePaise,
    RedemptionStatus? status,
    bool? duplicateInvoice,
    bool? otpRequired,
    DateTime? redeemedAt,
    String? reminder,
  });
}

/// @nodoc
class _$RedemptionCopyWithImpl<$Res, $Val extends Redemption>
    implements $RedemptionCopyWith<$Res> {
  _$RedemptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Redemption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customerPhone = freezed,
    Object? customerPhoneMasked = freezed,
    Object? customerName = freezed,
    Object? branchId = freezed,
    Object? invoiceNumber = freezed,
    Object? category = freezed,
    Object? billAmountPaise = freezed,
    Object? discountPaise = freezed,
    Object? points = freezed,
    Object? remainingPoints = freezed,
    Object? remainingValuePaise = freezed,
    Object? status = freezed,
    Object? duplicateInvoice = freezed,
    Object? otpRequired = freezed,
    Object? redeemedAt = freezed,
    Object? reminder = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            customerPhone: freezed == customerPhone
                ? _value.customerPhone
                : customerPhone // ignore: cast_nullable_to_non_nullable
                      as String?,
            customerPhoneMasked: freezed == customerPhoneMasked
                ? _value.customerPhoneMasked
                : customerPhoneMasked // ignore: cast_nullable_to_non_nullable
                      as String?,
            customerName: freezed == customerName
                ? _value.customerName
                : customerName // ignore: cast_nullable_to_non_nullable
                      as String?,
            branchId: freezed == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as String?,
            invoiceNumber: freezed == invoiceNumber
                ? _value.invoiceNumber
                : invoiceNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String?,
            billAmountPaise: freezed == billAmountPaise
                ? _value.billAmountPaise
                : billAmountPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            discountPaise: freezed == discountPaise
                ? _value.discountPaise
                : discountPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            points: freezed == points
                ? _value.points
                : points // ignore: cast_nullable_to_non_nullable
                      as int?,
            remainingPoints: freezed == remainingPoints
                ? _value.remainingPoints
                : remainingPoints // ignore: cast_nullable_to_non_nullable
                      as int?,
            remainingValuePaise: freezed == remainingValuePaise
                ? _value.remainingValuePaise
                : remainingValuePaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as RedemptionStatus?,
            duplicateInvoice: freezed == duplicateInvoice
                ? _value.duplicateInvoice
                : duplicateInvoice // ignore: cast_nullable_to_non_nullable
                      as bool?,
            otpRequired: freezed == otpRequired
                ? _value.otpRequired
                : otpRequired // ignore: cast_nullable_to_non_nullable
                      as bool?,
            redeemedAt: freezed == redeemedAt
                ? _value.redeemedAt
                : redeemedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            reminder: freezed == reminder
                ? _value.reminder
                : reminder // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RedemptionImplCopyWith<$Res>
    implements $RedemptionCopyWith<$Res> {
  factory _$$RedemptionImplCopyWith(
    _$RedemptionImpl value,
    $Res Function(_$RedemptionImpl) then,
  ) = __$$RedemptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? customerPhone,
    String? customerPhoneMasked,
    String? customerName,
    String? branchId,
    String? invoiceNumber,
    String? category,
    int? billAmountPaise,
    int? discountPaise,
    int? points,
    int? remainingPoints,
    int? remainingValuePaise,
    RedemptionStatus? status,
    bool? duplicateInvoice,
    bool? otpRequired,
    DateTime? redeemedAt,
    String? reminder,
  });
}

/// @nodoc
class __$$RedemptionImplCopyWithImpl<$Res>
    extends _$RedemptionCopyWithImpl<$Res, _$RedemptionImpl>
    implements _$$RedemptionImplCopyWith<$Res> {
  __$$RedemptionImplCopyWithImpl(
    _$RedemptionImpl _value,
    $Res Function(_$RedemptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Redemption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customerPhone = freezed,
    Object? customerPhoneMasked = freezed,
    Object? customerName = freezed,
    Object? branchId = freezed,
    Object? invoiceNumber = freezed,
    Object? category = freezed,
    Object? billAmountPaise = freezed,
    Object? discountPaise = freezed,
    Object? points = freezed,
    Object? remainingPoints = freezed,
    Object? remainingValuePaise = freezed,
    Object? status = freezed,
    Object? duplicateInvoice = freezed,
    Object? otpRequired = freezed,
    Object? redeemedAt = freezed,
    Object? reminder = freezed,
  }) {
    return _then(
      _$RedemptionImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        customerPhone: freezed == customerPhone
            ? _value.customerPhone
            : customerPhone // ignore: cast_nullable_to_non_nullable
                  as String?,
        customerPhoneMasked: freezed == customerPhoneMasked
            ? _value.customerPhoneMasked
            : customerPhoneMasked // ignore: cast_nullable_to_non_nullable
                  as String?,
        customerName: freezed == customerName
            ? _value.customerName
            : customerName // ignore: cast_nullable_to_non_nullable
                  as String?,
        branchId: freezed == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as String?,
        invoiceNumber: freezed == invoiceNumber
            ? _value.invoiceNumber
            : invoiceNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String?,
        billAmountPaise: freezed == billAmountPaise
            ? _value.billAmountPaise
            : billAmountPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        discountPaise: freezed == discountPaise
            ? _value.discountPaise
            : discountPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        points: freezed == points
            ? _value.points
            : points // ignore: cast_nullable_to_non_nullable
                  as int?,
        remainingPoints: freezed == remainingPoints
            ? _value.remainingPoints
            : remainingPoints // ignore: cast_nullable_to_non_nullable
                  as int?,
        remainingValuePaise: freezed == remainingValuePaise
            ? _value.remainingValuePaise
            : remainingValuePaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as RedemptionStatus?,
        duplicateInvoice: freezed == duplicateInvoice
            ? _value.duplicateInvoice
            : duplicateInvoice // ignore: cast_nullable_to_non_nullable
                  as bool?,
        otpRequired: freezed == otpRequired
            ? _value.otpRequired
            : otpRequired // ignore: cast_nullable_to_non_nullable
                  as bool?,
        redeemedAt: freezed == redeemedAt
            ? _value.redeemedAt
            : redeemedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        reminder: freezed == reminder
            ? _value.reminder
            : reminder // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RedemptionImpl implements _Redemption {
  const _$RedemptionImpl({
    this.id,
    this.customerPhone,
    this.customerPhoneMasked,
    this.customerName,
    this.branchId,
    this.invoiceNumber,
    this.category,
    this.billAmountPaise,
    this.discountPaise,
    this.points,
    this.remainingPoints,
    this.remainingValuePaise,
    this.status,
    this.duplicateInvoice,
    this.otpRequired,
    this.redeemedAt,
    this.reminder,
  });

  factory _$RedemptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedemptionImplFromJson(json);

  @override
  final String? id;
  @override
  final String? customerPhone;
  @override
  final String? customerPhoneMasked;
  @override
  final String? customerName;
  @override
  final String? branchId;
  @override
  final String? invoiceNumber;
  @override
  final String? category;
  @override
  final int? billAmountPaise;
  @override
  final int? discountPaise;
  @override
  final int? points;
  @override
  final int? remainingPoints;
  @override
  final int? remainingValuePaise;
  @override
  final RedemptionStatus? status;
  @override
  final bool? duplicateInvoice;
  @override
  final bool? otpRequired;
  @override
  final DateTime? redeemedAt;
  @override
  final String? reminder;

  @override
  String toString() {
    return 'Redemption(id: $id, customerPhone: $customerPhone, customerPhoneMasked: $customerPhoneMasked, customerName: $customerName, branchId: $branchId, invoiceNumber: $invoiceNumber, category: $category, billAmountPaise: $billAmountPaise, discountPaise: $discountPaise, points: $points, remainingPoints: $remainingPoints, remainingValuePaise: $remainingValuePaise, status: $status, duplicateInvoice: $duplicateInvoice, otpRequired: $otpRequired, redeemedAt: $redeemedAt, reminder: $reminder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedemptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.customerPhoneMasked, customerPhoneMasked) ||
                other.customerPhoneMasked == customerPhoneMasked) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.billAmountPaise, billAmountPaise) ||
                other.billAmountPaise == billAmountPaise) &&
            (identical(other.discountPaise, discountPaise) ||
                other.discountPaise == discountPaise) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.remainingPoints, remainingPoints) ||
                other.remainingPoints == remainingPoints) &&
            (identical(other.remainingValuePaise, remainingValuePaise) ||
                other.remainingValuePaise == remainingValuePaise) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.duplicateInvoice, duplicateInvoice) ||
                other.duplicateInvoice == duplicateInvoice) &&
            (identical(other.otpRequired, otpRequired) ||
                other.otpRequired == otpRequired) &&
            (identical(other.redeemedAt, redeemedAt) ||
                other.redeemedAt == redeemedAt) &&
            (identical(other.reminder, reminder) ||
                other.reminder == reminder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    customerPhone,
    customerPhoneMasked,
    customerName,
    branchId,
    invoiceNumber,
    category,
    billAmountPaise,
    discountPaise,
    points,
    remainingPoints,
    remainingValuePaise,
    status,
    duplicateInvoice,
    otpRequired,
    redeemedAt,
    reminder,
  );

  /// Create a copy of Redemption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedemptionImplCopyWith<_$RedemptionImpl> get copyWith =>
      __$$RedemptionImplCopyWithImpl<_$RedemptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RedemptionImplToJson(this);
  }
}

abstract class _Redemption implements Redemption {
  const factory _Redemption({
    final String? id,
    final String? customerPhone,
    final String? customerPhoneMasked,
    final String? customerName,
    final String? branchId,
    final String? invoiceNumber,
    final String? category,
    final int? billAmountPaise,
    final int? discountPaise,
    final int? points,
    final int? remainingPoints,
    final int? remainingValuePaise,
    final RedemptionStatus? status,
    final bool? duplicateInvoice,
    final bool? otpRequired,
    final DateTime? redeemedAt,
    final String? reminder,
  }) = _$RedemptionImpl;

  factory _Redemption.fromJson(Map<String, dynamic> json) =
      _$RedemptionImpl.fromJson;

  @override
  String? get id;
  @override
  String? get customerPhone;
  @override
  String? get customerPhoneMasked;
  @override
  String? get customerName;
  @override
  String? get branchId;
  @override
  String? get invoiceNumber;
  @override
  String? get category;
  @override
  int? get billAmountPaise;
  @override
  int? get discountPaise;
  @override
  int? get points;
  @override
  int? get remainingPoints;
  @override
  int? get remainingValuePaise;
  @override
  RedemptionStatus? get status;
  @override
  bool? get duplicateInvoice;
  @override
  bool? get otpRequired;
  @override
  DateTime? get redeemedAt;
  @override
  String? get reminder;

  /// Create a copy of Redemption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedemptionImplCopyWith<_$RedemptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
