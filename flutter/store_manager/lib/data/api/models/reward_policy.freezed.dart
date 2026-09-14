// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RewardPolicy _$RewardPolicyFromJson(Map<String, dynamic> json) {
  return _RewardPolicy.fromJson(json);
}

/// @nodoc
mixin _$RewardPolicy {
  String? get id => throw _privateConstructorUsedError;
  int? get version => throw _privateConstructorUsedError;
  int? get earnPointsPerHundredRupees => throw _privateConstructorUsedError;
  int? get pointValuePaise => throw _privateConstructorUsedError;
  List<String>? get eligibleCategories => throw _privateConstructorUsedError;
  int? get expiryDays => throw _privateConstructorUsedError;
  RewardPolicyRedemptionScope? get redemptionScope =>
      throw _privateConstructorUsedError;
  bool? get chainRedemptionEnabled => throw _privateConstructorUsedError;
  bool? get multiBranchRedemptionEnabled => throw _privateConstructorUsedError;
  bool? get futureScopesInactive => throw _privateConstructorUsedError;
  DateTime? get effectiveFrom => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this RewardPolicy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardPolicy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardPolicyCopyWith<RewardPolicy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardPolicyCopyWith<$Res> {
  factory $RewardPolicyCopyWith(
    RewardPolicy value,
    $Res Function(RewardPolicy) then,
  ) = _$RewardPolicyCopyWithImpl<$Res, RewardPolicy>;
  @useResult
  $Res call({
    String? id,
    int? version,
    int? earnPointsPerHundredRupees,
    int? pointValuePaise,
    List<String>? eligibleCategories,
    int? expiryDays,
    RewardPolicyRedemptionScope? redemptionScope,
    bool? chainRedemptionEnabled,
    bool? multiBranchRedemptionEnabled,
    bool? futureScopesInactive,
    DateTime? effectiveFrom,
    String? note,
  });
}

/// @nodoc
class _$RewardPolicyCopyWithImpl<$Res, $Val extends RewardPolicy>
    implements $RewardPolicyCopyWith<$Res> {
  _$RewardPolicyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardPolicy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? earnPointsPerHundredRupees = freezed,
    Object? pointValuePaise = freezed,
    Object? eligibleCategories = freezed,
    Object? expiryDays = freezed,
    Object? redemptionScope = freezed,
    Object? chainRedemptionEnabled = freezed,
    Object? multiBranchRedemptionEnabled = freezed,
    Object? futureScopesInactive = freezed,
    Object? effectiveFrom = freezed,
    Object? note = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            version: freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as int?,
            earnPointsPerHundredRupees: freezed == earnPointsPerHundredRupees
                ? _value.earnPointsPerHundredRupees
                : earnPointsPerHundredRupees // ignore: cast_nullable_to_non_nullable
                      as int?,
            pointValuePaise: freezed == pointValuePaise
                ? _value.pointValuePaise
                : pointValuePaise // ignore: cast_nullable_to_non_nullable
                      as int?,
            eligibleCategories: freezed == eligibleCategories
                ? _value.eligibleCategories
                : eligibleCategories // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            expiryDays: freezed == expiryDays
                ? _value.expiryDays
                : expiryDays // ignore: cast_nullable_to_non_nullable
                      as int?,
            redemptionScope: freezed == redemptionScope
                ? _value.redemptionScope
                : redemptionScope // ignore: cast_nullable_to_non_nullable
                      as RewardPolicyRedemptionScope?,
            chainRedemptionEnabled: freezed == chainRedemptionEnabled
                ? _value.chainRedemptionEnabled
                : chainRedemptionEnabled // ignore: cast_nullable_to_non_nullable
                      as bool?,
            multiBranchRedemptionEnabled:
                freezed == multiBranchRedemptionEnabled
                ? _value.multiBranchRedemptionEnabled
                : multiBranchRedemptionEnabled // ignore: cast_nullable_to_non_nullable
                      as bool?,
            futureScopesInactive: freezed == futureScopesInactive
                ? _value.futureScopesInactive
                : futureScopesInactive // ignore: cast_nullable_to_non_nullable
                      as bool?,
            effectiveFrom: freezed == effectiveFrom
                ? _value.effectiveFrom
                : effectiveFrom // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RewardPolicyImplCopyWith<$Res>
    implements $RewardPolicyCopyWith<$Res> {
  factory _$$RewardPolicyImplCopyWith(
    _$RewardPolicyImpl value,
    $Res Function(_$RewardPolicyImpl) then,
  ) = __$$RewardPolicyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    int? version,
    int? earnPointsPerHundredRupees,
    int? pointValuePaise,
    List<String>? eligibleCategories,
    int? expiryDays,
    RewardPolicyRedemptionScope? redemptionScope,
    bool? chainRedemptionEnabled,
    bool? multiBranchRedemptionEnabled,
    bool? futureScopesInactive,
    DateTime? effectiveFrom,
    String? note,
  });
}

