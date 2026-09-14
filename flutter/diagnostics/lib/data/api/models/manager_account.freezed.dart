// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manager_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ManagerAccount _$ManagerAccountFromJson(Map<String, dynamic> json) {
  return _ManagerAccount.fromJson(json);
}

/// @nodoc
mixin _$ManagerAccount {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  AccountRole get role => throw _privateConstructorUsedError;
  String get branchId => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  List<String>? get assignedBranchIds => throw _privateConstructorUsedError;
  int? get activeSessionCount => throw _privateConstructorUsedError;

  /// Serializes this ManagerAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManagerAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManagerAccountCopyWith<ManagerAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagerAccountCopyWith<$Res> {
  factory $ManagerAccountCopyWith(
    ManagerAccount value,
    $Res Function(ManagerAccount) then,
  ) = _$ManagerAccountCopyWithImpl<$Res, ManagerAccount>;
  @useResult
  $Res call({
    String id,
    String email,
    AccountRole role,
    String branchId,
    String? displayName,
    String? phone,
    bool? active,
    List<String>? assignedBranchIds,
    int? activeSessionCount,
  });
}

/// @nodoc
class _$ManagerAccountCopyWithImpl<$Res, $Val extends ManagerAccount>
    implements $ManagerAccountCopyWith<$Res> {
  _$ManagerAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagerAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? role = null,
    Object? branchId = null,
    Object? displayName = freezed,
    Object? phone = freezed,
    Object? active = freezed,
    Object? assignedBranchIds = freezed,
    Object? activeSessionCount = freezed,
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
            branchId: null == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as String,
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
            activeSessionCount: freezed == activeSessionCount
                ? _value.activeSessionCount
                : activeSessionCount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ManagerAccountImplCopyWith<$Res>
    implements $ManagerAccountCopyWith<$Res> {
  factory _$$ManagerAccountImplCopyWith(
    _$ManagerAccountImpl value,
    $Res Function(_$ManagerAccountImpl) then,
  ) = __$$ManagerAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String email,
    AccountRole role,
    String branchId,
    String? displayName,
    String? phone,
    bool? active,
    List<String>? assignedBranchIds,
    int? activeSessionCount,
  });
}

/// @nodoc
class __$$ManagerAccountImplCopyWithImpl<$Res>
    extends _$ManagerAccountCopyWithImpl<$Res, _$ManagerAccountImpl>
    implements _$$ManagerAccountImplCopyWith<$Res> {
  __$$ManagerAccountImplCopyWithImpl(
    _$ManagerAccountImpl _value,
    $Res Function(_$ManagerAccountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ManagerAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? role = null,
    Object? branchId = null,
    Object? displayName = freezed,
    Object? phone = freezed,
    Object? active = freezed,
    Object? assignedBranchIds = freezed,
    Object? activeSessionCount = freezed,
  }) {
    return _then(
      _$ManagerAccountImpl(
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
        branchId: null == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as String,
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
        activeSessionCount: freezed == activeSessionCount
            ? _value.activeSessionCount
            : activeSessionCount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ManagerAccountImpl implements _ManagerAccount {
  const _$ManagerAccountImpl({
    required this.id,
    required this.email,
    required this.role,
    required this.branchId,
    this.displayName,
    this.phone,
    this.active,
    final List<String>? assignedBranchIds,
    this.activeSessionCount,
  }) : _assignedBranchIds = assignedBranchIds;

  factory _$ManagerAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManagerAccountImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final AccountRole role;
  @override
  final String branchId;
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
  final int? activeSessionCount;

  @override
  String toString() {
    return 'ManagerAccount(id: $id, email: $email, role: $role, branchId: $branchId, displayName: $displayName, phone: $phone, active: $active, assignedBranchIds: $assignedBranchIds, activeSessionCount: $activeSessionCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerAccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality().equals(
              other._assignedBranchIds,
              _assignedBranchIds,
            ) &&
            (identical(other.activeSessionCount, activeSessionCount) ||
                other.activeSessionCount == activeSessionCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    email,
    role,
    branchId,
    displayName,
    phone,
    active,
    const DeepCollectionEquality().hash(_assignedBranchIds),
    activeSessionCount,
  );

  /// Create a copy of ManagerAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagerAccountImplCopyWith<_$ManagerAccountImpl> get copyWith =>
      __$$ManagerAccountImplCopyWithImpl<_$ManagerAccountImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ManagerAccountImplToJson(this);
  }
}

abstract class _ManagerAccount implements ManagerAccount {
  const factory _ManagerAccount({
    required final String id,
    required final String email,
    required final AccountRole role,
    required final String branchId,
    final String? displayName,
    final String? phone,
    final bool? active,
    final List<String>? assignedBranchIds,
    final int? activeSessionCount,
  }) = _$ManagerAccountImpl;

  factory _ManagerAccount.fromJson(Map<String, dynamic> json) =
      _$ManagerAccountImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  AccountRole get role;
  @override
  String get branchId;
  @override
  String? get displayName;
  @override
  String? get phone;
  @override
  bool? get active;
  @override
  List<String>? get assignedBranchIds;
  @override
  int? get activeSessionCount;

  /// Create a copy of ManagerAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManagerAccountImplCopyWith<_$ManagerAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
