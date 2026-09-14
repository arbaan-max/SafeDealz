// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationListResponse _$NotificationListResponseFromJson(
  Map<String, dynamic> json,
) {
  return _NotificationListResponse.fromJson(json);
}

/// @nodoc
mixin _$NotificationListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<Notification> get data => throw _privateConstructorUsedError;

  /// Serializes this NotificationListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationListResponseCopyWith<NotificationListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationListResponseCopyWith<$Res> {
  factory $NotificationListResponseCopyWith(
    NotificationListResponse value,
    $Res Function(NotificationListResponse) then,
  ) = _$NotificationListResponseCopyWithImpl<$Res, NotificationListResponse>;
  @useResult
  $Res call({bool success, List<Notification> data});
}

/// @nodoc
class _$NotificationListResponseCopyWithImpl<
  $Res,
  $Val extends NotificationListResponse
>
    implements $NotificationListResponseCopyWith<$Res> {
  _$NotificationListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationListResponse
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
                      as List<Notification>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationListResponseImplCopyWith<$Res>
    implements $NotificationListResponseCopyWith<$Res> {
  factory _$$NotificationListResponseImplCopyWith(
    _$NotificationListResponseImpl value,
    $Res Function(_$NotificationListResponseImpl) then,
  ) = __$$NotificationListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<Notification> data});
}

/// @nodoc
class __$$NotificationListResponseImplCopyWithImpl<$Res>
    extends
        _$NotificationListResponseCopyWithImpl<
          $Res,
          _$NotificationListResponseImpl
        >
    implements _$$NotificationListResponseImplCopyWith<$Res> {
  __$$NotificationListResponseImplCopyWithImpl(
    _$NotificationListResponseImpl _value,
    $Res Function(_$NotificationListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$NotificationListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<Notification>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationListResponseImpl implements _NotificationListResponse {
  const _$NotificationListResponseImpl({
    required this.success,
    required final List<Notification> data,
  }) : _data = data;

  factory _$NotificationListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationListResponseImplFromJson(json);

  @override
  final bool success;
  final List<Notification> _data;
  @override
  List<Notification> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'NotificationListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationListResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of NotificationListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationListResponseImplCopyWith<_$NotificationListResponseImpl>
  get copyWith =>
      __$$NotificationListResponseImplCopyWithImpl<
        _$NotificationListResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationListResponseImplToJson(this);
  }
}

abstract class _NotificationListResponse implements NotificationListResponse {
  const factory _NotificationListResponse({
    required final bool success,
    required final List<Notification> data,
  }) = _$NotificationListResponseImpl;

  factory _NotificationListResponse.fromJson(Map<String, dynamic> json) =
      _$NotificationListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<Notification> get data;

  /// Create a copy of NotificationListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationListResponseImplCopyWith<_$NotificationListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
