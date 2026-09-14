// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_download_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MediaDownloadResponse _$MediaDownloadResponseFromJson(
  Map<String, dynamic> json,
) {
  return _MediaDownloadResponse.fromJson(json);
}

/// @nodoc
mixin _$MediaDownloadResponse {
  bool get success => throw _privateConstructorUsedError;
  Data9 get data => throw _privateConstructorUsedError;

  /// Serializes this MediaDownloadResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaDownloadResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaDownloadResponseCopyWith<MediaDownloadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaDownloadResponseCopyWith<$Res> {
  factory $MediaDownloadResponseCopyWith(
    MediaDownloadResponse value,
    $Res Function(MediaDownloadResponse) then,
  ) = _$MediaDownloadResponseCopyWithImpl<$Res, MediaDownloadResponse>;
  @useResult
  $Res call({bool success, Data9 data});

  $Data9CopyWith<$Res> get data;
}

/// @nodoc
class _$MediaDownloadResponseCopyWithImpl<
  $Res,
  $Val extends MediaDownloadResponse
>
    implements $MediaDownloadResponseCopyWith<$Res> {
  _$MediaDownloadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaDownloadResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as Data9,
          )
          as $Val,
    );
  }

  /// Create a copy of MediaDownloadResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Data9CopyWith<$Res> get data {
    return $Data9CopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MediaDownloadResponseImplCopyWith<$Res>
    implements $MediaDownloadResponseCopyWith<$Res> {
  factory _$$MediaDownloadResponseImplCopyWith(
    _$MediaDownloadResponseImpl value,
    $Res Function(_$MediaDownloadResponseImpl) then,
  ) = __$$MediaDownloadResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Data9 data});

  @override
  $Data9CopyWith<$Res> get data;
}

/// @nodoc
class __$$MediaDownloadResponseImplCopyWithImpl<$Res>
    extends
        _$MediaDownloadResponseCopyWithImpl<$Res, _$MediaDownloadResponseImpl>
    implements _$$MediaDownloadResponseImplCopyWith<$Res> {
  __$$MediaDownloadResponseImplCopyWithImpl(
    _$MediaDownloadResponseImpl _value,
    $Res Function(_$MediaDownloadResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MediaDownloadResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$MediaDownloadResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Data9,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaDownloadResponseImpl implements _MediaDownloadResponse {
  const _$MediaDownloadResponseImpl({
    required this.success,
    required this.data,
  });

  factory _$MediaDownloadResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaDownloadResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Data9 data;

  @override
  String toString() {
    return 'MediaDownloadResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaDownloadResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of MediaDownloadResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaDownloadResponseImplCopyWith<_$MediaDownloadResponseImpl>
  get copyWith =>
      __$$MediaDownloadResponseImplCopyWithImpl<_$MediaDownloadResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaDownloadResponseImplToJson(this);
  }
}

abstract class _MediaDownloadResponse implements MediaDownloadResponse {
  const factory _MediaDownloadResponse({
    required final bool success,
    required final Data9 data,
  }) = _$MediaDownloadResponseImpl;

  factory _MediaDownloadResponse.fromJson(Map<String, dynamic> json) =
      _$MediaDownloadResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Data9 get data;

  /// Create a copy of MediaDownloadResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaDownloadResponseImplCopyWith<_$MediaDownloadResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
