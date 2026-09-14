// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnostic_import_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DiagnosticImportWrite _$DiagnosticImportWriteFromJson(
  Map<String, dynamic> json,
) {
  return _DiagnosticImportWrite.fromJson(json);
}

/// @nodoc
mixin _$DiagnosticImportWrite {
  String get deviceId => throw _privateConstructorUsedError;
  dynamic get payload => throw _privateConstructorUsedError;
  String get signature => throw _privateConstructorUsedError;

  /// Serializes this DiagnosticImportWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiagnosticImportWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiagnosticImportWriteCopyWith<DiagnosticImportWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosticImportWriteCopyWith<$Res> {
  factory $DiagnosticImportWriteCopyWith(
    DiagnosticImportWrite value,
    $Res Function(DiagnosticImportWrite) then,
  ) = _$DiagnosticImportWriteCopyWithImpl<$Res, DiagnosticImportWrite>;
  @useResult
  $Res call({String deviceId, dynamic payload, String signature});
}

/// @nodoc
class _$DiagnosticImportWriteCopyWithImpl<
  $Res,
  $Val extends DiagnosticImportWrite
>
    implements $DiagnosticImportWriteCopyWith<$Res> {
  _$DiagnosticImportWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiagnosticImportWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? payload = freezed,
    Object? signature = null,
  }) {
    return _then(
      _value.copyWith(
            deviceId: null == deviceId
                ? _value.deviceId
                : deviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            payload: freezed == payload
                ? _value.payload
                : payload // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            signature: null == signature
                ? _value.signature
                : signature // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DiagnosticImportWriteImplCopyWith<$Res>
    implements $DiagnosticImportWriteCopyWith<$Res> {
  factory _$$DiagnosticImportWriteImplCopyWith(
    _$DiagnosticImportWriteImpl value,
    $Res Function(_$DiagnosticImportWriteImpl) then,
  ) = __$$DiagnosticImportWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String deviceId, dynamic payload, String signature});
}

/// @nodoc
class __$$DiagnosticImportWriteImplCopyWithImpl<$Res>
    extends
        _$DiagnosticImportWriteCopyWithImpl<$Res, _$DiagnosticImportWriteImpl>
    implements _$$DiagnosticImportWriteImplCopyWith<$Res> {
  __$$DiagnosticImportWriteImplCopyWithImpl(
    _$DiagnosticImportWriteImpl _value,
    $Res Function(_$DiagnosticImportWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DiagnosticImportWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? payload = freezed,
    Object? signature = null,
  }) {
    return _then(
      _$DiagnosticImportWriteImpl(
        deviceId: null == deviceId
            ? _value.deviceId
            : deviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        payload: freezed == payload
            ? _value.payload
            : payload // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        signature: null == signature
            ? _value.signature
            : signature // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DiagnosticImportWriteImpl implements _DiagnosticImportWrite {
  const _$DiagnosticImportWriteImpl({
    required this.deviceId,
    required this.payload,
    required this.signature,
  });

  factory _$DiagnosticImportWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiagnosticImportWriteImplFromJson(json);

  @override
  final String deviceId;
  @override
  final dynamic payload;
  @override
  final String signature;

  @override
  String toString() {
    return 'DiagnosticImportWrite(deviceId: $deviceId, payload: $payload, signature: $signature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiagnosticImportWriteImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            const DeepCollectionEquality().equals(other.payload, payload) &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    deviceId,
    const DeepCollectionEquality().hash(payload),
    signature,
  );

  /// Create a copy of DiagnosticImportWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiagnosticImportWriteImplCopyWith<_$DiagnosticImportWriteImpl>
  get copyWith =>
      __$$DiagnosticImportWriteImplCopyWithImpl<_$DiagnosticImportWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DiagnosticImportWriteImplToJson(this);
  }
}

abstract class _DiagnosticImportWrite implements DiagnosticImportWrite {
  const factory _DiagnosticImportWrite({
    required final String deviceId,
    required final dynamic payload,
    required final String signature,
  }) = _$DiagnosticImportWriteImpl;

  factory _DiagnosticImportWrite.fromJson(Map<String, dynamic> json) =
      _$DiagnosticImportWriteImpl.fromJson;

  @override
  String get deviceId;
  @override
  dynamic get payload;
  @override
  String get signature;

  /// Create a copy of DiagnosticImportWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiagnosticImportWriteImplCopyWith<_$DiagnosticImportWriteImpl>
  get copyWith => throw _privateConstructorUsedError;
}
