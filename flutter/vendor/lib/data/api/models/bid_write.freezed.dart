// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BidWrite _$BidWriteFromJson(Map<String, dynamic> json) {
  return _BidWrite.fromJson(json);
}

/// @nodoc
mixin _$BidWrite {
  int get amountPaise => throw _privateConstructorUsedError;
  String get idempotencyKey => throw _privateConstructorUsedError;
  int? get basePaise => throw _privateConstructorUsedError;
  int? get cosmeticDeductionPaise => throw _privateConstructorUsedError;
  int? get batteryDeductionPaise => throw _privateConstructorUsedError;

  /// Serializes this BidWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidWriteCopyWith<BidWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidWriteCopyWith<$Res> {
  factory $BidWriteCopyWith(BidWrite value, $Res Function(BidWrite) then) =
      _$BidWriteCopyWithImpl<$Res, BidWrite>;
  @useResult
  $Res call({
    int amountPaise,
    String idempotencyKey,
    int? basePaise,
    int? cosmeticDeductionPaise,
    int? batteryDeductionPaise,
  });
}

/// @nodoc
class _$BidWriteCopyWithImpl<$Res, $Val extends BidWrite>
    implements $BidWriteCopyWith<$Res> {
  _$BidWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountPaise = null,
    Object? idempotencyKey = null,
    Object? basePaise = freezed,
    Object? cosmeticDeductionPaise = freezed,
    Object? batteryDeductionPaise = freezed,
  }) {
    return _then(
      _value.copyWith(
            amountPaise: null == amountPaise
                ? _value.amountPaise
                : amountPaise // ignore: cast_nullable_to_non_nullable
                      as int,
            idempotencyKey: null == idempotencyKey
                ? _value.idempotencyKey
                : idempotencyKey // ignore: cast_nullable_to_non_nullable
                      as String,
            basePaise: freezed == basePaise
                ? _value.basePaise
                : basePaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            cosmeticDeductionPaise: freezed == cosmeticDeductionPaise
                ? _value.cosmeticDeductionPaise
                : cosmeticDeductionPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            batteryDeductionPaise: freezed == batteryDeductionPaise
                ? _value.batteryDeductionPaise
                : batteryDeductionPaise // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BidWriteImplCopyWith<$Res>
    implements $BidWriteCopyWith<$Res> {
  factory _$$BidWriteImplCopyWith(
    _$BidWriteImpl value,
    $Res Function(_$BidWriteImpl) then,
  ) = __$$BidWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int amountPaise,
    String idempotencyKey,
    int? basePaise,
    int? cosmeticDeductionPaise,
    int? batteryDeductionPaise,
  });
}

/// @nodoc
class __$$BidWriteImplCopyWithImpl<$Res>
    extends _$BidWriteCopyWithImpl<$Res, _$BidWriteImpl>
    implements _$$BidWriteImplCopyWith<$Res> {
  __$$BidWriteImplCopyWithImpl(
    _$BidWriteImpl _value,
    $Res Function(_$BidWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BidWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountPaise = null,
    Object? idempotencyKey = null,
    Object? basePaise = freezed,
    Object? cosmeticDeductionPaise = freezed,
    Object? batteryDeductionPaise = freezed,
  }) {
    return _then(
      _$BidWriteImpl(
        amountPaise: null == amountPaise
            ? _value.amountPaise
            : amountPaise // ignore: cast_nullable_to_non_nullable
                  as int,
        idempotencyKey: null == idempotencyKey
            ? _value.idempotencyKey
            : idempotencyKey // ignore: cast_nullable_to_non_nullable
                  as String,
        basePaise: freezed == basePaise
            ? _value.basePaise
            : basePaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        cosmeticDeductionPaise: freezed == cosmeticDeductionPaise
            ? _value.cosmeticDeductionPaise
            : cosmeticDeductionPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        batteryDeductionPaise: freezed == batteryDeductionPaise
            ? _value.batteryDeductionPaise
            : batteryDeductionPaise // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BidWriteImpl implements _BidWrite {
  const _$BidWriteImpl({
    required this.amountPaise,
    required this.idempotencyKey,
    this.basePaise,
    this.cosmeticDeductionPaise,
    this.batteryDeductionPaise,
  });

  factory _$BidWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidWriteImplFromJson(json);

  @override
  final int amountPaise;
  @override
  final String idempotencyKey;
  @override
  final int? basePaise;
  @override
  final int? cosmeticDeductionPaise;
  @override
  final int? batteryDeductionPaise;

  @override
  String toString() {
    return 'BidWrite(amountPaise: $amountPaise, idempotencyKey: $idempotencyKey, basePaise: $basePaise, cosmeticDeductionPaise: $cosmeticDeductionPaise, batteryDeductionPaise: $batteryDeductionPaise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidWriteImpl &&
            (identical(other.amountPaise, amountPaise) ||
                other.amountPaise == amountPaise) &&
            (identical(other.idempotencyKey, idempotencyKey) ||
                other.idempotencyKey == idempotencyKey) &&
            (identical(other.basePaise, basePaise) ||
                other.basePaise == basePaise) &&
            (identical(other.cosmeticDeductionPaise, cosmeticDeductionPaise) ||
                other.cosmeticDeductionPaise == cosmeticDeductionPaise) &&
            (identical(other.batteryDeductionPaise, batteryDeductionPaise) ||
                other.batteryDeductionPaise == batteryDeductionPaise));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    amountPaise,
    idempotencyKey,
    basePaise,
    cosmeticDeductionPaise,
    batteryDeductionPaise,
  );

  /// Create a copy of BidWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidWriteImplCopyWith<_$BidWriteImpl> get copyWith =>
      __$$BidWriteImplCopyWithImpl<_$BidWriteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidWriteImplToJson(this);
  }
}

abstract class _BidWrite implements BidWrite {
  const factory _BidWrite({
    required final int amountPaise,
    required final String idempotencyKey,
    final int? basePaise,
    final int? cosmeticDeductionPaise,
    final int? batteryDeductionPaise,
  }) = _$BidWriteImpl;

  factory _BidWrite.fromJson(Map<String, dynamic> json) =
      _$BidWriteImpl.fromJson;

  @override
  int get amountPaise;
  @override
  String get idempotencyKey;
  @override
  int? get basePaise;
  @override
  int? get cosmeticDeductionPaise;
  @override
  int? get batteryDeductionPaise;

  /// Create a copy of BidWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidWriteImplCopyWith<_$BidWriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
