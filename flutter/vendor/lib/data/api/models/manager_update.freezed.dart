// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manager_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ManagerUpdate _$ManagerUpdateFromJson(Map<String, dynamic> json) {
  return _ManagerUpdate.fromJson(json);
}

/// @nodoc
mixin _$ManagerUpdate {
  String? get displayName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get branchId => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  bool? get revokeSessions => throw _privateConstructorUsedError;

  /// Serializes this ManagerUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManagerUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManagerUpdateCopyWith<ManagerUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagerUpdateCopyWith<$Res> {
  factory $ManagerUpdateCopyWith(
    ManagerUpdate value,
    $Res Function(ManagerUpdate) then,
  ) = _$ManagerUpdateCopyWithImpl<$Res, ManagerUpdate>;
  @useResult
  $Res call({
    String? displayName,
    String? phone,
    String? password,
    String? branchId,
    bool? active,
    bool? revokeSessions,
  });
}

/// @nodoc
class _$ManagerUpdateCopyWithImpl<$Res, $Val extends ManagerUpdate>
    implements $ManagerUpdateCopyWith<$Res> {
  _$ManagerUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagerUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? branchId = freezed,
    Object? active = freezed,
    Object? revokeSessions = freezed,
  }) {
    return _then(
      _value.copyWith(
            displayName: freezed == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            password: freezed == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String?,
            branchId: freezed == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as String?,
            active: freezed == active
                ? _value.active
                : active // ignore: cast_nullable_to_non_nullable
                      as bool?,
            revokeSessions: freezed == revokeSessions
                ? _value.revokeSessions
                : revokeSessions // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ManagerUpdateImplCopyWith<$Res>
    implements $ManagerUpdateCopyWith<$Res> {
  factory _$$ManagerUpdateImplCopyWith(
    _$ManagerUpdateImpl value,
    $Res Function(_$ManagerUpdateImpl) then,
  ) = __$$ManagerUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? displayName,
    String? phone,
    String? password,
    String? branchId,
    bool? active,
    bool? revokeSessions,
  });
}

/// @nodoc
class __$$ManagerUpdateImplCopyWithImpl<$Res>
    extends _$ManagerUpdateCopyWithImpl<$Res, _$ManagerUpdateImpl>
    implements _$$ManagerUpdateImplCopyWith<$Res> {
  __$$ManagerUpdateImplCopyWithImpl(
    _$ManagerUpdateImpl _value,
    $Res Function(_$ManagerUpdateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ManagerUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? branchId = freezed,
    Object? active = freezed,
    Object? revokeSessions = freezed,
  }) {
    return _then(
      _$ManagerUpdateImpl(
        displayName: freezed == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        password: freezed == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String?,
        branchId: freezed == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as String?,
        active: freezed == active
            ? _value.active
            : active // ignore: cast_nullable_to_non_nullable
                  as bool?,
        revokeSessions: freezed == revokeSessions
            ? _value.revokeSessions
            : revokeSessions // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ManagerUpdateImpl implements _ManagerUpdate {
  const _$ManagerUpdateImpl({
    this.displayName,
    this.phone,
    this.password,
    this.branchId,
    this.active,
    this.revokeSessions,
  });

  factory _$ManagerUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManagerUpdateImplFromJson(json);

  @override
  final String? displayName;
  @override
  final String? phone;
  @override
  final String? password;
  @override
  final String? branchId;
  @override
  final bool? active;
  @override
  final bool? revokeSessions;

  @override
  String toString() {
    return 'ManagerUpdate(displayName: $displayName, phone: $phone, password: $password, branchId: $branchId, active: $active, revokeSessions: $revokeSessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerUpdateImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.revokeSessions, revokeSessions) ||
                other.revokeSessions == revokeSessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    displayName,
    phone,
    password,
    branchId,
    active,
    revokeSessions,
  );

  /// Create a copy of ManagerUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagerUpdateImplCopyWith<_$ManagerUpdateImpl> get copyWith =>
      __$$ManagerUpdateImplCopyWithImpl<_$ManagerUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManagerUpdateImplToJson(this);
  }
}

abstract class _ManagerUpdate implements ManagerUpdate {
  const factory _ManagerUpdate({
    final String? displayName,
    final String? phone,
    final String? password,
    final String? branchId,
    final bool? active,
    final bool? revokeSessions,
  }) = _$ManagerUpdateImpl;

  factory _ManagerUpdate.fromJson(Map<String, dynamic> json) =
      _$ManagerUpdateImpl.fromJson;

  @override
  String? get displayName;
  @override
  String? get phone;
  @override
  String? get password;
  @override
  String? get branchId;
  @override
  bool? get active;
  @override
  bool? get revokeSessions;

  /// Create a copy of ManagerUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManagerUpdateImplCopyWith<_$ManagerUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
