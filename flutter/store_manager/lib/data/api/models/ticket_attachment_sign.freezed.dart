// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_attachment_sign.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TicketAttachmentSign _$TicketAttachmentSignFromJson(Map<String, dynamic> json) {
  return _TicketAttachmentSign.fromJson(json);
}

/// @nodoc
mixin _$TicketAttachmentSign {
  String? get attachmentId => throw _privateConstructorUsedError;
  String? get objectKey => throw _privateConstructorUsedError;
  SignedUrl? get upload => throw _privateConstructorUsedError;

  /// Serializes this TicketAttachmentSign to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketAttachmentSign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketAttachmentSignCopyWith<TicketAttachmentSign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketAttachmentSignCopyWith<$Res> {
  factory $TicketAttachmentSignCopyWith(
    TicketAttachmentSign value,
    $Res Function(TicketAttachmentSign) then,
  ) = _$TicketAttachmentSignCopyWithImpl<$Res, TicketAttachmentSign>;
  @useResult
  $Res call({String? attachmentId, String? objectKey, SignedUrl? upload});

  $SignedUrlCopyWith<$Res>? get upload;
}

/// @nodoc
class _$TicketAttachmentSignCopyWithImpl<
  $Res,
  $Val extends TicketAttachmentSign
>
    implements $TicketAttachmentSignCopyWith<$Res> {
  _$TicketAttachmentSignCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketAttachmentSign
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachmentId = freezed,
    Object? objectKey = freezed,
    Object? upload = freezed,
  }) {
    return _then(
      _value.copyWith(
            attachmentId: freezed == attachmentId
                ? _value.attachmentId
                : attachmentId // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of TicketAttachmentSign
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
abstract class _$$TicketAttachmentSignImplCopyWith<$Res>
    implements $TicketAttachmentSignCopyWith<$Res> {
  factory _$$TicketAttachmentSignImplCopyWith(
    _$TicketAttachmentSignImpl value,
    $Res Function(_$TicketAttachmentSignImpl) then,
  ) = __$$TicketAttachmentSignImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? attachmentId, String? objectKey, SignedUrl? upload});

  @override
  $SignedUrlCopyWith<$Res>? get upload;
}

/// @nodoc
class __$$TicketAttachmentSignImplCopyWithImpl<$Res>
    extends _$TicketAttachmentSignCopyWithImpl<$Res, _$TicketAttachmentSignImpl>
    implements _$$TicketAttachmentSignImplCopyWith<$Res> {
  __$$TicketAttachmentSignImplCopyWithImpl(
    _$TicketAttachmentSignImpl _value,
    $Res Function(_$TicketAttachmentSignImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketAttachmentSign
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachmentId = freezed,
    Object? objectKey = freezed,
    Object? upload = freezed,
  }) {
    return _then(
      _$TicketAttachmentSignImpl(
        attachmentId: freezed == attachmentId
            ? _value.attachmentId
            : attachmentId // ignore: cast_nullable_to_non_nullable
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
class _$TicketAttachmentSignImpl implements _TicketAttachmentSign {
  const _$TicketAttachmentSignImpl({
    this.attachmentId,
    this.objectKey,
    this.upload,
  });

  factory _$TicketAttachmentSignImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketAttachmentSignImplFromJson(json);

  @override
  final String? attachmentId;
  @override
  final String? objectKey;
  @override
  final SignedUrl? upload;

  @override
  String toString() {
    return 'TicketAttachmentSign(attachmentId: $attachmentId, objectKey: $objectKey, upload: $upload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketAttachmentSignImpl &&
            (identical(other.attachmentId, attachmentId) ||
                other.attachmentId == attachmentId) &&
            (identical(other.objectKey, objectKey) ||
                other.objectKey == objectKey) &&
            (identical(other.upload, upload) || other.upload == upload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, attachmentId, objectKey, upload);

  /// Create a copy of TicketAttachmentSign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketAttachmentSignImplCopyWith<_$TicketAttachmentSignImpl>
  get copyWith =>
      __$$TicketAttachmentSignImplCopyWithImpl<_$TicketAttachmentSignImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketAttachmentSignImplToJson(this);
  }
}

abstract class _TicketAttachmentSign implements TicketAttachmentSign {
  const factory _TicketAttachmentSign({
    final String? attachmentId,
    final String? objectKey,
    final SignedUrl? upload,
  }) = _$TicketAttachmentSignImpl;

  factory _TicketAttachmentSign.fromJson(Map<String, dynamic> json) =
      _$TicketAttachmentSignImpl.fromJson;

  @override
  String? get attachmentId;
  @override
  String? get objectKey;
  @override
  SignedUrl? get upload;

  /// Create a copy of TicketAttachmentSign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketAttachmentSignImplCopyWith<_$TicketAttachmentSignImpl>
  get copyWith => throw _privateConstructorUsedError;
}
