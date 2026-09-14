// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_change.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PasswordChange _$PasswordChangeFromJson(Map<String, dynamic> json) {
  return _PasswordChange.fromJson(json);
}

/// @nodoc
mixin _$PasswordChange {
  bool? get revokedSessions => throw _privateConstructorUsedError;

  /// Serializes this PasswordChange to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordChange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordChangeCopyWith<PasswordChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangeCopyWith<$Res> {
  factory $PasswordChangeCopyWith(
    PasswordChange value,
    $Res Function(PasswordChange) then,
  ) = _$PasswordChangeCopyWithImpl<$Res, PasswordChange>;
  @useResult
  $Res call({bool? revokedSessions});
}

/// @nodoc
class _$PasswordChangeCopyWithImpl<$Res, $Val extends PasswordChange>
    implements $PasswordChangeCopyWith<$Res> {
  _$PasswordChangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordChange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? revokedSessions = freezed}) {
    return _then(
      _value.copyWith(
            revokedSessions: freezed == revokedSessions
                ? _value.revokedSessions
                : revokedSessions // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PasswordChangeImplCopyWith<$Res>
    implements $PasswordChangeCopyWith<$Res> {
  factory _$$PasswordChangeImplCopyWith(
    _$PasswordChangeImpl value,
    $Res Function(_$PasswordChangeImpl) then,
  ) = __$$PasswordChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? revokedSessions});
}

/// @nodoc
class __$$PasswordChangeImplCopyWithImpl<$Res>
    extends _$PasswordChangeCopyWithImpl<$Res, _$PasswordChangeImpl>
    implements _$$PasswordChangeImplCopyWith<$Res> {
  __$$PasswordChangeImplCopyWithImpl(
    _$PasswordChangeImpl _value,
    $Res Function(_$PasswordChangeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PasswordChange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? revokedSessions = freezed}) {
    return _then(
      _$PasswordChangeImpl(
        revokedSessions: freezed == revokedSessions
            ? _value.revokedSessions
            : revokedSessions // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordChangeImpl implements _PasswordChange {
  const _$PasswordChangeImpl({this.revokedSessions});

  factory _$PasswordChangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordChangeImplFromJson(json);

  @override
  final bool? revokedSessions;

  @override
  String toString() {
    return 'PasswordChange(revokedSessions: $revokedSessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangeImpl &&
            (identical(other.revokedSessions, revokedSessions) ||
                other.revokedSessions == revokedSessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, revokedSessions);

  /// Create a copy of PasswordChange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangeImplCopyWith<_$PasswordChangeImpl> get copyWith =>
      __$$PasswordChangeImplCopyWithImpl<_$PasswordChangeImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordChangeImplToJson(this);
  }
}

abstract class _PasswordChange implements PasswordChange {
  const factory _PasswordChange({final bool? revokedSessions}) =
      _$PasswordChangeImpl;

  factory _PasswordChange.fromJson(Map<String, dynamic> json) =
      _$PasswordChangeImpl.fromJson;

  @override
  bool? get revokedSessions;

  /// Create a copy of PasswordChange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangeImplCopyWith<_$PasswordChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
