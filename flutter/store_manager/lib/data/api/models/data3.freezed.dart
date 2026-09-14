// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Data3 _$Data3FromJson(Map<String, dynamic> json) {
  return _Data3.fromJson(json);
}

/// @nodoc
mixin _$Data3 {
  AuctionRound get previous => throw _privateConstructorUsedError;
  AuctionRound get next => throw _privateConstructorUsedError;

  /// Serializes this Data3 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Data3CopyWith<Data3> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Data3CopyWith<$Res> {
  factory $Data3CopyWith(Data3 value, $Res Function(Data3) then) =
      _$Data3CopyWithImpl<$Res, Data3>;
  @useResult
  $Res call({AuctionRound previous, AuctionRound next});

  $AuctionRoundCopyWith<$Res> get previous;
  $AuctionRoundCopyWith<$Res> get next;
}

/// @nodoc
class _$Data3CopyWithImpl<$Res, $Val extends Data3>
    implements $Data3CopyWith<$Res> {
  _$Data3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? previous = null, Object? next = null}) {
    return _then(
      _value.copyWith(
            previous: null == previous
                ? _value.previous
                : previous // ignore: cast_nullable_to_non_nullable
                      as AuctionRound,
            next: null == next
                ? _value.next
                : next // ignore: cast_nullable_to_non_nullable
                      as AuctionRound,
          )
          as $Val,
    );
  }

  /// Create a copy of Data3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuctionRoundCopyWith<$Res> get previous {
    return $AuctionRoundCopyWith<$Res>(_value.previous, (value) {
      return _then(_value.copyWith(previous: value) as $Val);
    });
  }

  /// Create a copy of Data3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuctionRoundCopyWith<$Res> get next {
    return $AuctionRoundCopyWith<$Res>(_value.next, (value) {
      return _then(_value.copyWith(next: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Data3ImplCopyWith<$Res> implements $Data3CopyWith<$Res> {
  factory _$$Data3ImplCopyWith(
    _$Data3Impl value,
    $Res Function(_$Data3Impl) then,
  ) = __$$Data3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuctionRound previous, AuctionRound next});

  @override
  $AuctionRoundCopyWith<$Res> get previous;
  @override
  $AuctionRoundCopyWith<$Res> get next;
}

/// @nodoc
class __$$Data3ImplCopyWithImpl<$Res>
    extends _$Data3CopyWithImpl<$Res, _$Data3Impl>
    implements _$$Data3ImplCopyWith<$Res> {
  __$$Data3ImplCopyWithImpl(
    _$Data3Impl _value,
    $Res Function(_$Data3Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of Data3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? previous = null, Object? next = null}) {
    return _then(
      _$Data3Impl(
        previous: null == previous
            ? _value.previous
            : previous // ignore: cast_nullable_to_non_nullable
                  as AuctionRound,
        next: null == next
            ? _value.next
            : next // ignore: cast_nullable_to_non_nullable
                  as AuctionRound,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Data3Impl implements _Data3 {
  const _$Data3Impl({required this.previous, required this.next});

  factory _$Data3Impl.fromJson(Map<String, dynamic> json) =>
      _$$Data3ImplFromJson(json);

  @override
  final AuctionRound previous;
  @override
  final AuctionRound next;

  @override
  String toString() {
    return 'Data3(previous: $previous, next: $next)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data3Impl &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, previous, next);

  /// Create a copy of Data3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Data3ImplCopyWith<_$Data3Impl> get copyWith =>
      __$$Data3ImplCopyWithImpl<_$Data3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Data3ImplToJson(this);
  }
}

abstract class _Data3 implements Data3 {
  const factory _Data3({
    required final AuctionRound previous,
    required final AuctionRound next,
  }) = _$Data3Impl;

  factory _Data3.fromJson(Map<String, dynamic> json) = _$Data3Impl.fromJson;

  @override
  AuctionRound get previous;
  @override
  AuctionRound get next;

  /// Create a copy of Data3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Data3ImplCopyWith<_$Data3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
