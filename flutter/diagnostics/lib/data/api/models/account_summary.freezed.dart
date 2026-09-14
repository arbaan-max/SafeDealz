// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AccountSummary _$AccountSummaryFromJson(Map<String, dynamic> json) {
  return _AccountSummary.fromJson(json);
}

/// @nodoc
mixin _$AccountSummary {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  AccountRole get role => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  List<String>? get assignedBranchIds => throw _privateConstructorUsedError;
  bool? get allStores => throw _privateConstructorUsedError;

  /// Serializes this AccountSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountSummaryCopyWith<AccountSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSummaryCopyWith<$Res> {
  factory $AccountSummaryCopyWith(
    AccountSummary value,
    $Res Function(AccountSummary) then,
  ) = _$AccountSummaryCopyWithImpl<$Res, AccountSummary>;
  @useResult
  $Res call({
    String id,
    String email,
    AccountRole role,
    String? displayName,
    String? phone,
    bool? active,
    List<String>? assignedBranchIds,
    bool? allStores,
  });
}

/// @nodoc
class _$AccountSummaryCopyWithImpl<$Res, $Val extends AccountSummary>
    implements $AccountSummaryCopyWith<$Res> {
  _$AccountSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? role = null,
    Object? displayName = freezed,
    Object? phone = freezed,
    Object? active = freezed,
    Object? assignedBranchIds = freezed,
    Object? allStores = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as AccountRole,
            displayName: freezed == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            active: freezed == active
                ? _value.active
                : active // ignore: cast_nullable_to_non_nullable
                      as bool?,
            assignedBranchIds: freezed == assignedBranchIds
                ? _value.assignedBranchIds
                : assignedBranchIds // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            allStores: freezed == allStores
                ? _value.allStores
                : allStores // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AccountSummaryImplCopyWith<$Res>
    implements $AccountSummaryCopyWith<$Res> {
  factory _$$AccountSummaryImplCopyWith(
    _$AccountSummaryImpl value,
    $Res Function(_$AccountSummaryImpl) then,
  ) = __$$AccountSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String email,
    AccountRole role,
    String? displayName,
    String? phone,
    bool? active,
    List<String>? assignedBranchIds,
    bool? allStores,
  });
}

/// @nodoc
class __$$AccountSummaryImplCopyWithImpl<$Res>
    extends _$AccountSummaryCopyWithImpl<$Res, _$AccountSummaryImpl>
    implements _$$AccountSummaryImplCopyWith<$Res> {
  __$$AccountSummaryImplCopyWithImpl(
    _$AccountSummaryImpl _value,
    $Res Function(_$AccountSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? role = null,
    Object? displayName = freezed,
    Object? phone = freezed,
    Object? active = freezed,
    Object? assignedBranchIds = freezed,
    Object? allStores = freezed,
  }) {
    return _then(
      _$AccountSummaryImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as AccountRole,
        displayName: freezed == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        active: freezed == active
            ? _value.active
            : active // ignore: cast_nullable_to_non_nullable
                  as bool?,
        assignedBranchIds: freezed == assignedBranchIds
            ? _value._assignedBranchIds
            : assignedBranchIds // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        allStores: freezed == allStores
            ? _value.allStores
            : allStores // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountSummaryImpl implements _AccountSummary {
  const _$AccountSummaryImpl({
    required this.id,
    required this.email,
    required this.role,
    this.displayName,
    this.phone,
    this.active,
    final List<String>? assignedBranchIds,
    this.allStores,
  }) : _assignedBranchIds = assignedBranchIds;

  factory _$AccountSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountSummaryImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final AccountRole role;
  @override
  final String? displayName;
  @override
  final String? phone;
  @override
  final bool? active;
  final List<String>? _assignedBranchIds;
  @override
  List<String>? get assignedBranchIds {
    final value = _assignedBranchIds;
    if (value == null) return null;
    if (_assignedBranchIds is EqualUnmodifiableListView)
      return _assignedBranchIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? allStores;

  @override
  String toString() {
    return 'AccountSummary(id: $id, email: $email, role: $role, displayName: $displayName, phone: $phone, active: $active, assignedBranchIds: $assignedBranchIds, allStores: $allStores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality().equals(
              other._assignedBranchIds,
              _assignedBranchIds,
            ) &&
            (identical(other.allStores, allStores) ||
                other.allStores == allStores));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    email,
    role,
    displayName,
    phone,
    active,
    const DeepCollectionEquality().hash(_assignedBranchIds),
    allStores,
  );

  /// Create a copy of AccountSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSummaryImplCopyWith<_$AccountSummaryImpl> get copyWith =>
      __$$AccountSummaryImplCopyWithImpl<_$AccountSummaryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountSummaryImplToJson(this);
  }
}

abstract class _AccountSummary implements AccountSummary {
  const factory _AccountSummary({
    required final String id,
    required final String email,
    required final AccountRole role,
    final String? displayName,
    final String? phone,
    final bool? active,
    final List<String>? assignedBranchIds,
    final bool? allStores,
  }) = _$AccountSummaryImpl;

  factory _AccountSummary.fromJson(Map<String, dynamic> json) =
      _$AccountSummaryImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  AccountRole get role;
  @override
  String? get displayName;
  @override
  String? get phone;
  @override
  bool? get active;
  @override
  List<String>? get assignedBranchIds;
  @override
  bool? get allStores;

  /// Create a copy of AccountSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountSummaryImplCopyWith<_$AccountSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
