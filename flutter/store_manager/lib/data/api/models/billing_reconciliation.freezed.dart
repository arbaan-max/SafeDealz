// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_reconciliation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BillingReconciliation _$BillingReconciliationFromJson(
  Map<String, dynamic> json,
) {
  return _BillingReconciliation.fromJson(json);
}

/// @nodoc
mixin _$BillingReconciliation {
  int? get paidValuePaise => throw _privateConstructorUsedError;
  int? get rewardOutstandingValuePaise => throw _privateConstructorUsedError;

  /// Serializes this BillingReconciliation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BillingReconciliation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillingReconciliationCopyWith<BillingReconciliation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingReconciliationCopyWith<$Res> {
  factory $BillingReconciliationCopyWith(
    BillingReconciliation value,
    $Res Function(BillingReconciliation) then,
  ) = _$BillingReconciliationCopyWithImpl<$Res, BillingReconciliation>;
  @useResult
  $Res call({int? paidValuePaise, int? rewardOutstandingValuePaise});
}

/// @nodoc
class _$BillingReconciliationCopyWithImpl<
  $Res,
  $Val extends BillingReconciliation
>
    implements $BillingReconciliationCopyWith<$Res> {
  _$BillingReconciliationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingReconciliation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paidValuePaise = freezed,
    Object? rewardOutstandingValuePaise = freezed,
  }) {
    return _then(
      _value.copyWith(
            paidValuePaise: freezed == paidValuePaise
                ? _value.paidValuePaise
                : paidValuePaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            rewardOutstandingValuePaise: freezed == rewardOutstandingValuePaise
                ? _value.rewardOutstandingValuePaise
                : rewardOutstandingValuePaise // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BillingReconciliationImplCopyWith<$Res>
    implements $BillingReconciliationCopyWith<$Res> {
  factory _$$BillingReconciliationImplCopyWith(
    _$BillingReconciliationImpl value,
    $Res Function(_$BillingReconciliationImpl) then,
  ) = __$$BillingReconciliationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? paidValuePaise, int? rewardOutstandingValuePaise});
}

/// @nodoc
class __$$BillingReconciliationImplCopyWithImpl<$Res>
    extends
        _$BillingReconciliationCopyWithImpl<$Res, _$BillingReconciliationImpl>
    implements _$$BillingReconciliationImplCopyWith<$Res> {
  __$$BillingReconciliationImplCopyWithImpl(
    _$BillingReconciliationImpl _value,
    $Res Function(_$BillingReconciliationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BillingReconciliation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paidValuePaise = freezed,
    Object? rewardOutstandingValuePaise = freezed,
  }) {
    return _then(
      _$BillingReconciliationImpl(
        paidValuePaise: freezed == paidValuePaise
            ? _value.paidValuePaise
            : paidValuePaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        rewardOutstandingValuePaise: freezed == rewardOutstandingValuePaise
            ? _value.rewardOutstandingValuePaise
            : rewardOutstandingValuePaise // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingReconciliationImpl implements _BillingReconciliation {
  const _$BillingReconciliationImpl({
    this.paidValuePaise,
    this.rewardOutstandingValuePaise,
  });

  factory _$BillingReconciliationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingReconciliationImplFromJson(json);

  @override
  final int? paidValuePaise;
  @override
  final int? rewardOutstandingValuePaise;

  @override
  String toString() {
    return 'BillingReconciliation(paidValuePaise: $paidValuePaise, rewardOutstandingValuePaise: $rewardOutstandingValuePaise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingReconciliationImpl &&
            (identical(other.paidValuePaise, paidValuePaise) ||
                other.paidValuePaise == paidValuePaise) &&
            (identical(
                  other.rewardOutstandingValuePaise,
                  rewardOutstandingValuePaise,
                ) ||
                other.rewardOutstandingValuePaise ==
                    rewardOutstandingValuePaise));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, paidValuePaise, rewardOutstandingValuePaise);

  /// Create a copy of BillingReconciliation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingReconciliationImplCopyWith<_$BillingReconciliationImpl>
  get copyWith =>
      __$$BillingReconciliationImplCopyWithImpl<_$BillingReconciliationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingReconciliationImplToJson(this);
  }
}

abstract class _BillingReconciliation implements BillingReconciliation {
  const factory _BillingReconciliation({
    final int? paidValuePaise,
    final int? rewardOutstandingValuePaise,
  }) = _$BillingReconciliationImpl;

  factory _BillingReconciliation.fromJson(Map<String, dynamic> json) =
      _$BillingReconciliationImpl.fromJson;

  @override
  int? get paidValuePaise;
  @override
  int? get rewardOutstandingValuePaise;

  /// Create a copy of BillingReconciliation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillingReconciliationImplCopyWith<_$BillingReconciliationImpl>
  get copyWith => throw _privateConstructorUsedError;
}
