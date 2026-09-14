// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return _Notification.fromJson(json);
}

/// @nodoc
mixin _$Notification {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get audience => throw _privateConstructorUsedError;
  NotificationStatus? get status => throw _privateConstructorUsedError;
  String? get deepLink => throw _privateConstructorUsedError;
  String? get branchId => throw _privateConstructorUsedError;
  String? get campaignId => throw _privateConstructorUsedError;
  DateTime? get readAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get recipientAccountId => throw _privateConstructorUsedError;
  String? get recipientRole => throw _privateConstructorUsedError;

  /// Serializes this Notification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationCopyWith<Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
    Notification value,
    $Res Function(Notification) then,
  ) = _$NotificationCopyWithImpl<$Res, Notification>;
  @useResult
  $Res call({
    String? id,
    String? title,
    String? body,
    String? category,
    String? audience,
    NotificationStatus? status,
    String? deepLink,
    String? branchId,
    String? campaignId,
    DateTime? readAt,
    DateTime? createdAt,
    String? recipientAccountId,
    String? recipientRole,
  });
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res, $Val extends Notification>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? category = freezed,
    Object? audience = freezed,
    Object? status = freezed,
    Object? deepLink = freezed,
    Object? branchId = freezed,
    Object? campaignId = freezed,
    Object? readAt = freezed,
    Object? createdAt = freezed,
    Object? recipientAccountId = freezed,
    Object? recipientRole = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            body: freezed == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String?,
            audience: freezed == audience
                ? _value.audience
                : audience // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as NotificationStatus?,
            deepLink: freezed == deepLink
                ? _value.deepLink
                : deepLink // ignore: cast_nullable_to_non_nullable
                      as String?,
            branchId: freezed == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as String?,
            campaignId: freezed == campaignId
                ? _value.campaignId
                : campaignId // ignore: cast_nullable_to_non_nullable
                      as String?,
            readAt: freezed == readAt
                ? _value.readAt
                : readAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            recipientAccountId: freezed == recipientAccountId
                ? _value.recipientAccountId
                : recipientAccountId // ignore: cast_nullable_to_non_nullable
                      as String?,
            recipientRole: freezed == recipientRole
                ? _value.recipientRole
                : recipientRole // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationImplCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$$NotificationImplCopyWith(
    _$NotificationImpl value,
    $Res Function(_$NotificationImpl) then,
  ) = __$$NotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? title,
    String? body,
    String? category,
    String? audience,
    NotificationStatus? status,
    String? deepLink,
    String? branchId,
    String? campaignId,
    DateTime? readAt,
    DateTime? createdAt,
    String? recipientAccountId,
    String? recipientRole,
  });
}

/// @nodoc
class __$$NotificationImplCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$NotificationImpl>
    implements _$$NotificationImplCopyWith<$Res> {
  __$$NotificationImplCopyWithImpl(
    _$NotificationImpl _value,
    $Res Function(_$NotificationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? category = freezed,
    Object? audience = freezed,
    Object? status = freezed,
    Object? deepLink = freezed,
    Object? branchId = freezed,
    Object? campaignId = freezed,
    Object? readAt = freezed,
    Object? createdAt = freezed,
    Object? recipientAccountId = freezed,
    Object? recipientRole = freezed,
  }) {
    return _then(
      _$NotificationImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        body: freezed == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String?,
        audience: freezed == audience
            ? _value.audience
            : audience // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as NotificationStatus?,
        deepLink: freezed == deepLink
            ? _value.deepLink
            : deepLink // ignore: cast_nullable_to_non_nullable
                  as String?,
        branchId: freezed == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as String?,
        campaignId: freezed == campaignId
            ? _value.campaignId
            : campaignId // ignore: cast_nullable_to_non_nullable
                  as String?,
        readAt: freezed == readAt
            ? _value.readAt
            : readAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        recipientAccountId: freezed == recipientAccountId
            ? _value.recipientAccountId
            : recipientAccountId // ignore: cast_nullable_to_non_nullable
                  as String?,
        recipientRole: freezed == recipientRole
            ? _value.recipientRole
            : recipientRole // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationImpl implements _Notification {
  const _$NotificationImpl({
    this.id,
    this.title,
    this.body,
    this.category,
    this.audience,
    this.status,
    this.deepLink,
    this.branchId,
    this.campaignId,
    this.readAt,
    this.createdAt,
    this.recipientAccountId,
    this.recipientRole,
  });

  factory _$NotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final String? category;
  @override
  final String? audience;
  @override
  final NotificationStatus? status;
  @override
  final String? deepLink;
  @override
  final String? branchId;
  @override
  final String? campaignId;
  @override
  final DateTime? readAt;
  @override
  final DateTime? createdAt;
  @override
  final String? recipientAccountId;
  @override
  final String? recipientRole;

  @override
  String toString() {
    return 'Notification(id: $id, title: $title, body: $body, category: $category, audience: $audience, status: $status, deepLink: $deepLink, branchId: $branchId, campaignId: $campaignId, readAt: $readAt, createdAt: $createdAt, recipientAccountId: $recipientAccountId, recipientRole: $recipientRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.audience, audience) ||
                other.audience == audience) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deepLink, deepLink) ||
                other.deepLink == deepLink) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.recipientAccountId, recipientAccountId) ||
                other.recipientAccountId == recipientAccountId) &&
            (identical(other.recipientRole, recipientRole) ||
                other.recipientRole == recipientRole));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    body,
    category,
    audience,
    status,
    deepLink,
    branchId,
    campaignId,
    readAt,
    createdAt,
    recipientAccountId,
    recipientRole,
  );

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationImplCopyWith<_$NotificationImpl> get copyWith =>
      __$$NotificationImplCopyWithImpl<_$NotificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationImplToJson(this);
  }
}

abstract class _Notification implements Notification {
  const factory _Notification({
    final String? id,
    final String? title,
    final String? body,
    final String? category,
    final String? audience,
    final NotificationStatus? status,
    final String? deepLink,
    final String? branchId,
    final String? campaignId,
    final DateTime? readAt,
    final DateTime? createdAt,
    final String? recipientAccountId,
    final String? recipientRole,
  }) = _$NotificationImpl;

  factory _Notification.fromJson(Map<String, dynamic> json) =
      _$NotificationImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get body;
  @override
  String? get category;
  @override
  String? get audience;
  @override
  NotificationStatus? get status;
  @override
  String? get deepLink;
  @override
  String? get branchId;
  @override
  String? get campaignId;
  @override
  DateTime? get readAt;
  @override
  DateTime? get createdAt;
  @override
  String? get recipientAccountId;
  @override
  String? get recipientRole;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationImplCopyWith<_$NotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
