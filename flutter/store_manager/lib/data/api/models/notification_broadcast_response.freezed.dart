// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_broadcast_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationBroadcastResponse _$NotificationBroadcastResponseFromJson(
  Map<String, dynamic> json,
) {
  return _NotificationBroadcastResponse.fromJson(json);
}

/// @nodoc
mixin _$NotificationBroadcastResponse {
  bool get success => throw _privateConstructorUsedError;
  NotificationBroadcast get data => throw _privateConstructorUsedError;

  /// Serializes this NotificationBroadcastResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationBroadcastResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationBroadcastResponseCopyWith<NotificationBroadcastResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationBroadcastResponseCopyWith<$Res> {
  factory $NotificationBroadcastResponseCopyWith(
    NotificationBroadcastResponse value,
    $Res Function(NotificationBroadcastResponse) then,
  ) =
      _$NotificationBroadcastResponseCopyWithImpl<
        $Res,
        NotificationBroadcastResponse
      >;
  @useResult
  $Res call({bool success, NotificationBroadcast data});

  $NotificationBroadcastCopyWith<$Res> get data;
}

/// @nodoc
class _$NotificationBroadcastResponseCopyWithImpl<
  $Res,
  $Val extends NotificationBroadcastResponse
>
    implements $NotificationBroadcastResponseCopyWith<$Res> {
  _$NotificationBroadcastResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationBroadcastResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as NotificationBroadcast,
          )
          as $Val,
    );
  }

  /// Create a copy of NotificationBroadcastResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationBroadcastCopyWith<$Res> get data {
    return $NotificationBroadcastCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationBroadcastResponseImplCopyWith<$Res>
    implements $NotificationBroadcastResponseCopyWith<$Res> {
  factory _$$NotificationBroadcastResponseImplCopyWith(
    _$NotificationBroadcastResponseImpl value,
    $Res Function(_$NotificationBroadcastResponseImpl) then,
  ) = __$$NotificationBroadcastResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, NotificationBroadcast data});

  @override
  $NotificationBroadcastCopyWith<$Res> get data;
}

/// @nodoc
class __$$NotificationBroadcastResponseImplCopyWithImpl<$Res>
    extends
        _$NotificationBroadcastResponseCopyWithImpl<
          $Res,
          _$NotificationBroadcastResponseImpl
        >
    implements _$$NotificationBroadcastResponseImplCopyWith<$Res> {
  __$$NotificationBroadcastResponseImplCopyWithImpl(
    _$NotificationBroadcastResponseImpl _value,
    $Res Function(_$NotificationBroadcastResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationBroadcastResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$NotificationBroadcastResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as NotificationBroadcast,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationBroadcastResponseImpl
    implements _NotificationBroadcastResponse {
  const _$NotificationBroadcastResponseImpl({
    required this.success,
    required this.data,
  });

  factory _$NotificationBroadcastResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$NotificationBroadcastResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final NotificationBroadcast data;

  @override
  String toString() {
    return 'NotificationBroadcastResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationBroadcastResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of NotificationBroadcastResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationBroadcastResponseImplCopyWith<
    _$NotificationBroadcastResponseImpl
  >
  get copyWith =>
      __$$NotificationBroadcastResponseImplCopyWithImpl<
        _$NotificationBroadcastResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationBroadcastResponseImplToJson(this);
  }
}

abstract class _NotificationBroadcastResponse
    implements NotificationBroadcastResponse {
  const factory _NotificationBroadcastResponse({
    required final bool success,
    required final NotificationBroadcast data,
  }) = _$NotificationBroadcastResponseImpl;

  factory _NotificationBroadcastResponse.fromJson(Map<String, dynamic> json) =
      _$NotificationBroadcastResponseImpl.fromJson;

  @override
  bool get success;
  @override
  NotificationBroadcast get data;

  /// Create a copy of NotificationBroadcastResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationBroadcastResponseImplCopyWith<
    _$NotificationBroadcastResponseImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
