// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_reconcile_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentReconcileWrite _$PaymentReconcileWriteFromJson(
  Map<String, dynamic> json,
) {
  return _PaymentReconcileWrite.fromJson(json);
}

/// @nodoc
mixin _$PaymentReconcileWrite {
  PaymentReconcileWriteOutcome get outcome =>
      throw _privateConstructorUsedError;

  /// Serializes this PaymentReconcileWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentReconcileWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentReconcileWriteCopyWith<PaymentReconcileWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentReconcileWriteCopyWith<$Res> {
  factory $PaymentReconcileWriteCopyWith(
    PaymentReconcileWrite value,
    $Res Function(PaymentReconcileWrite) then,
  ) = _$PaymentReconcileWriteCopyWithImpl<$Res, PaymentReconcileWrite>;
  @useResult
  $Res call({PaymentReconcileWriteOutcome outcome});
}

/// @nodoc
class _$PaymentReconcileWriteCopyWithImpl<
  $Res,
  $Val extends PaymentReconcileWrite
>
    implements $PaymentReconcileWriteCopyWith<$Res> {
  _$PaymentReconcileWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentReconcileWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? outcome = null}) {
    return _then(
      _value.copyWith(
            outcome: null == outcome
                ? _value.outcome
                : outcome // ignore: cast_nullable_to_non_nullable
                      as PaymentReconcileWriteOutcome,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentReconcileWriteImplCopyWith<$Res>
    implements $PaymentReconcileWriteCopyWith<$Res> {
  factory _$$PaymentReconcileWriteImplCopyWith(
    _$PaymentReconcileWriteImpl value,
    $Res Function(_$PaymentReconcileWriteImpl) then,
  ) = __$$PaymentReconcileWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentReconcileWriteOutcome outcome});
}

/// @nodoc
class __$$PaymentReconcileWriteImplCopyWithImpl<$Res>
    extends
        _$PaymentReconcileWriteCopyWithImpl<$Res, _$PaymentReconcileWriteImpl>
    implements _$$PaymentReconcileWriteImplCopyWith<$Res> {
  __$$PaymentReconcileWriteImplCopyWithImpl(
    _$PaymentReconcileWriteImpl _value,
    $Res Function(_$PaymentReconcileWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentReconcileWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? outcome = null}) {
    return _then(
      _$PaymentReconcileWriteImpl(
        outcome: null == outcome
            ? _value.outcome
            : outcome // ignore: cast_nullable_to_non_nullable
                  as PaymentReconcileWriteOutcome,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentReconcileWriteImpl implements _PaymentReconcileWrite {
  const _$PaymentReconcileWriteImpl({required this.outcome});

  factory _$PaymentReconcileWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentReconcileWriteImplFromJson(json);

  @override
  final PaymentReconcileWriteOutcome outcome;

  @override
  String toString() {
    return 'PaymentReconcileWrite(outcome: $outcome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentReconcileWriteImpl &&
            (identical(other.outcome, outcome) || other.outcome == outcome));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, outcome);

  /// Create a copy of PaymentReconcileWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentReconcileWriteImplCopyWith<_$PaymentReconcileWriteImpl>
  get copyWith =>
      __$$PaymentReconcileWriteImplCopyWithImpl<_$PaymentReconcileWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentReconcileWriteImplToJson(this);
  }
}

abstract class _PaymentReconcileWrite implements PaymentReconcileWrite {
  const factory _PaymentReconcileWrite({
    required final PaymentReconcileWriteOutcome outcome,
  }) = _$PaymentReconcileWriteImpl;

  factory _PaymentReconcileWrite.fromJson(Map<String, dynamic> json) =
      _$PaymentReconcileWriteImpl.fromJson;

  @override
  PaymentReconcileWriteOutcome get outcome;

  /// Create a copy of PaymentReconcileWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentReconcileWriteImplCopyWith<_$PaymentReconcileWriteImpl>
  get copyWith => throw _privateConstructorUsedError;
}
