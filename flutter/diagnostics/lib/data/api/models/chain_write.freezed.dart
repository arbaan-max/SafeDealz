// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chain_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChainWrite _$ChainWriteFromJson(Map<String, dynamic> json) {
  return _ChainWrite.fromJson(json);
}

/// @nodoc
mixin _$ChainWrite {
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get contactName => throw _privateConstructorUsedError;
  String? get contactEmail => throw _privateConstructorUsedError;
  String? get contactPhone => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  /// Serializes this ChainWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChainWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChainWriteCopyWith<ChainWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainWriteCopyWith<$Res> {
  factory $ChainWriteCopyWith(
    ChainWrite value,
    $Res Function(ChainWrite) then,
  ) = _$ChainWriteCopyWithImpl<$Res, ChainWrite>;
  @useResult
  $Res call({
    String? name,
    String? code,
    String? contactName,
    String? contactEmail,
    String? contactPhone,
    bool? active,
  });
}

/// @nodoc
class _$ChainWriteCopyWithImpl<$Res, $Val extends ChainWrite>
    implements $ChainWriteCopyWith<$Res> {
  _$ChainWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChainWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? contactName = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? active = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            code: freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$ChainWriteImplCopyWith<$Res>
    implements $ChainWriteCopyWith<$Res> {
  factory _$$ChainWriteImplCopyWith(
    _$ChainWriteImpl value,
    $Res Function(_$ChainWriteImpl) then,
  ) = __$$ChainWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? name,
    String? code,
    String? contactName,
    String? contactEmail,
    String? contactPhone,
    bool? active,
  });
}

/// @nodoc
class __$$ChainWriteImplCopyWithImpl<$Res>
    extends _$ChainWriteCopyWithImpl<$Res, _$ChainWriteImpl>
    implements _$$ChainWriteImplCopyWith<$Res> {
  __$$ChainWriteImplCopyWithImpl(
    _$ChainWriteImpl _value,
    $Res Function(_$ChainWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChainWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? contactName = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? active = freezed,
  }) {
    return _then(
      _$ChainWriteImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$ChainWriteImpl implements _ChainWrite {
  const _$ChainWriteImpl({
    this.name,
    this.code,
    this.contactName,
    this.contactEmail,
    this.contactPhone,
    this.active,
  });

  factory _$ChainWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChainWriteImplFromJson(json);

  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? contactName;
  @override
  final String? contactEmail;
  @override
  final String? contactPhone;
  @override
  final bool? active;

  @override
  String toString() {
    return 'ChainWrite(name: $name, code: $code, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainWriteImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    code,
    contactName,
    contactEmail,
    contactPhone,
    active,
  );

  /// Create a copy of ChainWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainWriteImplCopyWith<_$ChainWriteImpl> get copyWith =>
      __$$ChainWriteImplCopyWithImpl<_$ChainWriteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChainWriteImplToJson(this);
  }
}

abstract class _ChainWrite implements ChainWrite {
  const factory _ChainWrite({
    final String? name,
    final String? code,
    final String? contactName,
    final String? contactEmail,
    final String? contactPhone,
    final bool? active,
  }) = _$ChainWriteImpl;

  factory _ChainWrite.fromJson(Map<String, dynamic> json) =
      _$ChainWriteImpl.fromJson;

  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get contactName;
  @override
  String? get contactEmail;
  @override
  String? get contactPhone;
  @override
  bool? get active;

  /// Create a copy of ChainWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChainWriteImplCopyWith<_$ChainWriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
