// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_complete_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MediaCompleteRequest _$MediaCompleteRequestFromJson(Map<String, dynamic> json) {
  return _MediaCompleteRequest.fromJson(json);
}

/// @nodoc
mixin _$MediaCompleteRequest {
  String get objectKey => throw _privateConstructorUsedError;
  String get checksumSha256 => throw _privateConstructorUsedError;

  /// Serializes this MediaCompleteRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaCompleteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaCompleteRequestCopyWith<MediaCompleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCompleteRequestCopyWith<$Res> {
  factory $MediaCompleteRequestCopyWith(
    MediaCompleteRequest value,
    $Res Function(MediaCompleteRequest) then,
  ) = _$MediaCompleteRequestCopyWithImpl<$Res, MediaCompleteRequest>;
  @useResult
  $Res call({String objectKey, String checksumSha256});
}

/// @nodoc
class _$MediaCompleteRequestCopyWithImpl<
  $Res,
  $Val extends MediaCompleteRequest
>
    implements $MediaCompleteRequestCopyWith<$Res> {
  _$MediaCompleteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaCompleteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? objectKey = null, Object? checksumSha256 = null}) {
    return _then(
      _value.copyWith(
            objectKey: null == objectKey
                ? _value.objectKey
                : objectKey // ignore: cast_nullable_to_non_nullable
                      as String,
            checksumSha256: null == checksumSha256
                ? _value.checksumSha256
                : checksumSha256 // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MediaCompleteRequestImplCopyWith<$Res>
    implements $MediaCompleteRequestCopyWith<$Res> {
  factory _$$MediaCompleteRequestImplCopyWith(
    _$MediaCompleteRequestImpl value,
    $Res Function(_$MediaCompleteRequestImpl) then,
  ) = __$$MediaCompleteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String objectKey, String checksumSha256});
}

/// @nodoc
class __$$MediaCompleteRequestImplCopyWithImpl<$Res>
    extends _$MediaCompleteRequestCopyWithImpl<$Res, _$MediaCompleteRequestImpl>
    implements _$$MediaCompleteRequestImplCopyWith<$Res> {
  __$$MediaCompleteRequestImplCopyWithImpl(
    _$MediaCompleteRequestImpl _value,
    $Res Function(_$MediaCompleteRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MediaCompleteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? objectKey = null, Object? checksumSha256 = null}) {
    return _then(
      _$MediaCompleteRequestImpl(
        objectKey: null == objectKey
            ? _value.objectKey
            : objectKey // ignore: cast_nullable_to_non_nullable
                  as String,
        checksumSha256: null == checksumSha256
            ? _value.checksumSha256
            : checksumSha256 // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaCompleteRequestImpl implements _MediaCompleteRequest {
  const _$MediaCompleteRequestImpl({
    required this.objectKey,
    required this.checksumSha256,
  });

  factory _$MediaCompleteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaCompleteRequestImplFromJson(json);

  @override
  final String objectKey;
  @override
  final String checksumSha256;

  @override
  String toString() {
    return 'MediaCompleteRequest(objectKey: $objectKey, checksumSha256: $checksumSha256)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaCompleteRequestImpl &&
            (identical(other.objectKey, objectKey) ||
                other.objectKey == objectKey) &&
            (identical(other.checksumSha256, checksumSha256) ||
                other.checksumSha256 == checksumSha256));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, objectKey, checksumSha256);

  /// Create a copy of MediaCompleteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaCompleteRequestImplCopyWith<_$MediaCompleteRequestImpl>
  get copyWith =>
      __$$MediaCompleteRequestImplCopyWithImpl<_$MediaCompleteRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaCompleteRequestImplToJson(this);
  }
}

abstract class _MediaCompleteRequest implements MediaCompleteRequest {
  const factory _MediaCompleteRequest({
    required final String objectKey,
    required final String checksumSha256,
  }) = _$MediaCompleteRequestImpl;

  factory _MediaCompleteRequest.fromJson(Map<String, dynamic> json) =
      _$MediaCompleteRequestImpl.fromJson;

  @override
  String get objectKey;
  @override
  String get checksumSha256;

  /// Create a copy of MediaCompleteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaCompleteRequestImplCopyWith<_$MediaCompleteRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
