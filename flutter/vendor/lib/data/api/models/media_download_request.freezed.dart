// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_download_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MediaDownloadRequest _$MediaDownloadRequestFromJson(Map<String, dynamic> json) {
  return _MediaDownloadRequest.fromJson(json);
}

/// @nodoc
mixin _$MediaDownloadRequest {
  String get objectKey => throw _privateConstructorUsedError;

  /// Serializes this MediaDownloadRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaDownloadRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaDownloadRequestCopyWith<MediaDownloadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaDownloadRequestCopyWith<$Res> {
  factory $MediaDownloadRequestCopyWith(
    MediaDownloadRequest value,
    $Res Function(MediaDownloadRequest) then,
  ) = _$MediaDownloadRequestCopyWithImpl<$Res, MediaDownloadRequest>;
  @useResult
  $Res call({String objectKey});
}

/// @nodoc
class _$MediaDownloadRequestCopyWithImpl<
  $Res,
  $Val extends MediaDownloadRequest
>
    implements $MediaDownloadRequestCopyWith<$Res> {
  _$MediaDownloadRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaDownloadRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? objectKey = null}) {
    return _then(
      _value.copyWith(
            objectKey: null == objectKey
                ? _value.objectKey
                : objectKey // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MediaDownloadRequestImplCopyWith<$Res>
    implements $MediaDownloadRequestCopyWith<$Res> {
  factory _$$MediaDownloadRequestImplCopyWith(
    _$MediaDownloadRequestImpl value,
    $Res Function(_$MediaDownloadRequestImpl) then,
  ) = __$$MediaDownloadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String objectKey});
}

/// @nodoc
class __$$MediaDownloadRequestImplCopyWithImpl<$Res>
    extends _$MediaDownloadRequestCopyWithImpl<$Res, _$MediaDownloadRequestImpl>
    implements _$$MediaDownloadRequestImplCopyWith<$Res> {
  __$$MediaDownloadRequestImplCopyWithImpl(
    _$MediaDownloadRequestImpl _value,
    $Res Function(_$MediaDownloadRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MediaDownloadRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? objectKey = null}) {
    return _then(
      _$MediaDownloadRequestImpl(
        objectKey: null == objectKey
            ? _value.objectKey
            : objectKey // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaDownloadRequestImpl implements _MediaDownloadRequest {
  const _$MediaDownloadRequestImpl({required this.objectKey});

  factory _$MediaDownloadRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaDownloadRequestImplFromJson(json);

  @override
  final String objectKey;

  @override
  String toString() {
    return 'MediaDownloadRequest(objectKey: $objectKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaDownloadRequestImpl &&
            (identical(other.objectKey, objectKey) ||
                other.objectKey == objectKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, objectKey);

  /// Create a copy of MediaDownloadRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaDownloadRequestImplCopyWith<_$MediaDownloadRequestImpl>
  get copyWith =>
      __$$MediaDownloadRequestImplCopyWithImpl<_$MediaDownloadRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaDownloadRequestImplToJson(this);
  }
}

abstract class _MediaDownloadRequest implements MediaDownloadRequest {
  const factory _MediaDownloadRequest({required final String objectKey}) =
      _$MediaDownloadRequestImpl;

  factory _MediaDownloadRequest.fromJson(Map<String, dynamic> json) =
      _$MediaDownloadRequestImpl.fromJson;

  @override
  String get objectKey;

  /// Create a copy of MediaDownloadRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaDownloadRequestImplCopyWith<_$MediaDownloadRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
