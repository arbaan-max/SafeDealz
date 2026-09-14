// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VendorAccount _$VendorAccountFromJson(Map<String, dynamic> json) {
  return _VendorAccount.fromJson(json);
}

/// @nodoc
mixin _$VendorAccount {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  AccountRole get role => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  List<String>? get assignedBranchIds => throw _privateConstructorUsedError;
  VendorWallet? get wallet => throw _privateConstructorUsedError;

  /// Serializes this VendorAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorAccountCopyWith<VendorAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorAccountCopyWith<$Res> {
  factory $VendorAccountCopyWith(
    VendorAccount value,
    $Res Function(VendorAccount) then,
  ) = _$VendorAccountCopyWithImpl<$Res, VendorAccount>;
  @useResult
  $Res call({
    String id,
    String email,
    AccountRole role,
    String? displayName,
    String? phone,
    bool? active,
    List<String>? assignedBranchIds,
    VendorWallet? wallet,
  });

  $VendorWalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class _$VendorAccountCopyWithImpl<$Res, $Val extends VendorAccount>
    implements $VendorAccountCopyWith<$Res> {
  _$VendorAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorAccount
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
    Object? wallet = freezed,
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
            wallet: freezed == wallet
                ? _value.wallet
                : wallet // ignore: cast_nullable_to_non_nullable
                      as VendorWallet?,
          )
          as $Val,
    );
  }

  /// Create a copy of VendorAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorWalletCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return $VendorWalletCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorAccountImplCopyWith<$Res>
    implements $VendorAccountCopyWith<$Res> {
  factory _$$VendorAccountImplCopyWith(
    _$VendorAccountImpl value,
    $Res Function(_$VendorAccountImpl) then,
  ) = __$$VendorAccountImplCopyWithImpl<$Res>;
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
    VendorWallet? wallet,
  });

  @override
  $VendorWalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class __$$VendorAccountImplCopyWithImpl<$Res>
    extends _$VendorAccountCopyWithImpl<$Res, _$VendorAccountImpl>
    implements _$$VendorAccountImplCopyWith<$Res> {
  __$$VendorAccountImplCopyWithImpl(
    _$VendorAccountImpl _value,
    $Res Function(_$VendorAccountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VendorAccount
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
    Object? wallet = freezed,
  }) {
    return _then(
      _$VendorAccountImpl(
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
        wallet: freezed == wallet
            ? _value.wallet
            : wallet // ignore: cast_nullable_to_non_nullable
                  as VendorWallet?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorAccountImpl implements _VendorAccount {
  const _$VendorAccountImpl({
    required this.id,
    required this.email,
    required this.role,
    this.displayName,
    this.phone,
    this.active,
    final List<String>? assignedBranchIds,
    this.wallet,
  }) : _assignedBranchIds = assignedBranchIds;

  factory _$VendorAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorAccountImplFromJson(json);

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
  final VendorWallet? wallet;

  @override
  String toString() {
    return 'VendorAccount(id: $id, email: $email, role: $role, displayName: $displayName, phone: $phone, active: $active, assignedBranchIds: $assignedBranchIds, wallet: $wallet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorAccountImpl &&
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
            (identical(other.wallet, wallet) || other.wallet == wallet));
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
    wallet,
  );

  /// Create a copy of VendorAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorAccountImplCopyWith<_$VendorAccountImpl> get copyWith =>
      __$$VendorAccountImplCopyWithImpl<_$VendorAccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorAccountImplToJson(this);
  }
}

abstract class _VendorAccount implements VendorAccount {
  const factory _VendorAccount({
    required final String id,
    required final String email,
    required final AccountRole role,
    final String? displayName,
    final String? phone,
    final bool? active,
    final List<String>? assignedBranchIds,
    final VendorWallet? wallet,
  }) = _$VendorAccountImpl;

  factory _VendorAccount.fromJson(Map<String, dynamic> json) =
      _$VendorAccountImpl.fromJson;

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
  VendorWallet? get wallet;

  /// Create a copy of VendorAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorAccountImplCopyWith<_$VendorAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
