// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_assign_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SupportTicketAssignWrite _$SupportTicketAssignWriteFromJson(
  Map<String, dynamic> json,
) {
  return _SupportTicketAssignWrite.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketAssignWrite {
  String get ownerAccountId => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketAssignWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketAssignWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketAssignWriteCopyWith<SupportTicketAssignWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketAssignWriteCopyWith<$Res> {
  factory $SupportTicketAssignWriteCopyWith(
    SupportTicketAssignWrite value,
    $Res Function(SupportTicketAssignWrite) then,
  ) = _$SupportTicketAssignWriteCopyWithImpl<$Res, SupportTicketAssignWrite>;
  @useResult
  $Res call({String ownerAccountId});
}

/// @nodoc
class _$SupportTicketAssignWriteCopyWithImpl<
  $Res,
  $Val extends SupportTicketAssignWrite
>
    implements $SupportTicketAssignWriteCopyWith<$Res> {
  _$SupportTicketAssignWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketAssignWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ownerAccountId = null}) {
    return _then(
      _value.copyWith(
            ownerAccountId: null == ownerAccountId
                ? _value.ownerAccountId
                : ownerAccountId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SupportTicketAssignWriteImplCopyWith<$Res>
    implements $SupportTicketAssignWriteCopyWith<$Res> {
  factory _$$SupportTicketAssignWriteImplCopyWith(
    _$SupportTicketAssignWriteImpl value,
    $Res Function(_$SupportTicketAssignWriteImpl) then,
  ) = __$$SupportTicketAssignWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ownerAccountId});
}

/// @nodoc
class __$$SupportTicketAssignWriteImplCopyWithImpl<$Res>
    extends
        _$SupportTicketAssignWriteCopyWithImpl<
          $Res,
          _$SupportTicketAssignWriteImpl
        >
    implements _$$SupportTicketAssignWriteImplCopyWith<$Res> {
  __$$SupportTicketAssignWriteImplCopyWithImpl(
    _$SupportTicketAssignWriteImpl _value,
    $Res Function(_$SupportTicketAssignWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SupportTicketAssignWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ownerAccountId = null}) {
    return _then(
      _$SupportTicketAssignWriteImpl(
        ownerAccountId: null == ownerAccountId
            ? _value.ownerAccountId
            : ownerAccountId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketAssignWriteImpl implements _SupportTicketAssignWrite {
  const _$SupportTicketAssignWriteImpl({required this.ownerAccountId});

  factory _$SupportTicketAssignWriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketAssignWriteImplFromJson(json);

  @override
  final String ownerAccountId;

  @override
  String toString() {
    return 'SupportTicketAssignWrite(ownerAccountId: $ownerAccountId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketAssignWriteImpl &&
            (identical(other.ownerAccountId, ownerAccountId) ||
                other.ownerAccountId == ownerAccountId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ownerAccountId);

  /// Create a copy of SupportTicketAssignWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketAssignWriteImplCopyWith<_$SupportTicketAssignWriteImpl>
  get copyWith =>
      __$$SupportTicketAssignWriteImplCopyWithImpl<
        _$SupportTicketAssignWriteImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketAssignWriteImplToJson(this);
  }
}

abstract class _SupportTicketAssignWrite implements SupportTicketAssignWrite {
  const factory _SupportTicketAssignWrite({
    required final String ownerAccountId,
  }) = _$SupportTicketAssignWriteImpl;

  factory _SupportTicketAssignWrite.fromJson(Map<String, dynamic> json) =
      _$SupportTicketAssignWriteImpl.fromJson;

  @override
  String get ownerAccountId;

  /// Create a copy of SupportTicketAssignWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketAssignWriteImplCopyWith<_$SupportTicketAssignWriteImpl>
  get copyWith => throw _privateConstructorUsedError;
}