/// @nodoc
class __$$RewardPolicyImplCopyWithImpl<$Res>
    extends _$RewardPolicyCopyWithImpl<$Res, _$RewardPolicyImpl>
    implements _$$RewardPolicyImplCopyWith<$Res> {
  __$$RewardPolicyImplCopyWithImpl(
    _$RewardPolicyImpl _value,
    $Res Function(_$RewardPolicyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RewardPolicy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? earnPointsPerHundredRupees = freezed,
    Object? pointValuePaise = freezed,
    Object? eligibleCategories = freezed,
    Object? expiryDays = freezed,
    Object? redemptionScope = freezed,
    Object? chainRedemptionEnabled = freezed,
    Object? multiBranchRedemptionEnabled = freezed,
    Object? futureScopesInactive = freezed,
    Object? effectiveFrom = freezed,
    Object? note = freezed,
  }) {
    return _then(
      _$RewardPolicyImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        version: freezed == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as int?,
        earnPointsPerHundredRupees: freezed == earnPointsPerHundredRupees
            ? _value.earnPointsPerHundredRupees
            : earnPointsPerHundredRupees // ignore: cast_nullable_to_non_nullable
                  as int?,
        pointValuePaise: freezed == pointValuePaise
            ? _value.pointValuePaise
            : pointValuePaise // ignore: cast_nullable_to_non_nullable
                  as int?,
        eligibleCategories: freezed == eligibleCategories
            ? _value._eligibleCategories
            : eligibleCategories // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        expiryDays: freezed == expiryDays
            ? _value.expiryDays
            : expiryDays // ignore: cast_nullable_to_non_nullable
                  as int?,
        redemptionScope: freezed == redemptionScope
            ? _value.redemptionScope
            : redemptionScope // ignore: cast_nullable_to_non_nullable
                  as RewardPolicyRedemptionScope?,
        chainRedemptionEnabled: freezed == chainRedemptionEnabled
            ? _value.chainRedemptionEnabled
            : chainRedemptionEnabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
        multiBranchRedemptionEnabled: freezed == multiBranchRedemptionEnabled
            ? _value.multiBranchRedemptionEnabled
            : multiBranchRedemptionEnabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
        futureScopesInactive: freezed == futureScopesInactive
            ? _value.futureScopesInactive
            : futureScopesInactive // ignore: cast_nullable_to_non_nullable
                  as bool?,
        effectiveFrom: freezed == effectiveFrom
            ? _value.effectiveFrom
            : effectiveFrom // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardPolicyImpl implements _RewardPolicy {
  const _$RewardPolicyImpl({
    this.id,
    this.version,
    this.earnPointsPerHundredRupees,
    this.pointValuePaise,
    final List<String>? eligibleCategories,
    this.expiryDays,
    this.redemptionScope,
    this.chainRedemptionEnabled,
    this.multiBranchRedemptionEnabled,
    this.futureScopesInactive,
    this.effectiveFrom,
    this.note,
  }) : _eligibleCategories = eligibleCategories;

  factory _$RewardPolicyImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardPolicyImplFromJson(json);

  @override
  final String? id;
  @override
  final int? version;
  @override
  final int? earnPointsPerHundredRupees;
  @override
  final int? pointValuePaise;
  final List<String>? _eligibleCategories;
  @override
  List<String>? get eligibleCategories {
    final value = _eligibleCategories;
    if (value == null) return null;
    if (_eligibleCategories is EqualUnmodifiableListView)
      return _eligibleCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? expiryDays;
  @override
  final RewardPolicyRedemptionScope? redemptionScope;
  @override
  final bool? chainRedemptionEnabled;
  @override
  final bool? multiBranchRedemptionEnabled;
  @override
  final bool? futureScopesInactive;
  @override
  final DateTime? effectiveFrom;
  @override
  final String? note;

  @override
  String toString() {
    return 'RewardPolicy(id: $id, version: $version, earnPointsPerHundredRupees: $earnPointsPerHundredRupees, pointValuePaise: $pointValuePaise, eligibleCategories: $eligibleCategories, expiryDays: $expiryDays, redemptionScope: $redemptionScope, chainRedemptionEnabled: $chainRedemptionEnabled, multiBranchRedemptionEnabled: $multiBranchRedemptionEnabled, futureScopesInactive: $futureScopesInactive, effectiveFrom: $effectiveFrom, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardPolicyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(
                  other.earnPointsPerHundredRupees,
                  earnPointsPerHundredRupees,
                ) ||
                other.earnPointsPerHundredRupees ==
                    earnPointsPerHundredRupees) &&
            (identical(other.pointValuePaise, pointValuePaise) ||
                other.pointValuePaise == pointValuePaise) &&
            const DeepCollectionEquality().equals(
              other._eligibleCategories,
              _eligibleCategories,
            ) &&
            (identical(other.expiryDays, expiryDays) ||
                other.expiryDays == expiryDays) &&
            (identical(other.redemptionScope, redemptionScope) ||
                other.redemptionScope == redemptionScope) &&
            (identical(other.chainRedemptionEnabled, chainRedemptionEnabled) ||
                other.chainRedemptionEnabled == chainRedemptionEnabled) &&
            (identical(
                  other.multiBranchRedemptionEnabled,
                  multiBranchRedemptionEnabled,
                ) ||
                other.multiBranchRedemptionEnabled ==
                    multiBranchRedemptionEnabled) &&
            (identical(other.futureScopesInactive, futureScopesInactive) ||
                other.futureScopesInactive == futureScopesInactive) &&
            (identical(other.effectiveFrom, effectiveFrom) ||
                other.effectiveFrom == effectiveFrom) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    version,
    earnPointsPerHundredRupees,
    pointValuePaise,
    const DeepCollectionEquality().hash(_eligibleCategories),
    expiryDays,
    redemptionScope,
    chainRedemptionEnabled,
    multiBranchRedemptionEnabled,
    futureScopesInactive,
    effectiveFrom,
    note,
  );

  /// Create a copy of RewardPolicy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardPolicyImplCopyWith<_$RewardPolicyImpl> get copyWith =>
      __$$RewardPolicyImplCopyWithImpl<_$RewardPolicyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardPolicyImplToJson(this);
  }
}

