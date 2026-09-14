// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_revoke.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SessionRevoke _$SessionRevokeFromJson(Map<String, dynamic> json) {
  return _SessionRevoke.fromJson(json);
}

/// @nodoc
mixin _$SessionRevoke {
  String? get id => throw _privateConstructorUsedError;
  bool? get revoked => throw _privateConstructorUsedError;

  /// Serializes this SessionRevoke to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionRevoke
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionRevokeCopyWith<SessionRevoke> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionRevokeCopyWith<$Res> {
  factory $SessionRevokeCopyWith(
    SessionRevoke value,
    $Res Function(SessionRevoke) then,
  ) = _$SessionRevokeCopyWithImpl<$Res, SessionRevoke>;
  @useResult
  $Res call({String? id, bool? revoked});
}

/// @nodoc
class _$SessionRevokeCopyWithImpl<$Res, $Val extends SessionRevoke>
    implements $SessionRevokeCopyWith<$Res> {
  _$SessionRevokeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionRevoke
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? revoked = freezed}) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            revoked: freezed == revoked
                ? _value.revoked
                : revoked // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionRevokeImplCopyWith<$Res>
    implements $SessionRevokeCopyWith<$Res> {
  factory _$$SessionRevokeImplCopyWith(
    _$SessionRevokeImpl value,
    $Res Function(_$SessionRevokeImpl) then,
  ) = __$$SessionRevokeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, bool? revoked});
}

/// @nodoc
class __$$SessionRevokeImplCopyWithImpl<$Res>
    extends _$SessionRevokeCopyWithImpl<$Res, _$SessionRevokeImpl>
    implements _$$SessionRevokeImplCopyWith<$Res> {
  __$$SessionRevokeImplCopyWithImpl(
    _$SessionRevokeImpl _value,
    $Res Function(_$SessionRevokeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionRevoke
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? revoked = freezed}) {
    return _then(
      _$SessionRevokeImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        revoked: freezed == revoked
            ? _value.revoked
            : revoked // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionRevokeImpl implements _SessionRevoke {
  const _$SessionRevokeImpl({this.id, this.revoked});

  factory _$SessionRevokeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionRevokeImplFromJson(json);

  @override
  final String? id;
  @override
  final bool? revoked;

  @override
  String toString() {
    return 'SessionRevoke(id: $id, revoked: $revoked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionRevokeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.revoked, revoked) || other.revoked == revoked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, revoked);

  /// Create a copy of SessionRevoke
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionRevokeImplCopyWith<_$SessionRevokeImpl> get copyWith =>
      __$$SessionRevokeImplCopyWithImpl<_$SessionRevokeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionRevokeImplToJson(this);
  }
}

abstract class _SessionRevoke implements SessionRevoke {
  const factory _SessionRevoke({final String? id, final bool? revoked}) =
      _$SessionRevokeImpl;

  factory _SessionRevoke.fromJson(Map<String, dynamic> json) =
      _$SessionRevokeImpl.fromJson;

  @override
  String? get id;
  @override
  bool? get revoked;

  /// Create a copy of SessionRevoke
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionRevokeImplCopyWith<_$SessionRevokeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
