// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AdminUpdate _$AdminUpdateFromJson(Map<String, dynamic> json) {
  return _AdminUpdate.fromJson(json);
}

/// @nodoc
mixin _$AdminUpdate {
  String? get displayName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  List<String>? get assignedBranchIds => throw _privateConstructorUsedError;

  /// Serializes this AdminUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminUpdateCopyWith<AdminUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminUpdateCopyWith<$Res> {
  factory $AdminUpdateCopyWith(
    AdminUpdate value,
    $Res Function(AdminUpdate) then,
  ) = _$AdminUpdateCopyWithImpl<$Res, AdminUpdate>;
  @useResult
  $Res call({
    String? displayName,
    String? phone,
    String? password,
    bool? active,
    List<String>? assignedBranchIds,
  });
}

/// @nodoc
class _$AdminUpdateCopyWithImpl<$Res, $Val extends AdminUpdate>
    implements $AdminUpdateCopyWith<$Res> {
  _$AdminUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? active = freezed,
    Object? assignedBranchIds = freezed,
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
abstract class _$$AdminUpdateImplCopyWith<$Res>
    implements $AdminUpdateCopyWith<$Res> {
  factory _$$AdminUpdateImplCopyWith(
    _$AdminUpdateImpl value,
    $Res Function(_$AdminUpdateImpl) then,
  ) = __$$AdminUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? displayName,
    String? phone,
    String? password,
    bool? active,
    List<String>? assignedBranchIds,
  });
}

/// @nodoc
class __$$AdminUpdateImplCopyWithImpl<$Res>
    extends _$AdminUpdateCopyWithImpl<$Res, _$AdminUpdateImpl>
    implements _$$AdminUpdateImplCopyWith<$Res> {
  __$$AdminUpdateImplCopyWithImpl(
    _$AdminUpdateImpl _value,
    $Res Function(_$AdminUpdateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? active = freezed,
    Object? assignedBranchIds = freezed,
  }) {
    return _then(
      _$AdminUpdateImpl(
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
class _$AdminUpdateImpl implements _AdminUpdate {
  const _$AdminUpdateImpl({
    this.displayName,
    this.phone,
    this.password,
    this.active,
    final List<String>? assignedBranchIds,
  }) : _assignedBranchIds = assignedBranchIds;

  factory _$AdminUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminUpdateImplFromJson(json);

  @override
  final String? displayName;
  @override
  final String? phone;
  @override
  final String? password;
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
    return 'AdminUpdate(displayName: $displayName, phone: $phone, password: $password, active: $active, assignedBranchIds: $assignedBranchIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminUpdateImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
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
    displayName,
    phone,
    password,
    active,
    const DeepCollectionEquality().hash(_assignedBranchIds),
  );

  /// Create a copy of AdminUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminUpdateImplCopyWith<_$AdminUpdateImpl> get copyWith =>
      __$$AdminUpdateImplCopyWithImpl<_$AdminUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminUpdateImplToJson(this);
  }
}

abstract class _AdminUpdate implements AdminUpdate {
  const factory _AdminUpdate({
    final String? displayName,
    final String? phone,
    final String? password,
    final bool? active,
    final List<String>? assignedBranchIds,
  }) = _$AdminUpdateImpl;

  factory _AdminUpdate.fromJson(Map<String, dynamic> json) =
      _$AdminUpdateImpl.fromJson;

  @override
  String? get displayName;
  @override
  String? get phone;
  @override
  String? get password;
  @override
  bool? get active;
  @override
  List<String>? get assignedBranchIds;

  /// Create a copy of AdminUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminUpdateImplCopyWith<_$AdminUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
