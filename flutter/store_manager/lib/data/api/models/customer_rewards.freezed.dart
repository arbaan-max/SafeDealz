// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_rewards.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerRewards _$CustomerRewardsFromJson(Map<String, dynamic> json) {
  return _CustomerRewards.fromJson(json);
}

/// @nodoc
mixin _$CustomerRewards {
  String? get phone => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  List<RewardBalance>? get balances => throw _privateConstructorUsedError;
  List<RewardLedgerEntry>? get entries => throw _privateConstructorUsedError;

  /// Serializes this CustomerRewards to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerRewards
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerRewardsCopyWith<CustomerRewards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerRewardsCopyWith<$Res> {
  factory $CustomerRewardsCopyWith(
    CustomerRewards value,
    $Res Function(CustomerRewards) then,
  ) = _$CustomerRewardsCopyWithImpl<$Res, CustomerRewards>;
  @useResult
  $Res call({
    String? phone,
    String? customerName,
    List<RewardBalance>? balances,
    List<RewardLedgerEntry>? entries,
  });
}

/// @nodoc
class _$CustomerRewardsCopyWithImpl<$Res, $Val extends CustomerRewards>
    implements $CustomerRewardsCopyWith<$Res> {
  _$CustomerRewardsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerRewards
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? customerName = freezed,
    Object? balances = freezed,
    Object? entries = freezed,
  }) {
    return _then(
      _value.copyWith(
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            customerName: freezed == customerName
                ? _value.customerName
                : customerName // ignore: cast_nullable_to_non_nullable
                      as String?,
            balances: freezed == balances
                ? _value.balances
                : balances // ignore: cast_nullable_to_non_nullable
                      as List<RewardBalance>?,
            entries: freezed == entries
                ? _value.entries
                : entries // ignore: cast_nullable_to_non_nullable
                      as List<RewardLedgerEntry>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomerRewardsImplCopyWith<$Res>
    implements $CustomerRewardsCopyWith<$Res> {
  factory _$$CustomerRewardsImplCopyWith(
    _$CustomerRewardsImpl value,
    $Res Function(_$CustomerRewardsImpl) then,
  ) = __$$CustomerRewardsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? phone,
    String? customerName,
    List<RewardBalance>? balances,
    List<RewardLedgerEntry>? entries,
  });
}

/// @nodoc
class __$$CustomerRewardsImplCopyWithImpl<$Res>
    extends _$CustomerRewardsCopyWithImpl<$Res, _$CustomerRewardsImpl>
    implements _$$CustomerRewardsImplCopyWith<$Res> {
  __$$CustomerRewardsImplCopyWithImpl(
    _$CustomerRewardsImpl _value,
    $Res Function(_$CustomerRewardsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerRewards
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? customerName = freezed,
    Object? balances = freezed,
    Object? entries = freezed,
  }) {
    return _then(
      _$CustomerRewardsImpl(
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        customerName: freezed == customerName
            ? _value.customerName
            : customerName // ignore: cast_nullable_to_non_nullable
                  as String?,
        balances: freezed == balances
            ? _value._balances
            : balances // ignore: cast_nullable_to_non_nullable
                  as List<RewardBalance>?,
        entries: freezed == entries
            ? _value._entries
            : entries // ignore: cast_nullable_to_non_nullable
                  as List<RewardLedgerEntry>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerRewardsImpl implements _CustomerRewards {
  const _$CustomerRewardsImpl({
    this.phone,
    this.customerName,
    final List<RewardBalance>? balances,
    final List<RewardLedgerEntry>? entries,
  }) : _balances = balances,
       _entries = entries;

  factory _$CustomerRewardsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerRewardsImplFromJson(json);

  @override
  final String? phone;
  @override
  final String? customerName;
  final List<RewardBalance>? _balances;
  @override
  List<RewardBalance>? get balances {
    final value = _balances;
    if (value == null) return null;
    if (_balances is EqualUnmodifiableListView) return _balances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RewardLedgerEntry>? _entries;
  @override
  List<RewardLedgerEntry>? get entries {
    final value = _entries;
    if (value == null) return null;
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CustomerRewards(phone: $phone, customerName: $customerName, balances: $balances, entries: $entries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerRewardsImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            const DeepCollectionEquality().equals(other._balances, _balances) &&
            const DeepCollectionEquality().equals(other._entries, _entries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    phone,
    customerName,
    const DeepCollectionEquality().hash(_balances),
    const DeepCollectionEquality().hash(_entries),
  );

  /// Create a copy of CustomerRewards
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerRewardsImplCopyWith<_$CustomerRewardsImpl> get copyWith =>
      __$$CustomerRewardsImplCopyWithImpl<_$CustomerRewardsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerRewardsImplToJson(this);
  }
}

abstract class _CustomerRewards implements CustomerRewards {
  const factory _CustomerRewards({
    final String? phone,
    final String? customerName,
    final List<RewardBalance>? balances,
    final List<RewardLedgerEntry>? entries,
  }) = _$CustomerRewardsImpl;

  factory _CustomerRewards.fromJson(Map<String, dynamic> json) =
      _$CustomerRewardsImpl.fromJson;

  @override
  String? get phone;
  @override
  String? get customerName;
  @override
  List<RewardBalance>? get balances;
  @override
  List<RewardLedgerEntry>? get entries;

  /// Create a copy of CustomerRewards
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerRewardsImplCopyWith<_$CustomerRewardsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
