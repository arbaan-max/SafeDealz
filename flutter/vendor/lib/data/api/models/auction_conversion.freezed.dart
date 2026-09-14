// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_conversion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuctionConversion _$AuctionConversionFromJson(Map<String, dynamic> json) {
  return _AuctionConversion.fromJson(json);
}

/// @nodoc
mixin _$AuctionConversion {
  int? get started => throw _privateConstructorUsedError;
  int? get accepted => throw _privateConstructorUsedError;
  num? get rate => throw _privateConstructorUsedError;

  /// Serializes this AuctionConversion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionConversion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionConversionCopyWith<AuctionConversion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionConversionCopyWith<$Res> {
  factory $AuctionConversionCopyWith(
    AuctionConversion value,
    $Res Function(AuctionConversion) then,
  ) = _$AuctionConversionCopyWithImpl<$Res, AuctionConversion>;
  @useResult
  $Res call({int? started, int? accepted, num? rate});
}

/// @nodoc
class _$AuctionConversionCopyWithImpl<$Res, $Val extends AuctionConversion>
    implements $AuctionConversionCopyWith<$Res> {
  _$AuctionConversionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionConversion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? started = freezed,
    Object? accepted = freezed,
    Object? rate = freezed,
  }) {
    return _then(
      _value.copyWith(
            started: freezed == started
                ? _value.started
                : started // ignore: cast_nullable_to_non_nullable
                      as int?,
            accepted: freezed == accepted
                ? _value.accepted
                : accepted // ignore: cast_nullable_to_non_nullable
                      as int?,
            rate: freezed == rate
                ? _value.rate
                : rate // ignore: cast_nullable_to_non_nullable
                      as num?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuctionConversionImplCopyWith<$Res>
    implements $AuctionConversionCopyWith<$Res> {
  factory _$$AuctionConversionImplCopyWith(
    _$AuctionConversionImpl value,
    $Res Function(_$AuctionConversionImpl) then,
  ) = __$$AuctionConversionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? started, int? accepted, num? rate});
}

/// @nodoc
class __$$AuctionConversionImplCopyWithImpl<$Res>
    extends _$AuctionConversionCopyWithImpl<$Res, _$AuctionConversionImpl>
    implements _$$AuctionConversionImplCopyWith<$Res> {
  __$$AuctionConversionImplCopyWithImpl(
    _$AuctionConversionImpl _value,
    $Res Function(_$AuctionConversionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionConversion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? started = freezed,
    Object? accepted = freezed,
    Object? rate = freezed,
  }) {
    return _then(
      _$AuctionConversionImpl(
        started: freezed == started
            ? _value.started
            : started // ignore: cast_nullable_to_non_nullable
                  as int?,
        accepted: freezed == accepted
            ? _value.accepted
            : accepted // ignore: cast_nullable_to_non_nullable
                  as int?,
        rate: freezed == rate
            ? _value.rate
            : rate // ignore: cast_nullable_to_non_nullable
                  as num?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionConversionImpl implements _AuctionConversion {
  const _$AuctionConversionImpl({this.started, this.accepted, this.rate});

  factory _$AuctionConversionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionConversionImplFromJson(json);

  @override
  final int? started;
  @override
  final int? accepted;
  @override
  final num? rate;

  @override
  String toString() {
    return 'AuctionConversion(started: $started, accepted: $accepted, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionConversionImpl &&
            (identical(other.started, started) || other.started == started) &&
            (identical(other.accepted, accepted) ||
                other.accepted == accepted) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, started, accepted, rate);

  /// Create a copy of AuctionConversion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionConversionImplCopyWith<_$AuctionConversionImpl> get copyWith =>
      __$$AuctionConversionImplCopyWithImpl<_$AuctionConversionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionConversionImplToJson(this);
  }
}

abstract class _AuctionConversion implements AuctionConversion {
  const factory _AuctionConversion({
    final int? started,
    final int? accepted,
    final num? rate,
  }) = _$AuctionConversionImpl;

  factory _AuctionConversion.fromJson(Map<String, dynamic> json) =
      _$AuctionConversionImpl.fromJson;

  @override
  int? get started;
  @override
  int? get accepted;
  @override
  num? get rate;

  /// Create a copy of AuctionConversion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionConversionImplCopyWith<_$AuctionConversionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
