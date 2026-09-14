// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data7.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Data7 _$Data7FromJson(Map<String, dynamic> json) {
  return _Data7.fromJson(json);
}

/// @nodoc
mixin _$Data7 {
  String? get mediaId => throw _privateConstructorUsedError;
  String? get objectKey => throw _privateConstructorUsedError;
  SignedUrl? get upload => throw _privateConstructorUsedError;

  /// Serializes this Data7 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data7
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Data7CopyWith<Data7> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Data7CopyWith<$Res> {
  factory $Data7CopyWith(Data7 value, $Res Function(Data7) then) =
      _$Data7CopyWithImpl<$Res, Data7>;
  @useResult
  $Res call({String? mediaId, String? objectKey, SignedUrl? upload});

  $SignedUrlCopyWith<$Res>? get upload;
}

/// @nodoc
class _$Data7CopyWithImpl<$Res, $Val extends Data7>
    implements $Data7CopyWith<$Res> {
  _$Data7CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data7
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaId = freezed,
    Object? objectKey = freezed,
    Object? upload = freezed,
  }) {
    return _then(
      _value.copyWith(
            mediaId: freezed == mediaId
                ? _value.mediaId
                : mediaId // ignore: cast_nullable_to_non_nullable
                      as String?,
            objectKey: freezed == objectKey
                ? _value.objectKey
                : objectKey // ignore: cast_nullable_to_non_nullable
                      as String?,
            upload: freezed == upload
                ? _value.upload
                : upload // ignore: cast_nullable_to_non_nullable
                      as SignedUrl?,
          )
          as $Val,
    );
  }

  /// Create a copy of Data7
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignedUrlCopyWith<$Res>? get upload {
    if (_value.upload == null) {
      return null;
    }

    return $SignedUrlCopyWith<$Res>(_value.upload!, (value) {
      return _then(_value.copyWith(upload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Data7ImplCopyWith<$Res> implements $Data7CopyWith<$Res> {
  factory _$$Data7ImplCopyWith(
    _$Data7Impl value,
    $Res Function(_$Data7Impl) then,
  ) = __$$Data7ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? mediaId, String? objectKey, SignedUrl? upload});

  @override
  $SignedUrlCopyWith<$Res>? get upload;
}

/// @nodoc
class __$$Data7ImplCopyWithImpl<$Res>
    extends _$Data7CopyWithImpl<$Res, _$Data7Impl>
    implements _$$Data7ImplCopyWith<$Res> {
  __$$Data7ImplCopyWithImpl(
    _$Data7Impl _value,
    $Res Function(_$Data7Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of Data7
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaId = freezed,
    Object? objectKey = freezed,
    Object? upload = freezed,
  }) {
    return _then(
      _$Data7Impl(
        mediaId: freezed == mediaId
            ? _value.mediaId
            : mediaId // ignore: cast_nullable_to_non_nullable
                  as String?,
        objectKey: freezed == objectKey
            ? _value.objectKey
            : objectKey // ignore: cast_nullable_to_non_nullable
                  as String?,
        upload: freezed == upload
            ? _value.upload
            : upload // ignore: cast_nullable_to_non_nullable
                  as SignedUrl?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Data7Impl implements _Data7 {
  const _$Data7Impl({this.mediaId, this.objectKey, this.upload});

  factory _$Data7Impl.fromJson(Map<String, dynamic> json) =>
      _$$Data7ImplFromJson(json);

  @override
  final String? mediaId;
  @override
  final String? objectKey;
  @override
  final SignedUrl? upload;

  @override
  String toString() {
    return 'Data7(mediaId: $mediaId, objectKey: $objectKey, upload: $upload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data7Impl &&
            (identical(other.mediaId, mediaId) || other.mediaId == mediaId) &&
            (identical(other.objectKey, objectKey) ||
                other.objectKey == objectKey) &&
            (identical(other.upload, upload) || other.upload == upload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mediaId, objectKey, upload);

  /// Create a copy of Data7
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Data7ImplCopyWith<_$Data7Impl> get copyWith =>
      __$$Data7ImplCopyWithImpl<_$Data7Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Data7ImplToJson(this);
  }
}

abstract class _Data7 implements Data7 {
  const factory _Data7({
    final String? mediaId,
    final String? objectKey,
    final SignedUrl? upload,
  }) = _$Data7Impl;

  factory _Data7.fromJson(Map<String, dynamic> json) = _$Data7Impl.fromJson;

  @override
  String? get mediaId;
  @override
  String? get objectKey;
  @override
  SignedUrl? get upload;

  /// Create a copy of Data7
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Data7ImplCopyWith<_$Data7Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
