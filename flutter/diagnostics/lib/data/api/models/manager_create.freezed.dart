// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manager_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ManagerCreate _$ManagerCreateFromJson(Map<String, dynamic> json) {
  return _ManagerCreate.fromJson(json);
}

/// @nodoc
mixin _$ManagerCreate {
  String get displayName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get branchId => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  /// Serializes this ManagerCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManagerCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManagerCreateCopyWith<ManagerCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagerCreateCopyWith<$Res> {
  factory $ManagerCreateCopyWith(
    ManagerCreate value,
    $Res Function(ManagerCreate) then,
  ) = _$ManagerCreateCopyWithImpl<$Res, ManagerCreate>;
  @useResult
  $Res call({
    String displayName,
    String email,
    String password,
    String branchId,
    String? phone,
    bool? active,
  });
}

/// @nodoc
class _$ManagerCreateCopyWithImpl<$Res, $Val extends ManagerCreate>
    implements $ManagerCreateCopyWith<$Res> {
  _$ManagerCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagerCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? email = null,
    Object? password = null,
    Object? branchId = null,
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
            branchId: null == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$ManagerCreateImplCopyWith<$Res>
    implements $ManagerCreateCopyWith<$Res> {
  factory _$$ManagerCreateImplCopyWith(
    _$ManagerCreateImpl value,
    $Res Function(_$ManagerCreateImpl) then,
  ) = __$$ManagerCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String displayName,
    String email,
    String password,
    String branchId,
    String? phone,
    bool? active,
  });
}

/// @nodoc
class __$$ManagerCreateImplCopyWithImpl<$Res>
    extends _$ManagerCreateCopyWithImpl<$Res, _$ManagerCreateImpl>
    implements _$$ManagerCreateImplCopyWith<$Res> {
  __$$ManagerCreateImplCopyWithImpl(
    _$ManagerCreateImpl _value,
    $Res Function(_$ManagerCreateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ManagerCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? email = null,
    Object? password = null,
    Object? branchId = null,
    Object? phone = freezed,
    Object? active = freezed,
  }) {
    return _then(
      _$ManagerCreateImpl(
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
        branchId: null == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as String,
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
class _$ManagerCreateImpl implements _ManagerCreate {
  const _$ManagerCreateImpl({
    required this.displayName,
    required this.email,
    required this.password,
    required this.branchId,
    this.phone,
    this.active,
  });

  factory _$ManagerCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManagerCreateImplFromJson(json);

  @override
  final String displayName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String branchId;
  @override
  final String? phone;
  @override
  final bool? active;

  @override
  String toString() {
    return 'ManagerCreate(displayName: $displayName, email: $email, password: $password, branchId: $branchId, phone: $phone, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerCreateImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
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
    branchId,
    phone,
    active,
  );

  /// Create a copy of ManagerCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagerCreateImplCopyWith<_$ManagerCreateImpl> get copyWith =>
      __$$ManagerCreateImplCopyWithImpl<_$ManagerCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManagerCreateImplToJson(this);
  }
}

abstract class _ManagerCreate implements ManagerCreate {
  const factory _ManagerCreate({
    required final String displayName,
    required final String email,
    required final String password,
    required final String branchId,
    final String? phone,
    final bool? active,
  }) = _$ManagerCreateImpl;

  factory _ManagerCreate.fromJson(Map<String, dynamic> json) =
      _$ManagerCreateImpl.fromJson;

  @override
  String get displayName;
  @override
  String get email;
  @override
  String get password;
  @override
  String get branchId;
  @override
  String? get phone;
  @override
  bool? get active;

  /// Create a copy of ManagerCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManagerCreateImplCopyWith<_$ManagerCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