abstract class _RewardPolicy implements RewardPolicy {
  const factory _RewardPolicy({
    final String? id,
    final int? version,
    final int? earnPointsPerHundredRupees,
    final int? pointValuePaise,
    final List<String>? eligibleCategories,
    final int? expiryDays,
    final RewardPolicyRedemptionScope? redemptionScope,
    final bool? chainRedemptionEnabled,
    final bool? multiBranchRedemptionEnabled,
    final bool? futureScopesInactive,
    final DateTime? effectiveFrom,
    final String? note,
  }) = _$RewardPolicyImpl;

  factory _RewardPolicy.fromJson(Map<String, dynamic> json) =
      _$RewardPolicyImpl.fromJson;

  @override
  String? get id;
  @override
  int? get version;
  @override
  int? get earnPointsPerHundredRupees;
  @override
  int? get pointValuePaise;
  @override
  List<String>? get eligibleCategories;
  @override
  int? get expiryDays;
  @override
  RewardPolicyRedemptionScope? get redemptionScope;
  @override
  bool? get chainRedemptionEnabled;
  @override
  bool? get multiBranchRedemptionEnabled;
  @override
  bool? get futureScopesInactive;
  @override
  DateTime? get effectiveFrom;
  @override
  String? get note;

  /// Create a copy of RewardPolicy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardPolicyImplCopyWith<_$RewardPolicyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
