// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeviceMedia _$DeviceMediaFromJson(Map<String, dynamic> json) {
  return _DeviceMedia.fromJson(json);
}

/// @nodoc
mixin _$DeviceMedia {
  String? get id => throw _privateConstructorUsedError;
  String? get purpose => throw _privateConstructorUsedError;
  String? get objectKey => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;
  int? get sizeBytes => throw _privateConstructorUsedError;

  /// Serializes this DeviceMedia to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceMediaCopyWith<DeviceMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceMediaCopyWith<$Res> {
  factory $DeviceMediaCopyWith(
    DeviceMedia value,
    $Res Function(DeviceMedia) then,
  ) = _$DeviceMediaCopyWithImpl<$Res, DeviceMedia>;
  @useResult
  $Res call({
    String? id,
    String? purpose,
    String? objectKey,
    String? contentType,
    int? sizeBytes,
  });
}

/// @nodoc
class _$DeviceMediaCopyWithImpl<$Res, $Val extends DeviceMedia>
    implements $DeviceMediaCopyWith<$Res> {
  _$DeviceMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? purpose = freezed,
    Object? objectKey = freezed,
    Object? contentType = freezed,
    Object? sizeBytes = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            purpose: freezed == purpose
                ? _value.purpose
                : purpose // ignore: cast_nullable_to_non_nullable
                      as String?,
            objectKey: freezed == objectKey
                ? _value.objectKey
                : objectKey // ignore: cast_nullable_to_non_nullable
                      as String?,
            contentType: freezed == contentType
                ? _value.contentType
                : contentType // ignore: cast_nullable_to_non_nullable
                      as String?,
            sizeBytes: freezed == sizeBytes
                ? _value.sizeBytes
                : sizeBytes // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeviceMediaImplCopyWith<$Res>
    implements $DeviceMediaCopyWith<$Res> {
  factory _$$DeviceMediaImplCopyWith(
    _$DeviceMediaImpl value,
    $Res Function(_$DeviceMediaImpl) then,
  ) = __$$DeviceMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? purpose,
    String? objectKey,
    String? contentType,
    int? sizeBytes,
  });
}

/// @nodoc
class __$$DeviceMediaImplCopyWithImpl<$Res>
    extends _$DeviceMediaCopyWithImpl<$Res, _$DeviceMediaImpl>
    implements _$$DeviceMediaImplCopyWith<$Res> {
  __$$DeviceMediaImplCopyWithImpl(
    _$DeviceMediaImpl _value,
    $Res Function(_$DeviceMediaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeviceMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? purpose = freezed,
    Object? objectKey = freezed,
    Object? contentType = freezed,
    Object? sizeBytes = freezed,
  }) {
    return _then(
      _$DeviceMediaImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        purpose: freezed == purpose
            ? _value.purpose
            : purpose // ignore: cast_nullable_to_non_nullable
                  as String?,
        objectKey: freezed == objectKey
            ? _value.objectKey
            : objectKey // ignore: cast_nullable_to_non_nullable
                  as String?,
        contentType: freezed == contentType
            ? _value.contentType
            : contentType // ignore: cast_nullable_to_non_nullable
                  as String?,
        sizeBytes: freezed == sizeBytes
            ? _value.sizeBytes
            : sizeBytes // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceMediaImpl implements _DeviceMedia {
  const _$DeviceMediaImpl({
    this.id,
    this.purpose,
    this.objectKey,
    this.contentType,
    this.sizeBytes,
  });

  factory _$DeviceMediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceMediaImplFromJson(json);

  @override
  final String? id;
  @override
  final String? purpose;
  @override
  final String? objectKey;
  @override
  final String? contentType;
  @override
  final int? sizeBytes;

  @override
  String toString() {
    return 'DeviceMedia(id: $id, purpose: $purpose, objectKey: $objectKey, contentType: $contentType, sizeBytes: $sizeBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceMediaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.objectKey, objectKey) ||
                other.objectKey == objectKey) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, purpose, objectKey, contentType, sizeBytes);

  /// Create a copy of DeviceMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceMediaImplCopyWith<_$DeviceMediaImpl> get copyWith =>
      __$$DeviceMediaImplCopyWithImpl<_$DeviceMediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceMediaImplToJson(this);
  }
}

abstract class _DeviceMedia implements DeviceMedia {
  const factory _DeviceMedia({
    final String? id,
    final String? purpose,
    final String? objectKey,
    final String? contentType,
    final int? sizeBytes,
  }) = _$DeviceMediaImpl;

  factory _DeviceMedia.fromJson(Map<String, dynamic> json) =
      _$DeviceMediaImpl.fromJson;

  @override
  String? get id;
  @override
  String? get purpose;
  @override
  String? get objectKey;
  @override
  String? get contentType;
  @override
  int? get sizeBytes;

  /// Create a copy of DeviceMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceMediaImplCopyWith<_$DeviceMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
