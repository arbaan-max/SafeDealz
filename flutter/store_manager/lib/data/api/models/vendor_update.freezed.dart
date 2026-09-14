// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VendorUpdate _$VendorUpdateFromJson(Map<String, dynamic> json) {
  return _VendorUpdate.fromJson(json);
}

/// @nodoc
mixin _$VendorUpdate {
  String? get displayName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  List<String>? get assignedBranchIds => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  /// Serializes this VendorUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorUpdateCopyWith<VendorUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorUpdateCopyWith<$Res> {
  factory $VendorUpdateCopyWith(
    VendorUpdate value,
    $Res Function(VendorUpdate) then,
  ) = _$VendorUpdateCopyWithImpl<$Res, VendorUpdate>;
  @useResult
  $Res call({
    String? displayName,
    String? phone,
    String? password,
    List<String>? assignedBranchIds,
    bool? active,
  });
}

/// @nodoc
class _$VendorUpdateCopyWithImpl<$Res, $Val extends VendorUpdate>
    implements $VendorUpdateCopyWith<$Res> {
  _$VendorUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? assignedBranchIds = freezed,
    Object? active = freezed,
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
            assignedBranchIds: freezed == assignedBranchIds
                ? _value.assignedBranchIds
                : assignedBranchIds // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
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
abstract class _$$VendorUpdateImplCopyWith<$Res>
    implements $VendorUpdateCopyWith<$Res> {
  factory _$$VendorUpdateImplCopyWith(
    _$VendorUpdateImpl value,
    $Res Function(_$VendorUpdateImpl) then,
  ) = __$$VendorUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? displayName,
    String? phone,
    String? password,
    List<String>? assignedBranchIds,
    bool? active,
  });
}

/// @nodoc
class __$$VendorUpdateImplCopyWithImpl<$Res>
    extends _$VendorUpdateCopyWithImpl<$Res, _$VendorUpdateImpl>
    implements _$$VendorUpdateImplCopyWith<$Res> {
  __$$VendorUpdateImplCopyWithImpl(
    _$VendorUpdateImpl _value,
    $Res Function(_$VendorUpdateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VendorUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? assignedBranchIds = freezed,
    Object? active = freezed,
  }) {
    return _then(
      _$VendorUpdateImpl(
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
        assignedBranchIds: freezed == assignedBranchIds
            ? _value._assignedBranchIds
            : assignedBranchIds // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
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
class _$VendorUpdateImpl implements _VendorUpdate {
  const _$VendorUpdateImpl({
    this.displayName,
    this.phone,
    this.password,
    final List<String>? assignedBranchIds,
    this.active,
  }) : _assignedBranchIds = assignedBranchIds;

  factory _$VendorUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorUpdateImplFromJson(json);

  @override
  final String? displayName;
  @override
  final String? phone;
  @override
  final String? password;
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
  final bool? active;

  @override
  String toString() {
    return 'VendorUpdate(displayName: $displayName, phone: $phone, password: $password, assignedBranchIds: $assignedBranchIds, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorUpdateImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(
              other._assignedBranchIds,
              _assignedBranchIds,
            ) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    displayName,
    phone,
    password,
    const DeepCollectionEquality().hash(_assignedBranchIds),
    active,
  );

  /// Create a copy of VendorUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorUpdateImplCopyWith<_$VendorUpdateImpl> get copyWith =>
      __$$VendorUpdateImplCopyWithImpl<_$VendorUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorUpdateImplToJson(this);
  }
}

abstract class _VendorUpdate implements VendorUpdate {
  const factory _VendorUpdate({
    final String? displayName,
    final String? phone,
    final String? password,
    final List<String>? assignedBranchIds,
    final bool? active,
  }) = _$VendorUpdateImpl;

  factory _VendorUpdate.fromJson(Map<String, dynamic> json) =
      _$VendorUpdateImpl.fromJson;

  @override
  String? get displayName;
  @override
  String? get phone;
  @override
  String? get password;
  @override
  List<String>? get assignedBranchIds;
  @override
  bool? get active;

  /// Create a copy of VendorUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorUpdateImplCopyWith<_$VendorUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
