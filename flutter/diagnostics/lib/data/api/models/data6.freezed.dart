// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data6.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Data6 _$Data6FromJson(Map<String, dynamic> json) {
  return _Data6.fromJson(json);
}

/// @nodoc
mixin _$Data6 {
  int? get closedCount => throw _privateConstructorUsedError;
  List<AuctionRound>? get closed => throw _privateConstructorUsedError;
  int? get expiredCount => throw _privateConstructorUsedError;
  List<AuctionRound>? get expired => throw _privateConstructorUsedError;

  /// Serializes this Data6 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data6
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Data6CopyWith<Data6> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Data6CopyWith<$Res> {
  factory $Data6CopyWith(Data6 value, $Res Function(Data6) then) =
      _$Data6CopyWithImpl<$Res, Data6>;
  @useResult
  $Res call({
    int? closedCount,
    List<AuctionRound>? closed,
    int? expiredCount,
    List<AuctionRound>? expired,
  });
}

/// @nodoc
class _$Data6CopyWithImpl<$Res, $Val extends Data6>
    implements $Data6CopyWith<$Res> {
  _$Data6CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data6
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? closedCount = freezed,
    Object? closed = freezed,
    Object? expiredCount = freezed,
    Object? expired = freezed,
  }) {
    return _then(
      _value.copyWith(
            closedCount: freezed == closedCount
                ? _value.closedCount
                : closedCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            closed: freezed == closed
                ? _value.closed
                : closed // ignore: cast_nullable_to_non_nullable
                      as List<AuctionRound>?,
            expiredCount: freezed == expiredCount
                ? _value.expiredCount
                : expiredCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            expired: freezed == expired
                ? _value.expired
                : expired // ignore: cast_nullable_to_non_nullable
                      as List<AuctionRound>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Data6ImplCopyWith<$Res> implements $Data6CopyWith<$Res> {
  factory _$$Data6ImplCopyWith(
    _$Data6Impl value,
    $Res Function(_$Data6Impl) then,
  ) = __$$Data6ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? closedCount,
    List<AuctionRound>? closed,
    int? expiredCount,
    List<AuctionRound>? expired,
  });
}

/// @nodoc
class __$$Data6ImplCopyWithImpl<$Res>
    extends _$Data6CopyWithImpl<$Res, _$Data6Impl>
    implements _$$Data6ImplCopyWith<$Res> {
  __$$Data6ImplCopyWithImpl(
    _$Data6Impl _value,
    $Res Function(_$Data6Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of Data6
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? closedCount = freezed,
    Object? closed = freezed,
    Object? expiredCount = freezed,
    Object? expired = freezed,
  }) {
    return _then(
      _$Data6Impl(
        closedCount: freezed == closedCount
            ? _value.closedCount
            : closedCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        closed: freezed == closed
            ? _value._closed
            : closed // ignore: cast_nullable_to_non_nullable
                  as List<AuctionRound>?,
        expiredCount: freezed == expiredCount
            ? _value.expiredCount
            : expiredCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        expired: freezed == expired
            ? _value._expired
            : expired // ignore: cast_nullable_to_non_nullable
                  as List<AuctionRound>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Data6Impl implements _Data6 {
  const _$Data6Impl({
    this.closedCount,
    final List<AuctionRound>? closed,
    this.expiredCount,
    final List<AuctionRound>? expired,
  }) : _closed = closed,
       _expired = expired;

  factory _$Data6Impl.fromJson(Map<String, dynamic> json) =>
      _$$Data6ImplFromJson(json);

  @override
  final int? closedCount;
  final List<AuctionRound>? _closed;
  @override
  List<AuctionRound>? get closed {
    final value = _closed;
    if (value == null) return null;
    if (_closed is EqualUnmodifiableListView) return _closed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? expiredCount;
  final List<AuctionRound>? _expired;
  @override
  List<AuctionRound>? get expired {
    final value = _expired;
    if (value == null) return null;
    if (_expired is EqualUnmodifiableListView) return _expired;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data6(closedCount: $closedCount, closed: $closed, expiredCount: $expiredCount, expired: $expired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data6Impl &&
            (identical(other.closedCount, closedCount) ||
                other.closedCount == closedCount) &&
            const DeepCollectionEquality().equals(other._closed, _closed) &&
            (identical(other.expiredCount, expiredCount) ||
                other.expiredCount == expiredCount) &&
            const DeepCollectionEquality().equals(other._expired, _expired));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    closedCount,
    const DeepCollectionEquality().hash(_closed),
    expiredCount,
    const DeepCollectionEquality().hash(_expired),
  );

  /// Create a copy of Data6
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Data6ImplCopyWith<_$Data6Impl> get copyWith =>
      __$$Data6ImplCopyWithImpl<_$Data6Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Data6ImplToJson(this);
  }
}

abstract class _Data6 implements Data6 {
  const factory _Data6({
    final int? closedCount,
    final List<AuctionRound>? closed,
    final int? expiredCount,
    final List<AuctionRound>? expired,
  }) = _$Data6Impl;

  factory _Data6.fromJson(Map<String, dynamic> json) = _$Data6Impl.fromJson;

  @override
  int? get closedCount;
  @override
  List<AuctionRound>? get closed;
  @override
  int? get expiredCount;
  @override
  List<AuctionRound>? get expired;

  /// Create a copy of Data6
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Data6ImplCopyWith<_$Data6Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
