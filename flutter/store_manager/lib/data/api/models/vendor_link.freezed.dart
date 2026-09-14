// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VendorLink _$VendorLinkFromJson(Map<String, dynamic> json) {
  return _VendorLink.fromJson(json);
}

/// @nodoc
mixin _$VendorLink {
  String get email => throw _privateConstructorUsedError;
  List<String> get assignedBranchIds => throw _privateConstructorUsedError;

  /// Serializes this VendorLink to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorLinkCopyWith<VendorLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorLinkCopyWith<$Res> {
  factory $VendorLinkCopyWith(
    VendorLink value,
    $Res Function(VendorLink) then,
  ) = _$VendorLinkCopyWithImpl<$Res, VendorLink>;
  @useResult
  $Res call({String email, List<String> assignedBranchIds});
}

/// @nodoc
class _$VendorLinkCopyWithImpl<$Res, $Val extends VendorLink>
    implements $VendorLinkCopyWith<$Res> {
  _$VendorLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? assignedBranchIds = null}) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            assignedBranchIds: null == assignedBranchIds
                ? _value.assignedBranchIds
                : assignedBranchIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VendorLinkImplCopyWith<$Res>
    implements $VendorLinkCopyWith<$Res> {
  factory _$$VendorLinkImplCopyWith(
    _$VendorLinkImpl value,
    $Res Function(_$VendorLinkImpl) then,
  ) = __$$VendorLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, List<String> assignedBranchIds});
}

/// @nodoc
class __$$VendorLinkImplCopyWithImpl<$Res>
    extends _$VendorLinkCopyWithImpl<$Res, _$VendorLinkImpl>
    implements _$$VendorLinkImplCopyWith<$Res> {
  __$$VendorLinkImplCopyWithImpl(
    _$VendorLinkImpl _value,
    $Res Function(_$VendorLinkImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VendorLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? assignedBranchIds = null}) {
    return _then(
      _$VendorLinkImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        assignedBranchIds: null == assignedBranchIds
            ? _value._assignedBranchIds
            : assignedBranchIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorLinkImpl implements _VendorLink {
  const _$VendorLinkImpl({
    required this.email,
    required final List<String> assignedBranchIds,
  }) : _assignedBranchIds = assignedBranchIds;

  factory _$VendorLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorLinkImplFromJson(json);

  @override
  final String email;
  final List<String> _assignedBranchIds;
  @override
  List<String> get assignedBranchIds {
    if (_assignedBranchIds is EqualUnmodifiableListView)
      return _assignedBranchIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignedBranchIds);
  }

  @override
  String toString() {
    return 'VendorLink(email: $email, assignedBranchIds: $assignedBranchIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorLinkImpl &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(
              other._assignedBranchIds,
              _assignedBranchIds,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    email,
    const DeepCollectionEquality().hash(_assignedBranchIds),
  );

  /// Create a copy of VendorLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorLinkImplCopyWith<_$VendorLinkImpl> get copyWith =>
      __$$VendorLinkImplCopyWithImpl<_$VendorLinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorLinkImplToJson(this);
  }
}

abstract class _VendorLink implements VendorLink {
  const factory _VendorLink({
    required final String email,
    required final List<String> assignedBranchIds,
  }) = _$VendorLinkImpl;

  factory _VendorLink.fromJson(Map<String, dynamic> json) =
      _$VendorLinkImpl.fromJson;

  @override
  String get email;
  @override
  List<String> get assignedBranchIds;

  /// Create a copy of VendorLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorLinkImplCopyWith<_$VendorLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
