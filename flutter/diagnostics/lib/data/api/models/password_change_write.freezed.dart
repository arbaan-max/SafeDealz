// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_change_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PasswordChangeWrite _$PasswordChangeWriteFromJson(Map<String, dynamic> json) {
  return _PasswordChangeWrite.fromJson(json);
}

/// @nodoc
mixin _$PasswordChangeWrite {
  String get currentPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;

  /// Serializes this PasswordChangeWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordChangeWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordChangeWriteCopyWith<PasswordChangeWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangeWriteCopyWith<$Res> {
  factory $PasswordChangeWriteCopyWith(
    PasswordChangeWrite value,
    $Res Function(PasswordChangeWrite) then,
  ) = _$PasswordChangeWriteCopyWithImpl<$Res, PasswordChangeWrite>;
  @useResult
  $Res call({String currentPassword, String newPassword});
}

/// @nodoc
class _$PasswordChangeWriteCopyWithImpl<$Res, $Val extends PasswordChangeWrite>
    implements $PasswordChangeWriteCopyWith<$Res> {
  _$PasswordChangeWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordChangeWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentPassword = null, Object? newPassword = null}) {
    return _then(
      _value.copyWith(
            currentPassword: null == currentPassword
                ? _value.currentPassword
                : currentPassword // ignore: cast_nullable_to_non_nullable
                      as String,
            newPassword: null == newPassword
                ? _value.newPassword
                : newPassword // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PasswordChangeWriteImplCopyWith<$Res>
    implements $PasswordChangeWriteCopyWith<$Res> {
  factory _$$PasswordChangeWriteImplCopyWith(
    _$PasswordChangeWriteImpl value,
    $Res Function(_$PasswordChangeWriteImpl) then,
  ) = __$$PasswordChangeWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentPassword, String newPassword});
}

/// @nodoc
class __$$PasswordChangeWriteImplCopyWithImpl<$Res>
    extends _$PasswordChangeWriteCopyWithImpl<$Res, _$PasswordChangeWriteImpl>
    implements _$$PasswordChangeWriteImplCopyWith<$Res> {
  __$$PasswordChangeWriteImplCopyWithImpl(
    _$PasswordChangeWriteImpl _value,
    $Res Function(_$PasswordChangeWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PasswordChangeWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentPassword = null, Object? newPassword = null}) {
    return _then(
      _$PasswordChangeWriteImpl(
        currentPassword: null == currentPassword
            ? _value.currentPassword
            : currentPassword // ignore: cast_nullable_to_non_nullable
                  as String,
        newPassword: null == newPassword
            ? _value.newPassword
            : newPassword // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordChangeWriteImpl implements _PasswordChangeWrite {
  const _$PasswordChangeWriteImpl({
    required this.currentPassword,
    required this.newPassword,
  });

  factory _$PasswordChangeWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordChangeWriteImplFromJson(json);

  @override
  final String currentPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'PasswordChangeWrite(currentPassword: $currentPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangeWriteImpl &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentPassword, newPassword);

  /// Create a copy of PasswordChangeWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangeWriteImplCopyWith<_$PasswordChangeWriteImpl> get copyWith =>
      __$$PasswordChangeWriteImplCopyWithImpl<_$PasswordChangeWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordChangeWriteImplToJson(this);
  }
}

abstract class _PasswordChangeWrite implements PasswordChangeWrite {
  const factory _PasswordChangeWrite({
    required final String currentPassword,
    required final String newPassword,
  }) = _$PasswordChangeWriteImpl;

  factory _PasswordChangeWrite.fromJson(Map<String, dynamic> json) =
      _$PasswordChangeWriteImpl.fromJson;

  @override
  String get currentPassword;
  @override
  String get newPassword;

  /// Create a copy of PasswordChangeWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangeWriteImplCopyWith<_$PasswordChangeWriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
