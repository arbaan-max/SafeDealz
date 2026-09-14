// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_instruction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentInstruction _$PaymentInstructionFromJson(Map<String, dynamic> json) {
  return _PaymentInstruction.fromJson(json);
}

/// @nodoc
mixin _$PaymentInstruction {
  String? get id => throw _privateConstructorUsedError;
  String? get dealId => throw _privateConstructorUsedError;
  String? get branchId => throw _privateConstructorUsedError;
  PaymentInstructionStatus? get status => throw _privateConstructorUsedError;
  int? get amountPaise => throw _privateConstructorUsedError;
  int? get feePaise => throw _privateConstructorUsedError;
  String? get beneficiaryName => throw _privateConstructorUsedError;
  String? get accountNumberMasked => throw _privateConstructorUsedError;
  String? get ifsc => throw _privateConstructorUsedError;
  String? get providerTransferId => throw _privateConstructorUsedError;
  String? get providerStatus => throw _privateConstructorUsedError;
  List<PaymentAttempt>? get attempts => throw _privateConstructorUsedError;

  /// Serializes this PaymentInstruction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentInstructionCopyWith<PaymentInstruction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentInstructionCopyWith<$Res> {
  factory $PaymentInstructionCopyWith(
    PaymentInstruction value,
    $Res Function(PaymentInstruction) then,
  ) = _$PaymentInstructionCopyWithImpl<$Res, PaymentInstruction>;
  @useResult
  $Res call({
    String? id,
    String? dealId,
    String? branchId,
    PaymentInstructionStatus? status,
    int? amountPaise,
    int? feePaise,
    String? beneficiaryName,
    String? accountNumberMasked,
    String? ifsc,
    String? providerTransferId,
    String? providerStatus,
    List<PaymentAttempt>? attempts,
  });
}

/// @nodoc
class _$PaymentInstructionCopyWithImpl<$Res, $Val extends PaymentInstruction>
    implements $PaymentInstructionCopyWith<$Res> {
  _$PaymentInstructionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dealId = freezed,
    Object? branchId = freezed,
    Object? status = freezed,
    Object? amountPaise = freezed,
    Object? feePaise = freezed,
    Object? beneficiaryName = freezed,
    Object? accountNumberMasked = freezed,
    Object? ifsc = freezed,
    Object? providerTransferId = freezed,
    Object? providerStatus = freezed,
    Object? attempts = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            dealId: freezed == dealId
                ? _value.dealId
                : dealId // ignore: cast_nullable_to_non_nullable
                      as String?,
            branchId: freezed == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as PaymentInstructionStatus?,
            amountPaise: freezed == amountPaise
                ? _value.amountPaise
                : amountPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            feePaise: freezed == feePaise
                ? _value.feePaise
                : feePaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            beneficiaryName: freezed == beneficiaryName
                ? _value.beneficiaryName
                : beneficiaryName // ignore: cast_nullable_to_non_nullable
                      as String?,
            accountNumberMasked: freezed == accountNumberMasked
                ? _value.accountNumberMasked
                : accountNumberMasked // ignore: cast_nullable_to_non_nullable
                      as String?,
            ifsc: freezed == ifsc
                ? _value.ifsc
                : ifsc // ignore: cast_nullable_to_non_nullable
                      as String?,
            providerTransferId: freezed == providerTransferId
                ? _value.providerTransferId
                : providerTransferId // ignore: cast_nullable_to_non_nullable
                      as String?,
            providerStatus: freezed == providerStatus
                ? _value.providerStatus
                : providerStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
            attempts: freezed == attempts
                ? _value.attempts
                : attempts // ignore: cast_nullable_to_non_nullable
                      as List<PaymentAttempt>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentInstructionImplCopyWith<$Res>
    implements $PaymentInstructionCopyWith<$Res> {
  factory _$$PaymentInstructionImplCopyWith(
    _$PaymentInstructionImpl value,
    $Res Function(_$PaymentInstructionImpl) then,
  ) = __$$PaymentInstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? dealId,
    String? branchId,
    PaymentInstructionStatus? status,
    int? amountPaise,
    int? feePaise,
    String? beneficiaryName,
    String? accountNumberMasked,
    String? ifsc,
    String? providerTransferId,
    String? providerStatus,
    List<PaymentAttempt>? attempts,
  });
}

