// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SupportTicketAttachment _$SupportTicketAttachmentFromJson(
  Map<String, dynamic> json,
) {
  return _SupportTicketAttachment.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketAttachment {
  String? get id => throw _privateConstructorUsedError;
  String? get objectKey => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;
  int? get sizeBytes => throw _privateConstructorUsedError;
  SupportTicketAttachmentStatus? get status =>
      throw _privateConstructorUsedError;

  /// Serializes this SupportTicketAttachment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketAttachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketAttachmentCopyWith<SupportTicketAttachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketAttachmentCopyWith<$Res> {
  factory $SupportTicketAttachmentCopyWith(
    SupportTicketAttachment value,
    $Res Function(SupportTicketAttachment) then,
  ) = _$SupportTicketAttachmentCopyWithImpl<$Res, SupportTicketAttachment>;
  @useResult
  $Res call({
    String? id,
    String? objectKey,
    String? contentType,
    int? sizeBytes,
    SupportTicketAttachmentStatus? status,
  });
}

/// @nodoc
class _$SupportTicketAttachmentCopyWithImpl<
  $Res,
  $Val extends SupportTicketAttachment
>
    implements $SupportTicketAttachmentCopyWith<$Res> {
  _$SupportTicketAttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketAttachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? objectKey = freezed,
    Object? contentType = freezed,
    Object? sizeBytes = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
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
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as SupportTicketAttachmentStatus?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SupportTicketAttachmentImplCopyWith<$Res>
    implements $SupportTicketAttachmentCopyWith<$Res> {
  factory _$$SupportTicketAttachmentImplCopyWith(
    _$SupportTicketAttachmentImpl value,
    $Res Function(_$SupportTicketAttachmentImpl) then,
  ) = __$$SupportTicketAttachmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? objectKey,
    String? contentType,
    int? sizeBytes,
    SupportTicketAttachmentStatus? status,
  });
}

/// @nodoc
class __$$SupportTicketAttachmentImplCopyWithImpl<$Res>
    extends
        _$SupportTicketAttachmentCopyWithImpl<
          $Res,
          _$SupportTicketAttachmentImpl
        >
    implements _$$SupportTicketAttachmentImplCopyWith<$Res> {
  __$$SupportTicketAttachmentImplCopyWithImpl(
    _$SupportTicketAttachmentImpl _value,
    $Res Function(_$SupportTicketAttachmentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SupportTicketAttachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? objectKey = freezed,
    Object? contentType = freezed,
    Object? sizeBytes = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _$SupportTicketAttachmentImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
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
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as SupportTicketAttachmentStatus?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketAttachmentImpl implements _SupportTicketAttachment {
  const _$SupportTicketAttachmentImpl({
    this.id,
    this.objectKey,
    this.contentType,
    this.sizeBytes,
    this.status,
  });

  factory _$SupportTicketAttachmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketAttachmentImplFromJson(json);

  @override
  final String? id;
  @override
  final String? objectKey;
  @override
  final String? contentType;
  @override
  final int? sizeBytes;
  @override
  final SupportTicketAttachmentStatus? status;

  @override
  String toString() {
    return 'SupportTicketAttachment(id: $id, objectKey: $objectKey, contentType: $contentType, sizeBytes: $sizeBytes, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketAttachmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.objectKey, objectKey) ||
                other.objectKey == objectKey) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, objectKey, contentType, sizeBytes, status);

  /// Create a copy of SupportTicketAttachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketAttachmentImplCopyWith<_$SupportTicketAttachmentImpl>
  get copyWith =>
      __$$SupportTicketAttachmentImplCopyWithImpl<
        _$SupportTicketAttachmentImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketAttachmentImplToJson(this);
  }
}

abstract class _SupportTicketAttachment implements SupportTicketAttachment {
  const factory _SupportTicketAttachment({
    final String? id,
    final String? objectKey,
    final String? contentType,
    final int? sizeBytes,
    final SupportTicketAttachmentStatus? status,
  }) = _$SupportTicketAttachmentImpl;

  factory _SupportTicketAttachment.fromJson(Map<String, dynamic> json) =
      _$SupportTicketAttachmentImpl.fromJson;

  @override
  String? get id;
  @override
  String? get objectKey;
  @override
  String? get contentType;
  @override
  int? get sizeBytes;
  @override
  SupportTicketAttachmentStatus? get status;

  /// Create a copy of SupportTicketAttachment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketAttachmentImplCopyWith<_$SupportTicketAttachmentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
