// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AdminAccount _$AdminAccountFromJson(Map<String, dynamic> json) {
  return _AdminAccount.fromJson(json);
}

/// @nodoc
mixin _$AdminAccount {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  AccountRole get role => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  List<String>? get assignedBranchIds => throw _privateConstructorUsedError;

  /// Serializes this AdminAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminAccountCopyWith<AdminAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminAccountCopyWith<$Res> {
  factory $AdminAccountCopyWith(
    AdminAccount value,
    $Res Function(AdminAccount) then,
  ) = _$AdminAccountCopyWithImpl<$Res, AdminAccount>;
  @useResult
  $Res call({
    String id,
    String email,
    AccountRole role,
    String? displayName,
    String? phone,
    bool? active,
    List<String>? assignedBranchIds,
  });
}

/// @nodoc
class _$AdminAccountCopyWithImpl<$Res, $Val extends AdminAccount>
    implements $AdminAccountCopyWith<$Res> {
  _$AdminAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminAccount
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AdminAccountImplCopyWith<$Res>
    implements $AdminAccountCopyWith<$Res> {
  factory _$$AdminAccountImplCopyWith(
    _$AdminAccountImpl value,
    $Res Function(_$AdminAccountImpl) then,
  ) = __$$AdminAccountImplCopyWithImpl<$Res>;
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
  });
}

/// @nodoc
class __$$AdminAccountImplCopyWithImpl<$Res>
    extends _$AdminAccountCopyWithImpl<$Res, _$AdminAccountImpl>
    implements _$$AdminAccountImplCopyWith<$Res> {
  __$$AdminAccountImplCopyWithImpl(
    _$AdminAccountImpl _value,
    $Res Function(_$AdminAccountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminAccount
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
  }) {
    return _then(
      _$AdminAccountImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminAccountImpl implements _AdminAccount {
  const _$AdminAccountImpl({
    required this.id,
    required this.email,
    required this.role,
    this.displayName,
    this.phone,
    this.active,
    final List<String>? assignedBranchIds,
  }) : _assignedBranchIds = assignedBranchIds;

  factory _$AdminAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminAccountImplFromJson(json);

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
  String toString() {
    return 'AdminAccount(id: $id, email: $email, role: $role, displayName: $displayName, phone: $phone, active: $active, assignedBranchIds: $assignedBranchIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminAccountImpl &&
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
            ));
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
  );

  /// Create a copy of AdminAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminAccountImplCopyWith<_$AdminAccountImpl> get copyWith =>
      __$$AdminAccountImplCopyWithImpl<_$AdminAccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminAccountImplToJson(this);
  }
}

abstract class _AdminAccount implements AdminAccount {
  const factory _AdminAccount({
    required final String id,
    required final String email,
    required final AccountRole role,
    final String? displayName,
    final String? phone,
    final bool? active,
    final List<String>? assignedBranchIds,
  }) = _$AdminAccountImpl;

  factory _AdminAccount.fromJson(Map<String, dynamic> json) =
      _$AdminAccountImpl.fromJson;

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

  /// Create a copy of AdminAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminAccountImplCopyWith<_$AdminAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