/// @nodoc
class __$$PaymentInstructionImplCopyWithImpl<$Res>
    extends _$PaymentInstructionCopyWithImpl<$Res, _$PaymentInstructionImpl>
    implements _$$PaymentInstructionImplCopyWith<$Res> {
  __$$PaymentInstructionImplCopyWithImpl(
    _$PaymentInstructionImpl _value,
    $Res Function(_$PaymentInstructionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dealId = freezed,
    Object? branchId = freezed,
    Object? status = freezed,
    Object? amountPaise = freezed,
    Object? feePaise = freezed,
    Object? beneficiaryName = freezed,
    Object? accountNumberMasked = freezed,
    Object? ifsc = freezed,
    Object? providerTransferId = freezed,
    Object? providerStatus = freezed,
    Object? attempts = freezed,
  }) {
    return _then(
      _$PaymentInstructionImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        dealId: freezed == dealId
            ? _value.dealId
            : dealId // ignore: cast_nullable_to_non_nullable
                  as String?,
        branchId: freezed == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as PaymentInstructionStatus?,
        amountPaise: freezed == amountPaise
            ? _value.amountPaise
            : amountPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        feePaise: freezed == feePaise
            ? _value.feePaise
            : feePaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        beneficiaryName: freezed == beneficiaryName
            ? _value.beneficiaryName
            : beneficiaryName // ignore: cast_nullable_to_non_nullable
                  as String?,
        accountNumberMasked: freezed == accountNumberMasked
            ? _value.accountNumberMasked
            : accountNumberMasked // ignore: cast_nullable_to_non_nullable
                  as String?,
        ifsc: freezed == ifsc
            ? _value.ifsc
            : ifsc // ignore: cast_nullable_to_non_nullable
                  as String?,
        providerTransferId: freezed == providerTransferId
            ? _value.providerTransferId
            : providerTransferId // ignore: cast_nullable_to_non_nullable
                  as String?,
        providerStatus: freezed == providerStatus
            ? _value.providerStatus
            : providerStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
        attempts: freezed == attempts
            ? _value._attempts
            : attempts // ignore: cast_nullable_to_non_nullable
                  as List<PaymentAttempt>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentInstructionImpl implements _PaymentInstruction {
  const _$PaymentInstructionImpl({
    this.id,
    this.dealId,
    this.branchId,
    this.status,
    this.amountPaise,
    this.feePaise,
    this.beneficiaryName,
    this.accountNumberMasked,
    this.ifsc,
    this.providerTransferId,
    this.providerStatus,
    final List<PaymentAttempt>? attempts,
  }) : _attempts = attempts;

  factory _$PaymentInstructionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentInstructionImplFromJson(json);

  @override
  final String? id;
  @override
  final String? dealId;
  @override
  final String? branchId;
  @override
  final PaymentInstructionStatus? status;
  @override
  final int? amountPaise;
  @override
  final int? feePaise;
  @override
  final String? beneficiaryName;
  @override
  final String? accountNumberMasked;
  @override
  final String? ifsc;
  @override
  final String? providerTransferId;
  @override
  final String? providerStatus;
  final List<PaymentAttempt>? _attempts;
  @override
  List<PaymentAttempt>? get attempts {
    final value = _attempts;
    if (value == null) return null;
    if (_attempts is EqualUnmodifiableListView) return _attempts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaymentInstruction(id: $id, dealId: $dealId, branchId: $branchId, status: $status, amountPaise: $amountPaise, feePaise: $feePaise, beneficiaryName: $beneficiaryName, accountNumberMasked: $accountNumberMasked, ifsc: $ifsc, providerTransferId: $providerTransferId, providerStatus: $providerStatus, attempts: $attempts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentInstructionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dealId, dealId) || other.dealId == dealId) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.amountPaise, amountPaise) ||
                other.amountPaise == amountPaise) &&
            (identical(other.feePaise, feePaise) ||
                other.feePaise == feePaise) &&
            (identical(other.beneficiaryName, beneficiaryName) ||
                other.beneficiaryName == beneficiaryName) &&
            (identical(other.accountNumberMasked, accountNumberMasked) ||
                other.accountNumberMasked == accountNumberMasked) &&
            (identical(other.ifsc, ifsc) || other.ifsc == ifsc) &&
            (identical(other.providerTransferId, providerTransferId) ||
                other.providerTransferId == providerTransferId) &&
            (identical(other.providerStatus, providerStatus) ||
                other.providerStatus == providerStatus) &&
            const DeepCollectionEquality().equals(other._attempts, _attempts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    dealId,
    branchId,
    status,
    amountPaise,
    feePaise,
    beneficiaryName,
    accountNumberMasked,
    ifsc,
    providerTransferId,
    providerStatus,
    const DeepCollectionEquality().hash(_attempts),
  );

  /// Create a copy of PaymentInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentInstructionImplCopyWith<_$PaymentInstructionImpl> get copyWith =>
      __$$PaymentInstructionImplCopyWithImpl<_$PaymentInstructionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentInstructionImplToJson(this);
  }
}

abstract class _PaymentInstruction implements PaymentInstruction {
  const factory _PaymentInstruction({
    final String? id,
    final String? dealId,
    final String? branchId,
    final PaymentInstructionStatus? status,
    final int? amountPaise,
    final int? feePaise,
    final String? beneficiaryName,
    final String? accountNumberMasked,
    final String? ifsc,
    final String? providerTransferId,
    final String? providerStatus,
    final List<PaymentAttempt>? attempts,
  }) = _$PaymentInstructionImpl;

  factory _PaymentInstruction.fromJson(Map<String, dynamic> json) =
      _$PaymentInstructionImpl.fromJson;

  @override
  String? get id;
  @override
  String? get dealId;
  @override
  String? get branchId;
  @override
  PaymentInstructionStatus? get status;
  @override
  int? get amountPaise;
  @override
  int? get feePaise;
  @override
  String? get beneficiaryName;
  @override
  String? get accountNumberMasked;
  @override
  String? get ifsc;
  @override
  String? get providerTransferId;
  @override
  String? get providerStatus;
  @override
  List<PaymentAttempt>? get attempts;

  /// Create a copy of PaymentInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentInstructionImplCopyWith<_$PaymentInstructionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
