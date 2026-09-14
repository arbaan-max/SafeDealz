// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_attachment_sign_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TicketAttachmentSignWrite _$TicketAttachmentSignWriteFromJson(
  Map<String, dynamic> json,
) {
  return _TicketAttachmentSignWrite.fromJson(json);
}

/// @nodoc
mixin _$TicketAttachmentSignWrite {
  String get contentType => throw _privateConstructorUsedError;
  int get sizeBytes => throw _privateConstructorUsedError;
  String get checksumSha256 => throw _privateConstructorUsedError;

  /// Serializes this TicketAttachmentSignWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketAttachmentSignWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketAttachmentSignWriteCopyWith<TicketAttachmentSignWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketAttachmentSignWriteCopyWith<$Res> {
  factory $TicketAttachmentSignWriteCopyWith(
    TicketAttachmentSignWrite value,
    $Res Function(TicketAttachmentSignWrite) then,
  ) = _$TicketAttachmentSignWriteCopyWithImpl<$Res, TicketAttachmentSignWrite>;
  @useResult
  $Res call({String contentType, int sizeBytes, String checksumSha256});
}

/// @nodoc
class _$TicketAttachmentSignWriteCopyWithImpl<
  $Res,
  $Val extends TicketAttachmentSignWrite
>
    implements $TicketAttachmentSignWriteCopyWith<$Res> {
  _$TicketAttachmentSignWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketAttachmentSignWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? sizeBytes = null,
    Object? checksumSha256 = null,
  }) {
    return _then(
      _value.copyWith(
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
abstract class _$$TicketAttachmentSignWriteImplCopyWith<$Res>
    implements $TicketAttachmentSignWriteCopyWith<$Res> {
  factory _$$TicketAttachmentSignWriteImplCopyWith(
    _$TicketAttachmentSignWriteImpl value,
    $Res Function(_$TicketAttachmentSignWriteImpl) then,
  ) = __$$TicketAttachmentSignWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String contentType, int sizeBytes, String checksumSha256});
}

/// @nodoc
class __$$TicketAttachmentSignWriteImplCopyWithImpl<$Res>
    extends
        _$TicketAttachmentSignWriteCopyWithImpl<
          $Res,
          _$TicketAttachmentSignWriteImpl
        >
    implements _$$TicketAttachmentSignWriteImplCopyWith<$Res> {
  __$$TicketAttachmentSignWriteImplCopyWithImpl(
    _$TicketAttachmentSignWriteImpl _value,
    $Res Function(_$TicketAttachmentSignWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketAttachmentSignWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? sizeBytes = null,
    Object? checksumSha256 = null,
  }) {
    return _then(
      _$TicketAttachmentSignWriteImpl(
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
class _$TicketAttachmentSignWriteImpl implements _TicketAttachmentSignWrite {
  const _$TicketAttachmentSignWriteImpl({
    required this.contentType,
    required this.sizeBytes,
    required this.checksumSha256,
  });

  factory _$TicketAttachmentSignWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketAttachmentSignWriteImplFromJson(json);

  @override
  final String contentType;
  @override
  final int sizeBytes;
  @override
  final String checksumSha256;

  @override
  String toString() {
    return 'TicketAttachmentSignWrite(contentType: $contentType, sizeBytes: $sizeBytes, checksumSha256: $checksumSha256)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketAttachmentSignWriteImpl &&
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
      Object.hash(runtimeType, contentType, sizeBytes, checksumSha256);

  /// Create a copy of TicketAttachmentSignWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketAttachmentSignWriteImplCopyWith<_$TicketAttachmentSignWriteImpl>
  get copyWith =>
      __$$TicketAttachmentSignWriteImplCopyWithImpl<
        _$TicketAttachmentSignWriteImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketAttachmentSignWriteImplToJson(this);
  }
}

abstract class _TicketAttachmentSignWrite implements TicketAttachmentSignWrite {
  const factory _TicketAttachmentSignWrite({
    required final String contentType,
    required final int sizeBytes,
    required final String checksumSha256,
  }) = _$TicketAttachmentSignWriteImpl;

  factory _TicketAttachmentSignWrite.fromJson(Map<String, dynamic> json) =
      _$TicketAttachmentSignWriteImpl.fromJson;

  @override
  String get contentType;
  @override
  int get sizeBytes;
  @override
  String get checksumSha256;

  /// Create a copy of TicketAttachmentSignWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketAttachmentSignWriteImplCopyWith<_$TicketAttachmentSignWriteImpl>
  get copyWith => throw _privateConstructorUsedError;
}
