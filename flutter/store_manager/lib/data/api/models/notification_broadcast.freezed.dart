// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_broadcast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationBroadcast _$NotificationBroadcastFromJson(
  Map<String, dynamic> json,
) {
  return _NotificationBroadcast.fromJson(json);
}

/// @nodoc
mixin _$NotificationBroadcast {
  String? get campaignId => throw _privateConstructorUsedError;
  int? get delivered => throw _privateConstructorUsedError;
  List<Notification>? get deliveries => throw _privateConstructorUsedError;

  /// Serializes this NotificationBroadcast to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationBroadcast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationBroadcastCopyWith<NotificationBroadcast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationBroadcastCopyWith<$Res> {
  factory $NotificationBroadcastCopyWith(
    NotificationBroadcast value,
    $Res Function(NotificationBroadcast) then,
  ) = _$NotificationBroadcastCopyWithImpl<$Res, NotificationBroadcast>;
  @useResult
  $Res call({
    String? campaignId,
    int? delivered,
    List<Notification>? deliveries,
  });
}

/// @nodoc
class _$NotificationBroadcastCopyWithImpl<
  $Res,
  $Val extends NotificationBroadcast
>
    implements $NotificationBroadcastCopyWith<$Res> {
  _$NotificationBroadcastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationBroadcast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignId = freezed,
    Object? delivered = freezed,
    Object? deliveries = freezed,
  }) {
    return _then(
      _value.copyWith(
            campaignId: freezed == campaignId
                ? _value.campaignId
                : campaignId // ignore: cast_nullable_to_non_nullable
                      as String?,
            delivered: freezed == delivered
                ? _value.delivered
                : delivered // ignore: cast_nullable_to_non_nullable
                      as int?,
            deliveries: freezed == deliveries
                ? _value.deliveries
                : deliveries // ignore: cast_nullable_to_non_nullable
                      as List<Notification>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationBroadcastImplCopyWith<$Res>
    implements $NotificationBroadcastCopyWith<$Res> {
  factory _$$NotificationBroadcastImplCopyWith(
    _$NotificationBroadcastImpl value,
    $Res Function(_$NotificationBroadcastImpl) then,
  ) = __$$NotificationBroadcastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? campaignId,
    int? delivered,
    List<Notification>? deliveries,
  });
}

/// @nodoc
class __$$NotificationBroadcastImplCopyWithImpl<$Res>
    extends
        _$NotificationBroadcastCopyWithImpl<$Res, _$NotificationBroadcastImpl>
    implements _$$NotificationBroadcastImplCopyWith<$Res> {
  __$$NotificationBroadcastImplCopyWithImpl(
    _$NotificationBroadcastImpl _value,
    $Res Function(_$NotificationBroadcastImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationBroadcast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignId = freezed,
    Object? delivered = freezed,
    Object? deliveries = freezed,
  }) {
    return _then(
      _$NotificationBroadcastImpl(
        campaignId: freezed == campaignId
            ? _value.campaignId
            : campaignId // ignore: cast_nullable_to_non_nullable
                  as String?,
        delivered: freezed == delivered
            ? _value.delivered
            : delivered // ignore: cast_nullable_to_non_nullable
                  as int?,
        deliveries: freezed == deliveries
            ? _value._deliveries
            : deliveries // ignore: cast_nullable_to_non_nullable
                  as List<Notification>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationBroadcastImpl implements _NotificationBroadcast {
  const _$NotificationBroadcastImpl({
    this.campaignId,
    this.delivered,
    final List<Notification>? deliveries,
  }) : _deliveries = deliveries;

  factory _$NotificationBroadcastImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationBroadcastImplFromJson(json);

  @override
  final String? campaignId;
  @override
  final int? delivered;
  final List<Notification>? _deliveries;
  @override
  List<Notification>? get deliveries {
    final value = _deliveries;
    if (value == null) return null;
    if (_deliveries is EqualUnmodifiableListView) return _deliveries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NotificationBroadcast(campaignId: $campaignId, delivered: $delivered, deliveries: $deliveries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationBroadcastImpl &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.delivered, delivered) ||
                other.delivered == delivered) &&
            const DeepCollectionEquality().equals(
              other._deliveries,
              _deliveries,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    campaignId,
    delivered,
    const DeepCollectionEquality().hash(_deliveries),
  );

  /// Create a copy of NotificationBroadcast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationBroadcastImplCopyWith<_$NotificationBroadcastImpl>
  get copyWith =>
      __$$NotificationBroadcastImplCopyWithImpl<_$NotificationBroadcastImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationBroadcastImplToJson(this);
  }
}

abstract class _NotificationBroadcast implements NotificationBroadcast {
  const factory _NotificationBroadcast({
    final String? campaignId,
    final int? delivered,
    final List<Notification>? deliveries,
  }) = _$NotificationBroadcastImpl;

  factory _NotificationBroadcast.fromJson(Map<String, dynamic> json) =
      _$NotificationBroadcastImpl.fromJson;

  @override
  String? get campaignId;
  @override
  int? get delivered;
  @override
  List<Notification>? get deliveries;

  /// Create a copy of NotificationBroadcast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationBroadcastImplCopyWith<_$NotificationBroadcastImpl>
  get copyWith => throw _privateConstructorUsedError;
}
