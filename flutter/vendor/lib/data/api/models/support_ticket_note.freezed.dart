// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SupportTicketNote _$SupportTicketNoteFromJson(Map<String, dynamic> json) {
  return _SupportTicketNote.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketNote {
  String? get id => throw _privateConstructorUsedError;
  String? get authorAccountId => throw _privateConstructorUsedError;
  String? get authorRole => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketNote to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketNoteCopyWith<SupportTicketNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketNoteCopyWith<$Res> {
  factory $SupportTicketNoteCopyWith(
    SupportTicketNote value,
    $Res Function(SupportTicketNote) then,
  ) = _$SupportTicketNoteCopyWithImpl<$Res, SupportTicketNote>;
  @useResult
  $Res call({
    String? id,
    String? authorAccountId,
    String? authorRole,
    String? body,
    DateTime? createdAt,
  });
}

/// @nodoc
class _$SupportTicketNoteCopyWithImpl<$Res, $Val extends SupportTicketNote>
    implements $SupportTicketNoteCopyWith<$Res> {
  _$SupportTicketNoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketNote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorAccountId = freezed,
    Object? authorRole = freezed,
    Object? body = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            authorAccountId: freezed == authorAccountId
                ? _value.authorAccountId
                : authorAccountId // ignore: cast_nullable_to_non_nullable
                      as String?,
            authorRole: freezed == authorRole
                ? _value.authorRole
                : authorRole // ignore: cast_nullable_to_non_nullable
                      as String?,
            body: freezed == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SupportTicketNoteImplCopyWith<$Res>
    implements $SupportTicketNoteCopyWith<$Res> {
  factory _$$SupportTicketNoteImplCopyWith(
    _$SupportTicketNoteImpl value,
    $Res Function(_$SupportTicketNoteImpl) then,
  ) = __$$SupportTicketNoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? authorAccountId,
    String? authorRole,
    String? body,
    DateTime? createdAt,
  });
}

/// @nodoc
class __$$SupportTicketNoteImplCopyWithImpl<$Res>
    extends _$SupportTicketNoteCopyWithImpl<$Res, _$SupportTicketNoteImpl>
    implements _$$SupportTicketNoteImplCopyWith<$Res> {
  __$$SupportTicketNoteImplCopyWithImpl(
    _$SupportTicketNoteImpl _value,
    $Res Function(_$SupportTicketNoteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SupportTicketNote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorAccountId = freezed,
    Object? authorRole = freezed,
    Object? body = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$SupportTicketNoteImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        authorAccountId: freezed == authorAccountId
            ? _value.authorAccountId
            : authorAccountId // ignore: cast_nullable_to_non_nullable
                  as String?,
        authorRole: freezed == authorRole
            ? _value.authorRole
            : authorRole // ignore: cast_nullable_to_non_nullable
                  as String?,
        body: freezed == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketNoteImpl implements _SupportTicketNote {
  const _$SupportTicketNoteImpl({
    this.id,
    this.authorAccountId,
    this.authorRole,
    this.body,
    this.createdAt,
  });

  factory _$SupportTicketNoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketNoteImplFromJson(json);

  @override
  final String? id;
  @override
  final String? authorAccountId;
  @override
  final String? authorRole;
  @override
  final String? body;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'SupportTicketNote(id: $id, authorAccountId: $authorAccountId, authorRole: $authorRole, body: $body, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketNoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorAccountId, authorAccountId) ||
                other.authorAccountId == authorAccountId) &&
            (identical(other.authorRole, authorRole) ||
                other.authorRole == authorRole) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    authorAccountId,
    authorRole,
    body,
    createdAt,
  );

  /// Create a copy of SupportTicketNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketNoteImplCopyWith<_$SupportTicketNoteImpl> get copyWith =>
      __$$SupportTicketNoteImplCopyWithImpl<_$SupportTicketNoteImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketNoteImplToJson(this);
  }
}

abstract class _SupportTicketNote implements SupportTicketNote {
  const factory _SupportTicketNote({
    final String? id,
    final String? authorAccountId,
    final String? authorRole,
    final String? body,
    final DateTime? createdAt,
  }) = _$SupportTicketNoteImpl;

  factory _SupportTicketNote.fromJson(Map<String, dynamic> json) =
      _$SupportTicketNoteImpl.fromJson;

  @override
  String? get id;
  @override
  String? get authorAccountId;
  @override
  String? get authorRole;
  @override
  String? get body;
  @override
  DateTime? get createdAt;

  /// Create a copy of SupportTicketNote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketNoteImplCopyWith<_$SupportTicketNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
