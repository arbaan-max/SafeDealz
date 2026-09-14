// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'performance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Performance _$PerformanceFromJson(Map<String, dynamic> json) {
  return _Performance.fromJson(json);
}

/// @nodoc
mixin _$Performance {
  int? get bids => throw _privateConstructorUsedError;
  int? get wins => throw _privateConstructorUsedError;
  int? get acceptedPurchases => throw _privateConstructorUsedError;
  num? get winRate => throw _privateConstructorUsedError;
  num? get averageResponseSeconds => throw _privateConstructorUsedError;
  List<PerformanceHour>? get hourly => throw _privateConstructorUsedError;

  /// Serializes this Performance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Performance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PerformanceCopyWith<Performance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformanceCopyWith<$Res> {
  factory $PerformanceCopyWith(
    Performance value,
    $Res Function(Performance) then,
  ) = _$PerformanceCopyWithImpl<$Res, Performance>;
  @useResult
  $Res call({
    int? bids,
    int? wins,
    int? acceptedPurchases,
    num? winRate,
    num? averageResponseSeconds,
    List<PerformanceHour>? hourly,
  });
}

/// @nodoc
class _$PerformanceCopyWithImpl<$Res, $Val extends Performance>
    implements $PerformanceCopyWith<$Res> {
  _$PerformanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Performance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bids = freezed,
    Object? wins = freezed,
    Object? acceptedPurchases = freezed,
    Object? winRate = freezed,
    Object? averageResponseSeconds = freezed,
    Object? hourly = freezed,
  }) {
    return _then(
      _value.copyWith(
            bids: freezed == bids
                ? _value.bids
                : bids // ignore: cast_nullable_to_non_nullable
                      as int?,
            wins: freezed == wins
                ? _value.wins
                : wins // ignore: cast_nullable_to_non_nullable
                      as int?,
            acceptedPurchases: freezed == acceptedPurchases
                ? _value.acceptedPurchases
                : acceptedPurchases // ignore: cast_nullable_to_non_nullable
                      as int?,
            winRate: freezed == winRate
                ? _value.winRate
                : winRate // ignore: cast_nullable_to_non_nullable
                      as num?,
            averageResponseSeconds: freezed == averageResponseSeconds
                ? _value.averageResponseSeconds
                : averageResponseSeconds // ignore: cast_nullable_to_non_nullable
                      as num?,
            hourly: freezed == hourly
                ? _value.hourly
                : hourly // ignore: cast_nullable_to_non_nullable
                      as List<PerformanceHour>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PerformanceImplCopyWith<$Res>
    implements $PerformanceCopyWith<$Res> {
  factory _$$PerformanceImplCopyWith(
    _$PerformanceImpl value,
    $Res Function(_$PerformanceImpl) then,
  ) = __$$PerformanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? bids,
    int? wins,
    int? acceptedPurchases,
    num? winRate,
    num? averageResponseSeconds,
    List<PerformanceHour>? hourly,
  });
}

/// @nodoc
class __$$PerformanceImplCopyWithImpl<$Res>
    extends _$PerformanceCopyWithImpl<$Res, _$PerformanceImpl>
    implements _$$PerformanceImplCopyWith<$Res> {
  __$$PerformanceImplCopyWithImpl(
    _$PerformanceImpl _value,
    $Res Function(_$PerformanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Performance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bids = freezed,
    Object? wins = freezed,
    Object? acceptedPurchases = freezed,
    Object? winRate = freezed,
    Object? averageResponseSeconds = freezed,
    Object? hourly = freezed,
  }) {
    return _then(
      _$PerformanceImpl(
        bids: freezed == bids
            ? _value.bids
            : bids // ignore: cast_nullable_to_non_nullable
                  as int?,
        wins: freezed == wins
            ? _value.wins
            : wins // ignore: cast_nullable_to_non_nullable
                  as int?,
        acceptedPurchases: freezed == acceptedPurchases
            ? _value.acceptedPurchases
            : acceptedPurchases // ignore: cast_nullable_to_non_nullable
                  as int?,
        winRate: freezed == winRate
            ? _value.winRate
            : winRate // ignore: cast_nullable_to_non_nullable
                  as num?,
        averageResponseSeconds: freezed == averageResponseSeconds
            ? _value.averageResponseSeconds
            : averageResponseSeconds // ignore: cast_nullable_to_non_nullable
                  as num?,
        hourly: freezed == hourly
            ? _value._hourly
            : hourly // ignore: cast_nullable_to_non_nullable
                  as List<PerformanceHour>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformanceImpl implements _Performance {
  const _$PerformanceImpl({
    this.bids,
    this.wins,
    this.acceptedPurchases,
    this.winRate,
    this.averageResponseSeconds,
    final List<PerformanceHour>? hourly,
  }) : _hourly = hourly;

  factory _$PerformanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformanceImplFromJson(json);

  @override
  final int? bids;
  @override
  final int? wins;
  @override
  final int? acceptedPurchases;
  @override
  final num? winRate;
  @override
  final num? averageResponseSeconds;
  final List<PerformanceHour>? _hourly;
  @override
  List<PerformanceHour>? get hourly {
    final value = _hourly;
    if (value == null) return null;
    if (_hourly is EqualUnmodifiableListView) return _hourly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Performance(bids: $bids, wins: $wins, acceptedPurchases: $acceptedPurchases, winRate: $winRate, averageResponseSeconds: $averageResponseSeconds, hourly: $hourly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformanceImpl &&
            (identical(other.bids, bids) || other.bids == bids) &&
            (identical(other.wins, wins) || other.wins == wins) &&
            (identical(other.acceptedPurchases, acceptedPurchases) ||
                other.acceptedPurchases == acceptedPurchases) &&
            (identical(other.winRate, winRate) || other.winRate == winRate) &&
            (identical(other.averageResponseSeconds, averageResponseSeconds) ||
                other.averageResponseSeconds == averageResponseSeconds) &&
            const DeepCollectionEquality().equals(other._hourly, _hourly));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    bids,
    wins,
    acceptedPurchases,
    winRate,
    averageResponseSeconds,
    const DeepCollectionEquality().hash(_hourly),
  );

  /// Create a copy of Performance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformanceImplCopyWith<_$PerformanceImpl> get copyWith =>
      __$$PerformanceImplCopyWithImpl<_$PerformanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformanceImplToJson(this);
  }
}

abstract class _Performance implements Performance {
  const factory _Performance({
    final int? bids,
    final int? wins,
    final int? acceptedPurchases,
    final num? winRate,
    final num? averageResponseSeconds,
    final List<PerformanceHour>? hourly,
  }) = _$PerformanceImpl;

  factory _Performance.fromJson(Map<String, dynamic> json) =
      _$PerformanceImpl.fromJson;

  @override
  int? get bids;
  @override
  int? get wins;
  @override
  int? get acceptedPurchases;
  @override
  num? get winRate;
  @override
  num? get averageResponseSeconds;
  @override
  List<PerformanceHour>? get hourly;

  /// Create a copy of Performance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PerformanceImplCopyWith<_$PerformanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
