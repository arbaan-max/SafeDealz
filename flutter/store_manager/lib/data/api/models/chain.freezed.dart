// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Chain _$ChainFromJson(Map<String, dynamic> json) {
  return _Chain.fromJson(json);
}

/// @nodoc
mixin _$Chain {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  String? get contactName => throw _privateConstructorUsedError;
  String? get contactEmail => throw _privateConstructorUsedError;
  String? get contactPhone => throw _privateConstructorUsedError;
  int? get branchCount => throw _privateConstructorUsedError;

  /// Serializes this Chain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Chain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChainCopyWith<Chain> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainCopyWith<$Res> {
  factory $ChainCopyWith(Chain value, $Res Function(Chain) then) =
      _$ChainCopyWithImpl<$Res, Chain>;
  @useResult
  $Res call({
    String id,
    String name,
    String code,
    bool active,
    String? contactName,
    String? contactEmail,
    String? contactPhone,
    int? branchCount,
  });
}

/// @nodoc
class _$ChainCopyWithImpl<$Res, $Val extends Chain>
    implements $ChainCopyWith<$Res> {
  _$ChainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? active = null,
    Object? contactName = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? branchCount = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            active: null == active
                ? _value.active
                : active // ignore: cast_nullable_to_non_nullable
                      as bool,
            contactName: freezed == contactName
                ? _value.contactName
                : contactName // ignore: cast_nullable_to_non_nullable
                      as String?,
            contactEmail: freezed == contactEmail
                ? _value.contactEmail
                : contactEmail // ignore: cast_nullable_to_non_nullable
                      as String?,
            contactPhone: freezed == contactPhone
                ? _value.contactPhone
                : contactPhone // ignore: cast_nullable_to_non_nullable
                      as String?,
            branchCount: freezed == branchCount
                ? _value.branchCount
                : branchCount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChainImplCopyWith<$Res> implements $ChainCopyWith<$Res> {
  factory _$$ChainImplCopyWith(
    _$ChainImpl value,
    $Res Function(_$ChainImpl) then,
  ) = __$$ChainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String code,
    bool active,
    String? contactName,
    String? contactEmail,
    String? contactPhone,
    int? branchCount,
  });
}

/// @nodoc
class __$$ChainImplCopyWithImpl<$Res>
    extends _$ChainCopyWithImpl<$Res, _$ChainImpl>
    implements _$$ChainImplCopyWith<$Res> {
  __$$ChainImplCopyWithImpl(
    _$ChainImpl _value,
    $Res Function(_$ChainImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Chain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? active = null,
    Object? contactName = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? branchCount = freezed,
  }) {
    return _then(
      _$ChainImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        active: null == active
            ? _value.active
            : active // ignore: cast_nullable_to_non_nullable
                  as bool,
        contactName: freezed == contactName
            ? _value.contactName
            : contactName // ignore: cast_nullable_to_non_nullable
                  as String?,
        contactEmail: freezed == contactEmail
            ? _value.contactEmail
            : contactEmail // ignore: cast_nullable_to_non_nullable
                  as String?,
        contactPhone: freezed == contactPhone
            ? _value.contactPhone
            : contactPhone // ignore: cast_nullable_to_non_nullable
                  as String?,
        branchCount: freezed == branchCount
            ? _value.branchCount
            : branchCount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChainImpl implements _Chain {
  const _$ChainImpl({
    required this.id,
    required this.name,
    required this.code,
    required this.active,
    this.contactName,
    this.contactEmail,
    this.contactPhone,
    this.branchCount,
  });

  factory _$ChainImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChainImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String code;
  @override
  final bool active;
  @override
  final String? contactName;
  @override
  final String? contactEmail;
  @override
  final String? contactPhone;
  @override
  final int? branchCount;

  @override
  String toString() {
    return 'Chain(id: $id, name: $name, code: $code, active: $active, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone, branchCount: $branchCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            (identical(other.branchCount, branchCount) ||
                other.branchCount == branchCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    code,
    active,
    contactName,
    contactEmail,
    contactPhone,
    branchCount,
  );

  /// Create a copy of Chain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainImplCopyWith<_$ChainImpl> get copyWith =>
      __$$ChainImplCopyWithImpl<_$ChainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChainImplToJson(this);
  }
}

abstract class _Chain implements Chain {
  const factory _Chain({
    required final String id,
    required final String name,
    required final String code,
    required final bool active,
    final String? contactName,
    final String? contactEmail,
    final String? contactPhone,
    final int? branchCount,
  }) = _$ChainImpl;

  factory _Chain.fromJson(Map<String, dynamic> json) = _$ChainImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get code;
  @override
  bool get active;
  @override
  String? get contactName;
  @override
  String? get contactEmail;
  @override
  String? get contactPhone;
  @override
  int? get branchCount;

  /// Create a copy of Chain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChainImplCopyWith<_$ChainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
