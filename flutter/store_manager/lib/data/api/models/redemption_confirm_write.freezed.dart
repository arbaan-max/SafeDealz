// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redemption_confirm_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RedemptionConfirmWrite _$RedemptionConfirmWriteFromJson(
  Map<String, dynamic> json,
) {
  return _RedemptionConfirmWrite.fromJson(json);
}

/// @nodoc
mixin _$RedemptionConfirmWrite {
  String get otp => throw _privateConstructorUsedError;

  /// Serializes this RedemptionConfirmWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RedemptionConfirmWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RedemptionConfirmWriteCopyWith<RedemptionConfirmWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedemptionConfirmWriteCopyWith<$Res> {
  factory $RedemptionConfirmWriteCopyWith(
    RedemptionConfirmWrite value,
    $Res Function(RedemptionConfirmWrite) then,
  ) = _$RedemptionConfirmWriteCopyWithImpl<$Res, RedemptionConfirmWrite>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class _$RedemptionConfirmWriteCopyWithImpl<
  $Res,
  $Val extends RedemptionConfirmWrite
>
    implements $RedemptionConfirmWriteCopyWith<$Res> {
  _$RedemptionConfirmWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RedemptionConfirmWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? otp = null}) {
    return _then(
      _value.copyWith(
            otp: null == otp
                ? _value.otp
                : otp // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RedemptionConfirmWriteImplCopyWith<$Res>
    implements $RedemptionConfirmWriteCopyWith<$Res> {
  factory _$$RedemptionConfirmWriteImplCopyWith(
    _$RedemptionConfirmWriteImpl value,
    $Res Function(_$RedemptionConfirmWriteImpl) then,
  ) = __$$RedemptionConfirmWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$RedemptionConfirmWriteImplCopyWithImpl<$Res>
    extends
        _$RedemptionConfirmWriteCopyWithImpl<$Res, _$RedemptionConfirmWriteImpl>
    implements _$$RedemptionConfirmWriteImplCopyWith<$Res> {
  __$$RedemptionConfirmWriteImplCopyWithImpl(
    _$RedemptionConfirmWriteImpl _value,
    $Res Function(_$RedemptionConfirmWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RedemptionConfirmWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? otp = null}) {
    return _then(
      _$RedemptionConfirmWriteImpl(
        otp: null == otp
            ? _value.otp
            : otp // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RedemptionConfirmWriteImpl implements _RedemptionConfirmWrite {
  const _$RedemptionConfirmWriteImpl({required this.otp});

  factory _$RedemptionConfirmWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedemptionConfirmWriteImplFromJson(json);

  @override
  final String otp;

  @override
  String toString() {
    return 'RedemptionConfirmWrite(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedemptionConfirmWriteImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otp);

  /// Create a copy of RedemptionConfirmWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedemptionConfirmWriteImplCopyWith<_$RedemptionConfirmWriteImpl>
  get copyWith =>
      __$$RedemptionConfirmWriteImplCopyWithImpl<_$RedemptionConfirmWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RedemptionConfirmWriteImplToJson(this);
  }
}

abstract class _RedemptionConfirmWrite implements RedemptionConfirmWrite {
  const factory _RedemptionConfirmWrite({required final String otp}) =
      _$RedemptionConfirmWriteImpl;

  factory _RedemptionConfirmWrite.fromJson(Map<String, dynamic> json) =
      _$RedemptionConfirmWriteImpl.fromJson;

  @override
  String get otp;

  /// Create a copy of RedemptionConfirmWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedemptionConfirmWriteImplCopyWith<_$RedemptionConfirmWriteImpl>
  get copyWith => throw _privateConstructorUsedError;
}
