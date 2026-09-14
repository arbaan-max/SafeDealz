// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data4.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Data4 _$Data4FromJson(Map<String, dynamic> json) {
  return _Data4.fromJson(json);
}

/// @nodoc
mixin _$Data4 {
  RewardPolicy? get current => throw _privateConstructorUsedError;
  List<RewardPolicy>? get versions => throw _privateConstructorUsedError;

  /// Serializes this Data4 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data4
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Data4CopyWith<Data4> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Data4CopyWith<$Res> {
  factory $Data4CopyWith(Data4 value, $Res Function(Data4) then) =
      _$Data4CopyWithImpl<$Res, Data4>;
  @useResult
  $Res call({RewardPolicy? current, List<RewardPolicy>? versions});

  $RewardPolicyCopyWith<$Res>? get current;
}

/// @nodoc
class _$Data4CopyWithImpl<$Res, $Val extends Data4>
    implements $Data4CopyWith<$Res> {
  _$Data4CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data4
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? current = freezed, Object? versions = freezed}) {
    return _then(
      _value.copyWith(
            current: freezed == current
                ? _value.current
                : current // ignore: cast_nullable_to_non_nullable
                      as RewardPolicy?,
            versions: freezed == versions
                ? _value.versions
                : versions // ignore: cast_nullable_to_non_nullable
                      as List<RewardPolicy>?,
          )
          as $Val,
    );
  }

  /// Create a copy of Data4
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardPolicyCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $RewardPolicyCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Data4ImplCopyWith<$Res> implements $Data4CopyWith<$Res> {
  factory _$$Data4ImplCopyWith(
    _$Data4Impl value,
    $Res Function(_$Data4Impl) then,
  ) = __$$Data4ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RewardPolicy? current, List<RewardPolicy>? versions});

  @override
  $RewardPolicyCopyWith<$Res>? get current;
}

/// @nodoc
class __$$Data4ImplCopyWithImpl<$Res>
    extends _$Data4CopyWithImpl<$Res, _$Data4Impl>
    implements _$$Data4ImplCopyWith<$Res> {
  __$$Data4ImplCopyWithImpl(
    _$Data4Impl _value,
    $Res Function(_$Data4Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of Data4
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? current = freezed, Object? versions = freezed}) {
    return _then(
      _$Data4Impl(
        current: freezed == current
            ? _value.current
            : current // ignore: cast_nullable_to_non_nullable
                  as RewardPolicy?,
        versions: freezed == versions
            ? _value._versions
            : versions // ignore: cast_nullable_to_non_nullable
                  as List<RewardPolicy>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Data4Impl implements _Data4 {
  const _$Data4Impl({this.current, final List<RewardPolicy>? versions})
    : _versions = versions;

  factory _$Data4Impl.fromJson(Map<String, dynamic> json) =>
      _$$Data4ImplFromJson(json);

  @override
  final RewardPolicy? current;
  final List<RewardPolicy>? _versions;
  @override
  List<RewardPolicy>? get versions {
    final value = _versions;
    if (value == null) return null;
    if (_versions is EqualUnmodifiableListView) return _versions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data4(current: $current, versions: $versions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data4Impl &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other._versions, _versions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    current,
    const DeepCollectionEquality().hash(_versions),
  );

  /// Create a copy of Data4
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Data4ImplCopyWith<_$Data4Impl> get copyWith =>
      __$$Data4ImplCopyWithImpl<_$Data4Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Data4ImplToJson(this);
  }
}

abstract class _Data4 implements Data4 {
  const factory _Data4({
    final RewardPolicy? current,
    final List<RewardPolicy>? versions,
  }) = _$Data4Impl;

  factory _Data4.fromJson(Map<String, dynamic> json) = _$Data4Impl.fromJson;

  @override
  RewardPolicy? get current;
  @override
  List<RewardPolicy>? get versions;

  /// Create a copy of Data4
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Data4ImplCopyWith<_$Data4Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
