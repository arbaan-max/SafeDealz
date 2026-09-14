// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_note_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SupportTicketNoteWrite _$SupportTicketNoteWriteFromJson(
  Map<String, dynamic> json,
) {
  return _SupportTicketNoteWrite.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketNoteWrite {
  String get body => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketNoteWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketNoteWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketNoteWriteCopyWith<SupportTicketNoteWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketNoteWriteCopyWith<$Res> {
  factory $SupportTicketNoteWriteCopyWith(
    SupportTicketNoteWrite value,
    $Res Function(SupportTicketNoteWrite) then,
  ) = _$SupportTicketNoteWriteCopyWithImpl<$Res, SupportTicketNoteWrite>;
  @useResult
  $Res call({String body});
}

/// @nodoc
class _$SupportTicketNoteWriteCopyWithImpl<
  $Res,
  $Val extends SupportTicketNoteWrite
>
    implements $SupportTicketNoteWriteCopyWith<$Res> {
  _$SupportTicketNoteWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketNoteWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? body = null}) {
    return _then(
      _value.copyWith(
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SupportTicketNoteWriteImplCopyWith<$Res>
    implements $SupportTicketNoteWriteCopyWith<$Res> {
  factory _$$SupportTicketNoteWriteImplCopyWith(
    _$SupportTicketNoteWriteImpl value,
    $Res Function(_$SupportTicketNoteWriteImpl) then,
  ) = __$$SupportTicketNoteWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String body});
}

/// @nodoc
class __$$SupportTicketNoteWriteImplCopyWithImpl<$Res>
    extends
        _$SupportTicketNoteWriteCopyWithImpl<$Res, _$SupportTicketNoteWriteImpl>
    implements _$$SupportTicketNoteWriteImplCopyWith<$Res> {
  __$$SupportTicketNoteWriteImplCopyWithImpl(
    _$SupportTicketNoteWriteImpl _value,
    $Res Function(_$SupportTicketNoteWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SupportTicketNoteWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? body = null}) {
    return _then(
      _$SupportTicketNoteWriteImpl(
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketNoteWriteImpl implements _SupportTicketNoteWrite {
  const _$SupportTicketNoteWriteImpl({required this.body});

  factory _$SupportTicketNoteWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketNoteWriteImplFromJson(json);

  @override
  final String body;

  @override
  String toString() {
    return 'SupportTicketNoteWrite(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketNoteWriteImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, body);

  /// Create a copy of SupportTicketNoteWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketNoteWriteImplCopyWith<_$SupportTicketNoteWriteImpl>
  get copyWith =>
      __$$SupportTicketNoteWriteImplCopyWithImpl<_$SupportTicketNoteWriteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketNoteWriteImplToJson(this);
  }
}

abstract class _SupportTicketNoteWrite implements SupportTicketNoteWrite {
  const factory _SupportTicketNoteWrite({required final String body}) =
      _$SupportTicketNoteWriteImpl;

  factory _SupportTicketNoteWrite.fromJson(Map<String, dynamic> json) =
      _$SupportTicketNoteWriteImpl.fromJson;

  @override
  String get body;

  /// Create a copy of SupportTicketNoteWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketNoteWriteImplCopyWith<_$SupportTicketNoteWriteImpl>
  get copyWith => throw _privateConstructorUsedError;
}
