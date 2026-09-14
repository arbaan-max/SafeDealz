// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_broadcast_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationBroadcastWrite _$NotificationBroadcastWriteFromJson(
  Map<String, dynamic> json,
) {
  return _NotificationBroadcastWrite.fromJson(json);
}

/// @nodoc
mixin _$NotificationBroadcastWrite {
  NotificationBroadcastWriteAudience get audience =>
      throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get branchId => throw _privateConstructorUsedError;
  String? get accountId => throw _privateConstructorUsedError;

  /// Serializes this NotificationBroadcastWrite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationBroadcastWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationBroadcastWriteCopyWith<NotificationBroadcastWrite>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationBroadcastWriteCopyWith<$Res> {
  factory $NotificationBroadcastWriteCopyWith(
    NotificationBroadcastWrite value,
    $Res Function(NotificationBroadcastWrite) then,
  ) =
      _$NotificationBroadcastWriteCopyWithImpl<
        $Res,
        NotificationBroadcastWrite
      >;
  @useResult
  $Res call({
    NotificationBroadcastWriteAudience audience,
    String title,
    String body,
    String? category,
    String? branchId,
    String? accountId,
  });
}

/// @nodoc
class _$NotificationBroadcastWriteCopyWithImpl<
  $Res,
  $Val extends NotificationBroadcastWrite
>
    implements $NotificationBroadcastWriteCopyWith<$Res> {
  _$NotificationBroadcastWriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationBroadcastWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audience = null,
    Object? title = null,
    Object? body = null,
    Object? category = freezed,
    Object? branchId = freezed,
    Object? accountId = freezed,
  }) {
    return _then(
      _value.copyWith(
            audience: null == audience
                ? _value.audience
                : audience // ignore: cast_nullable_to_non_nullable
                      as NotificationBroadcastWriteAudience,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String?,
            branchId: freezed == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as String?,
            accountId: freezed == accountId
                ? _value.accountId
                : accountId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationBroadcastWriteImplCopyWith<$Res>
    implements $NotificationBroadcastWriteCopyWith<$Res> {
  factory _$$NotificationBroadcastWriteImplCopyWith(
    _$NotificationBroadcastWriteImpl value,
    $Res Function(_$NotificationBroadcastWriteImpl) then,
  ) = __$$NotificationBroadcastWriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    NotificationBroadcastWriteAudience audience,
    String title,
    String body,
    String? category,
    String? branchId,
    String? accountId,
  });
}

/// @nodoc
class __$$NotificationBroadcastWriteImplCopyWithImpl<$Res>
    extends
        _$NotificationBroadcastWriteCopyWithImpl<
          $Res,
          _$NotificationBroadcastWriteImpl
        >
    implements _$$NotificationBroadcastWriteImplCopyWith<$Res> {
  __$$NotificationBroadcastWriteImplCopyWithImpl(
    _$NotificationBroadcastWriteImpl _value,
    $Res Function(_$NotificationBroadcastWriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationBroadcastWrite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audience = null,
    Object? title = null,
    Object? body = null,
    Object? category = freezed,
    Object? branchId = freezed,
    Object? accountId = freezed,
  }) {
    return _then(
      _$NotificationBroadcastWriteImpl(
        audience: null == audience
            ? _value.audience
            : audience // ignore: cast_nullable_to_non_nullable
                  as NotificationBroadcastWriteAudience,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String?,
        branchId: freezed == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as String?,
        accountId: freezed == accountId
            ? _value.accountId
            : accountId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationBroadcastWriteImpl implements _NotificationBroadcastWrite {
  const _$NotificationBroadcastWriteImpl({
    required this.audience,
    required this.title,
    required this.body,
    this.category,
    this.branchId,
    this.accountId,
  });

  factory _$NotificationBroadcastWriteImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$NotificationBroadcastWriteImplFromJson(json);

  @override
  final NotificationBroadcastWriteAudience audience;
  @override
  final String title;
  @override
  final String body;
  @override
  final String? category;
  @override
  final String? branchId;
  @override
  final String? accountId;

  @override
  String toString() {
    return 'NotificationBroadcastWrite(audience: $audience, title: $title, body: $body, category: $category, branchId: $branchId, accountId: $accountId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationBroadcastWriteImpl &&
            (identical(other.audience, audience) ||
                other.audience == audience) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    audience,
    title,
    body,
    category,
    branchId,
    accountId,
  );

  /// Create a copy of NotificationBroadcastWrite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationBroadcastWriteImplCopyWith<_$NotificationBroadcastWriteImpl>
  get copyWith =>
      __$$NotificationBroadcastWriteImplCopyWithImpl<
        _$NotificationBroadcastWriteImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationBroadcastWriteImplToJson(this);
  }
}

abstract class _NotificationBroadcastWrite
    implements NotificationBroadcastWrite {
  const factory _NotificationBroadcastWrite({
    required final NotificationBroadcastWriteAudience audience,
    required final String title,
    required final String body,
    final String? category,
    final String? branchId,
    final String? accountId,
  }) = _$NotificationBroadcastWriteImpl;

  factory _NotificationBroadcastWrite.fromJson(Map<String, dynamic> json) =
      _$NotificationBroadcastWriteImpl.fromJson;

  @override
  NotificationBroadcastWriteAudience get audience;
  @override
  String get title;
  @override
  String get body;
  @override
  String? get category;
  @override
  String? get branchId;
  @override
  String? get accountId;

  /// Create a copy of NotificationBroadcastWrite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationBroadcastWriteImplCopyWith<_$NotificationBroadcastWriteImpl>
  get copyWith => throw _privateConstructorUsedError;
}
