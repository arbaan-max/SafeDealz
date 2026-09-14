// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_status_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SupportTicketStatusWrite _$SupportTicketStatusWriteFromJson(
  Map<String, dynamic> json,
) {
  return _SupportTicketStatusWrite.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketStatusWrite {
  SupportTicketStatusWriteStatus get status =>
      throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketStatusWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketStatusWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketStatusWriteCopyWith<SupportTicketStatusWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketStatusWriteCopyWith<$Res> {
  factory $SupportTicketStatusWriteCopyWith(
    SupportTicketStatusWrite value,
    $Res Function(SupportTicketStatusWrite) then,
  ) = _$SupportTicketStatusWriteCopyWithImpl<$Res, SupportTicketStatusWrite>;
  @useResult
  $Res call({SupportTicketStatusWriteStatus status, String? note});
}

/// @nodoc
class _$SupportTicketStatusWriteCopyWithImpl<
  $Res,
  $Val extends SupportTicketStatusWrite
>
    implements $SupportTicketStatusWriteCopyWith<$Res> {
  _$SupportTicketStatusWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketStatusWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? note = freezed}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as SupportTicketStatusWriteStatus,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SupportTicketStatusWriteImplCopyWith<$Res>
    implements $SupportTicketStatusWriteCopyWith<$Res> {
  factory _$$SupportTicketStatusWriteImplCopyWith(
    _$SupportTicketStatusWriteImpl value,
    $Res Function(_$SupportTicketStatusWriteImpl) then,
  ) = __$$SupportTicketStatusWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SupportTicketStatusWriteStatus status, String? note});
}

/// @nodoc
class __$$SupportTicketStatusWriteImplCopyWithImpl<$Res>
    extends
        _$SupportTicketStatusWriteCopyWithImpl<
          $Res,
          _$SupportTicketStatusWriteImpl
        >
    implements _$$SupportTicketStatusWriteImplCopyWith<$Res> {
  __$$SupportTicketStatusWriteImplCopyWithImpl(
    _$SupportTicketStatusWriteImpl _value,
    $Res Function(_$SupportTicketStatusWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SupportTicketStatusWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? note = freezed}) {
    return _then(
      _$SupportTicketStatusWriteImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as SupportTicketStatusWriteStatus,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketStatusWriteImpl implements _SupportTicketStatusWrite {
  const _$SupportTicketStatusWriteImpl({required this.status, this.note});

  factory _$SupportTicketStatusWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketStatusWriteImplFromJson(json);

  @override
  final SupportTicketStatusWriteStatus status;
  @override
  final String? note;

  @override
  String toString() {
    return 'SupportTicketStatusWrite(status: $status, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketStatusWriteImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, note);

  /// Create a copy of SupportTicketStatusWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketStatusWriteImplCopyWith<_$SupportTicketStatusWriteImpl>
  get copyWith =>
      __$$SupportTicketStatusWriteImplCopyWithImpl<
        _$SupportTicketStatusWriteImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketStatusWriteImplToJson(this);
  }
}

abstract class _SupportTicketStatusWrite implements SupportTicketStatusWrite {
  const factory _SupportTicketStatusWrite({
    required final SupportTicketStatusWriteStatus status,
    final String? note,
  }) = _$SupportTicketStatusWriteImpl;

  factory _SupportTicketStatusWrite.fromJson(Map<String, dynamic> json) =
      _$SupportTicketStatusWriteImpl.fromJson;

  @override
  SupportTicketStatusWriteStatus get status;
  @override
  String? get note;

  /// Create a copy of SupportTicketStatusWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketStatusWriteImplCopyWith<_$SupportTicketStatusWriteImpl>
  get copyWith => throw _privateConstructorUsedError;
}
