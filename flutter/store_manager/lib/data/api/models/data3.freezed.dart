// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Data3 _$Data3FromJson(Map<String, dynamic> json) {
  return _Data3.fromJson(json);
}

/// @nodoc
mixin _$Data3 {
  String? get mediaId => throw _privateConstructorUsedError;
  String? get objectKey => throw _privateConstructorUsedError;
  SignedUrl? get upload => throw _privateConstructorUsedError;

  /// Serializes this Data3 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Data3CopyWith<Data3> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Data3CopyWith<$Res> {
  factory $Data3CopyWith(Data3 value, $Res Function(Data3) then) =
      _$Data3CopyWithImpl<$Res, Data3>;
  @useResult
  $Res call({String? mediaId, String? objectKey, SignedUrl? upload});

  $SignedUrlCopyWith<$Res>? get upload;
}

/// @nodoc
class _$Data3CopyWithImpl<$Res, $Val extends Data3>
    implements $Data3CopyWith<$Res> {
  _$Data3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data3
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

  /// Create a copy of Data3
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
abstract class _$$Data3ImplCopyWith<$Res> implements $Data3CopyWith<$Res> {
  factory _$$Data3ImplCopyWith(
    _$Data3Impl value,
    $Res Function(_$Data3Impl) then,
  ) = __$$Data3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? mediaId, String? objectKey, SignedUrl? upload});

  @override
  $SignedUrlCopyWith<$Res>? get upload;
}

/// @nodoc
class __$$Data3ImplCopyWithImpl<$Res>
    extends _$Data3CopyWithImpl<$Res, _$Data3Impl>
    implements _$$Data3ImplCopyWith<$Res> {
  __$$Data3ImplCopyWithImpl(
    _$Data3Impl _value,
    $Res Function(_$Data3Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of Data3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaId = freezed,
    Object? objectKey = freezed,
    Object? upload = freezed,
  }) {
    return _then(
      _$Data3Impl(
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
class _$Data3Impl implements _Data3 {
  const _$Data3Impl({this.mediaId, this.objectKey, this.upload});

  factory _$Data3Impl.fromJson(Map<String, dynamic> json) =>
      _$$Data3ImplFromJson(json);

  @override
  final String? mediaId;
  @override
  final String? objectKey;
  @override
  final SignedUrl? upload;

  @override
  String toString() {
    return 'Data3(mediaId: $mediaId, objectKey: $objectKey, upload: $upload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data3Impl &&
            (identical(other.mediaId, mediaId) || other.mediaId == mediaId) &&
            (identical(other.objectKey, objectKey) ||
                other.objectKey == objectKey) &&
            (identical(other.upload, upload) || other.upload == upload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mediaId, objectKey, upload);

  /// Create a copy of Data3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Data3ImplCopyWith<_$Data3Impl> get copyWith =>
      __$$Data3ImplCopyWithImpl<_$Data3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Data3ImplToJson(this);
  }
}

abstract class _Data3 implements Data3 {
  const factory _Data3({
    final String? mediaId,
    final String? objectKey,
    final SignedUrl? upload,
  }) = _$Data3Impl;

  factory _Data3.fromJson(Map<String, dynamic> json) = _$Data3Impl.fromJson;

  @override
  String? get mediaId;
  @override
  String? get objectKey;
  @override
  SignedUrl? get upload;

  /// Create a copy of Data3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Data3ImplCopyWith<_$Data3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
