// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_sign_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MediaSignRequest _$MediaSignRequestFromJson(Map<String, dynamic> json) {
  return _MediaSignRequest.fromJson(json);
}

/// @nodoc
mixin _$MediaSignRequest {
  MediaSignRequestPurpose get purpose => throw _privateConstructorUsedError;
  String get contentType => throw _privateConstructorUsedError;
  int get sizeBytes => throw _privateConstructorUsedError;
  String get checksumSha256 => throw _privateConstructorUsedError;

  /// Serializes this MediaSignRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaSignRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaSignRequestCopyWith<MediaSignRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaSignRequestCopyWith<$Res> {
  factory $MediaSignRequestCopyWith(
    MediaSignRequest value,
    $Res Function(MediaSignRequest) then,
  ) = _$MediaSignRequestCopyWithImpl<$Res, MediaSignRequest>;
  @useResult
  $Res call({
    MediaSignRequestPurpose purpose,
    String contentType,
    int sizeBytes,
    String checksumSha256,
  });
}

/// @nodoc
class _$MediaSignRequestCopyWithImpl<$Res, $Val extends MediaSignRequest>
    implements $MediaSignRequestCopyWith<$Res> {
  _$MediaSignRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaSignRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purpose = null,
    Object? contentType = null,
    Object? sizeBytes = null,
    Object? checksumSha256 = null,
  }) {
    return _then(
      _value.copyWith(
            purpose: null == purpose
                ? _value.purpose
                : purpose // ignore: cast_nullable_to_non_nullable
                      as MediaSignRequestPurpose,
            contentType: null == contentType
                ? _value.contentType
                : contentType // ignore: cast_nullable_to_non_nullable
                      as String,
            sizeBytes: null == sizeBytes
                ? _value.sizeBytes
                : sizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$MediaSignRequestImplCopyWith<$Res>
    implements $MediaSignRequestCopyWith<$Res> {
  factory _$$MediaSignRequestImplCopyWith(
    _$MediaSignRequestImpl value,
    $Res Function(_$MediaSignRequestImpl) then,
  ) = __$$MediaSignRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    MediaSignRequestPurpose purpose,
    String contentType,
    int sizeBytes,
    String checksumSha256,
  });
}

/// @nodoc
class __$$MediaSignRequestImplCopyWithImpl<$Res>
    extends _$MediaSignRequestCopyWithImpl<$Res, _$MediaSignRequestImpl>
    implements _$$MediaSignRequestImplCopyWith<$Res> {
  __$$MediaSignRequestImplCopyWithImpl(
    _$MediaSignRequestImpl _value,
    $Res Function(_$MediaSignRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MediaSignRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purpose = null,
    Object? contentType = null,
    Object? sizeBytes = null,
    Object? checksumSha256 = null,
  }) {
    return _then(
      _$MediaSignRequestImpl(
        purpose: null == purpose
            ? _value.purpose
            : purpose // ignore: cast_nullable_to_non_nullable
                  as MediaSignRequestPurpose,
        contentType: null == contentType
            ? _value.contentType
            : contentType // ignore: cast_nullable_to_non_nullable
                  as String,
        sizeBytes: null == sizeBytes
            ? _value.sizeBytes
            : sizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$MediaSignRequestImpl implements _MediaSignRequest {
  const _$MediaSignRequestImpl({
    required this.purpose,
    required this.contentType,
    required this.sizeBytes,
    required this.checksumSha256,
  });

  factory _$MediaSignRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaSignRequestImplFromJson(json);

  @override
  final MediaSignRequestPurpose purpose;
  @override
  final String contentType;
  @override
  final int sizeBytes;
  @override
  final String checksumSha256;

  @override
  String toString() {
    return 'MediaSignRequest(purpose: $purpose, contentType: $contentType, sizeBytes: $sizeBytes, checksumSha256: $checksumSha256)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaSignRequestImpl &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes) &&
            (identical(other.checksumSha256, checksumSha256) ||
                other.checksumSha256 == checksumSha256));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, purpose, contentType, sizeBytes, checksumSha256);

  /// Create a copy of MediaSignRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaSignRequestImplCopyWith<_$MediaSignRequestImpl> get copyWith =>
      __$$MediaSignRequestImplCopyWithImpl<_$MediaSignRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaSignRequestImplToJson(this);
  }
}

abstract class _MediaSignRequest implements MediaSignRequest {
  const factory _MediaSignRequest({
    required final MediaSignRequestPurpose purpose,
    required final String contentType,
    required final int sizeBytes,
    required final String checksumSha256,
  }) = _$MediaSignRequestImpl;

  factory _MediaSignRequest.fromJson(Map<String, dynamic> json) =
      _$MediaSignRequestImpl.fromJson;

  @override
  MediaSignRequestPurpose get purpose;
  @override
  String get contentType;
  @override
  int get sizeBytes;
  @override
  String get checksumSha256;

  /// Create a copy of MediaSignRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaSignRequestImplCopyWith<_$MediaSignRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
