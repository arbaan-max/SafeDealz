// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VendorCreate _$VendorCreateFromJson(Map<String, dynamic> json) {
  return _VendorCreate.fromJson(json);
}

/// @nodoc
mixin _$VendorCreate {
  String get displayName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  List<String> get assignedBranchIds => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  /// Serializes this VendorCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorCreateCopyWith<VendorCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorCreateCopyWith<$Res> {
  factory $VendorCreateCopyWith(
    VendorCreate value,
    $Res Function(VendorCreate) then,
  ) = _$VendorCreateCopyWithImpl<$Res, VendorCreate>;
  @useResult
  $Res call({
    String displayName,
    String email,
    String password,
    List<String> assignedBranchIds,
    String? phone,
    bool? active,
  });
}

/// @nodoc
class _$VendorCreateCopyWithImpl<$Res, $Val extends VendorCreate>
    implements $VendorCreateCopyWith<$Res> {
  _$VendorCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? email = null,
    Object? password = null,
    Object? assignedBranchIds = null,
    Object? phone = freezed,
    Object? active = freezed,
  }) {
    return _then(
      _value.copyWith(
            displayName: null == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            assignedBranchIds: null == assignedBranchIds
                ? _value.assignedBranchIds
                : assignedBranchIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            active: freezed == active
                ? _value.active
                : active // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VendorCreateImplCopyWith<$Res>
    implements $VendorCreateCopyWith<$Res> {
  factory _$$VendorCreateImplCopyWith(
    _$VendorCreateImpl value,
    $Res Function(_$VendorCreateImpl) then,
  ) = __$$VendorCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String displayName,
    String email,
    String password,
    List<String> assignedBranchIds,
    String? phone,
    bool? active,
  });
}

/// @nodoc
class __$$VendorCreateImplCopyWithImpl<$Res>
    extends _$VendorCreateCopyWithImpl<$Res, _$VendorCreateImpl>
    implements _$$VendorCreateImplCopyWith<$Res> {
  __$$VendorCreateImplCopyWithImpl(
    _$VendorCreateImpl _value,
    $Res Function(_$VendorCreateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VendorCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? email = null,
    Object? password = null,
    Object? assignedBranchIds = null,
    Object? phone = freezed,
    Object? active = freezed,
  }) {
    return _then(
      _$VendorCreateImpl(
        displayName: null == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        assignedBranchIds: null == assignedBranchIds
            ? _value._assignedBranchIds
            : assignedBranchIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        active: freezed == active
            ? _value.active
            : active // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorCreateImpl implements _VendorCreate {
  const _$VendorCreateImpl({
    required this.displayName,
    required this.email,
    required this.password,
    required final List<String> assignedBranchIds,
    this.phone,
    this.active,
  }) : _assignedBranchIds = assignedBranchIds;

  factory _$VendorCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorCreateImplFromJson(json);

  @override
  final String displayName;
  @override
  final String email;
  @override
  final String password;
  final List<String> _assignedBranchIds;
  @override
  List<String> get assignedBranchIds {
    if (_assignedBranchIds is EqualUnmodifiableListView)
      return _assignedBranchIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignedBranchIds);
  }

  @override
  final String? phone;
  @override
  final bool? active;

  @override
  String toString() {
    return 'VendorCreate(displayName: $displayName, email: $email, password: $password, assignedBranchIds: $assignedBranchIds, phone: $phone, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorCreateImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(
              other._assignedBranchIds,
              _assignedBranchIds,
            ) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    displayName,
    email,
    password,
    const DeepCollectionEquality().hash(_assignedBranchIds),
    phone,
    active,
  );

  /// Create a copy of VendorCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorCreateImplCopyWith<_$VendorCreateImpl> get copyWith =>
      __$$VendorCreateImplCopyWithImpl<_$VendorCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorCreateImplToJson(this);
  }
}

abstract class _VendorCreate implements VendorCreate {
  const factory _VendorCreate({
    required final String displayName,
    required final String email,
    required final String password,
    required final List<String> assignedBranchIds,
    final String? phone,
    final bool? active,
  }) = _$VendorCreateImpl;

  factory _VendorCreate.fromJson(Map<String, dynamic> json) =
      _$VendorCreateImpl.fromJson;

  @override
  String get displayName;
  @override
  String get email;
  @override
  String get password;
  @override
  List<String> get assignedBranchIds;
  @override
  String? get phone;
  @override
  bool? get active;

  /// Create a copy of VendorCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorCreateImplCopyWith<_$VendorCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
