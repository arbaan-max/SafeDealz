// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RewardOverview _$RewardOverviewFromJson(Map<String, dynamic> json) {
  return _RewardOverview.fromJson(json);
}

/// @nodoc
mixin _$RewardOverview {
  List<RewardBranchTotal>? get branches => throw _privateConstructorUsedError;
  RewardBranchTotal? get totals => throw _privateConstructorUsedError;
  RewardPolicy? get policy => throw _privateConstructorUsedError;

  /// Serializes this RewardOverview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardOverview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardOverviewCopyWith<RewardOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardOverviewCopyWith<$Res> {
  factory $RewardOverviewCopyWith(
    RewardOverview value,
    $Res Function(RewardOverview) then,
  ) = _$RewardOverviewCopyWithImpl<$Res, RewardOverview>;
  @useResult
  $Res call({
    List<RewardBranchTotal>? branches,
    RewardBranchTotal? totals,
    RewardPolicy? policy,
  });

  $RewardBranchTotalCopyWith<$Res>? get totals;
  $RewardPolicyCopyWith<$Res>? get policy;
}

/// @nodoc
class _$RewardOverviewCopyWithImpl<$Res, $Val extends RewardOverview>
    implements $RewardOverviewCopyWith<$Res> {
  _$RewardOverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardOverview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branches = freezed,
    Object? totals = freezed,
    Object? policy = freezed,
  }) {
    return _then(
      _value.copyWith(
            branches: freezed == branches
                ? _value.branches
                : branches // ignore: cast_nullable_to_non_nullable
                      as List<RewardBranchTotal>?,
            totals: freezed == totals
                ? _value.totals
                : totals // ignore: cast_nullable_to_non_nullable
                      as RewardBranchTotal?,
            policy: freezed == policy
                ? _value.policy
                : policy // ignore: cast_nullable_to_non_nullable
                      as RewardPolicy?,
          )
          as $Val,
    );
  }

  /// Create a copy of RewardOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardBranchTotalCopyWith<$Res>? get totals {
    if (_value.totals == null) {
      return null;
    }

    return $RewardBranchTotalCopyWith<$Res>(_value.totals!, (value) {
      return _then(_value.copyWith(totals: value) as $Val);
    });
  }

  /// Create a copy of RewardOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardPolicyCopyWith<$Res>? get policy {
    if (_value.policy == null) {
      return null;
    }

    return $RewardPolicyCopyWith<$Res>(_value.policy!, (value) {
      return _then(_value.copyWith(policy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RewardOverviewImplCopyWith<$Res>
    implements $RewardOverviewCopyWith<$Res> {
  factory _$$RewardOverviewImplCopyWith(
    _$RewardOverviewImpl value,
    $Res Function(_$RewardOverviewImpl) then,
  ) = __$$RewardOverviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<RewardBranchTotal>? branches,
    RewardBranchTotal? totals,
    RewardPolicy? policy,
  });

  @override
  $RewardBranchTotalCopyWith<$Res>? get totals;
  @override
  $RewardPolicyCopyWith<$Res>? get policy;
}

/// @nodoc
class __$$RewardOverviewImplCopyWithImpl<$Res>
    extends _$RewardOverviewCopyWithImpl<$Res, _$RewardOverviewImpl>
    implements _$$RewardOverviewImplCopyWith<$Res> {
  __$$RewardOverviewImplCopyWithImpl(
    _$RewardOverviewImpl _value,
    $Res Function(_$RewardOverviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RewardOverview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branches = freezed,
    Object? totals = freezed,
    Object? policy = freezed,
  }) {
    return _then(
      _$RewardOverviewImpl(
        branches: freezed == branches
            ? _value._branches
            : branches // ignore: cast_nullable_to_non_nullable
                  as List<RewardBranchTotal>?,
        totals: freezed == totals
            ? _value.totals
            : totals // ignore: cast_nullable_to_non_nullable
                  as RewardBranchTotal?,
        policy: freezed == policy
            ? _value.policy
            : policy // ignore: cast_nullable_to_non_nullable
                  as RewardPolicy?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardOverviewImpl implements _RewardOverview {
  const _$RewardOverviewImpl({
    final List<RewardBranchTotal>? branches,
    this.totals,
    this.policy,
  }) : _branches = branches;

  factory _$RewardOverviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardOverviewImplFromJson(json);

  final List<RewardBranchTotal>? _branches;
  @override
  List<RewardBranchTotal>? get branches {
    final value = _branches;
    if (value == null) return null;
    if (_branches is EqualUnmodifiableListView) return _branches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final RewardBranchTotal? totals;
  @override
  final RewardPolicy? policy;

  @override
  String toString() {
    return 'RewardOverview(branches: $branches, totals: $totals, policy: $policy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardOverviewImpl &&
            const DeepCollectionEquality().equals(other._branches, _branches) &&
            (identical(other.totals, totals) || other.totals == totals) &&
            (identical(other.policy, policy) || other.policy == policy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_branches),
    totals,
    policy,
  );

  /// Create a copy of RewardOverview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardOverviewImplCopyWith<_$RewardOverviewImpl> get copyWith =>
      __$$RewardOverviewImplCopyWithImpl<_$RewardOverviewImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardOverviewImplToJson(this);
  }
}

abstract class _RewardOverview implements RewardOverview {
  const factory _RewardOverview({
    final List<RewardBranchTotal>? branches,
    final RewardBranchTotal? totals,
    final RewardPolicy? policy,
  }) = _$RewardOverviewImpl;

  factory _RewardOverview.fromJson(Map<String, dynamic> json) =
      _$RewardOverviewImpl.fromJson;

  @override
  List<RewardBranchTotal>? get branches;
  @override
  RewardBranchTotal? get totals;
  @override
  RewardPolicy? get policy;

  /// Create a copy of RewardOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardOverviewImplCopyWith<_$RewardOverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
