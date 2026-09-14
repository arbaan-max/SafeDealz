// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_release_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WalletReleaseWrite _$WalletReleaseWriteFromJson(Map<String, dynamic> json) {
  return _WalletReleaseWrite.fromJson(json);
}

/// @nodoc
mixin _$WalletReleaseWrite {
  String get idempotencyKey => throw _privateConstructorUsedError;

  /// Serializes this WalletReleaseWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletReleaseWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletReleaseWriteCopyWith<WalletReleaseWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletReleaseWriteCopyWith<$Res> {
  factory $WalletReleaseWriteCopyWith(
    WalletReleaseWrite value,
    $Res Function(WalletReleaseWrite) then,
  ) = _$WalletReleaseWriteCopyWithImpl<$Res, WalletReleaseWrite>;
  @useResult
  $Res call({String idempotencyKey});
}

/// @nodoc
class _$WalletReleaseWriteCopyWithImpl<$Res, $Val extends WalletReleaseWrite>
    implements $WalletReleaseWriteCopyWith<$Res> {
  _$WalletReleaseWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletReleaseWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? idempotencyKey = null}) {
    return _then(
      _value.copyWith(
            idempotencyKey: null == idempotencyKey
                ? _value.idempotencyKey
                : idempotencyKey // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WalletReleaseWriteImplCopyWith<$Res>
    implements $WalletReleaseWriteCopyWith<$Res> {
  factory _$$WalletReleaseWriteImplCopyWith(
    _$WalletReleaseWriteImpl value,
    $Res Function(_$WalletReleaseWriteImpl) then,
  ) = __$$WalletReleaseWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idempotencyKey});
}

/// @nodoc
class __$$WalletReleaseWriteImplCopyWithImpl<$Res>
    extends _$WalletReleaseWriteCopyWithImpl<$Res, _$WalletReleaseWriteImpl>
    implements _$$WalletReleaseWriteImplCopyWith<$Res> {
  __$$WalletReleaseWriteImplCopyWithImpl(
    _$WalletReleaseWriteImpl _value,
    $Res Function(_$WalletReleaseWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalletReleaseWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? idempotencyKey = null}) {
    return _then(
      _$WalletReleaseWriteImpl(
        idempotencyKey: null == idempotencyKey
            ? _value.idempotencyKey
            : idempotencyKey // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletReleaseWriteImpl implements _WalletReleaseWrite {
  const _$WalletReleaseWriteImpl({required this.idempotencyKey});

  factory _$WalletReleaseWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletReleaseWriteImplFromJson(json);

  @override
  final String idempotencyKey;

  @override
  String toString() {
    return 'WalletReleaseWrite(idempotencyKey: $idempotencyKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletReleaseWriteImpl &&
            (identical(other.idempotencyKey, idempotencyKey) ||
                other.idempotencyKey == idempotencyKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idempotencyKey);

  /// Create a copy of WalletReleaseWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletReleaseWriteImplCopyWith<_$WalletReleaseWriteImpl> get copyWith =>
      __$$WalletReleaseWriteImplCopyWithImpl<_$WalletReleaseWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletReleaseWriteImplToJson(this);
  }
}

abstract class _WalletReleaseWrite implements WalletReleaseWrite {
  const factory _WalletReleaseWrite({required final String idempotencyKey}) =
      _$WalletReleaseWriteImpl;

  factory _WalletReleaseWrite.fromJson(Map<String, dynamic> json) =
      _$WalletReleaseWriteImpl.fromJson;

  @override
  String get idempotencyKey;

  /// Create a copy of WalletReleaseWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletReleaseWriteImplCopyWith<_$WalletReleaseWriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
