// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_overview_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RewardOverviewResponse _$RewardOverviewResponseFromJson(
  Map<String, dynamic> json,
) {
  return _RewardOverviewResponse.fromJson(json);
}

/// @nodoc
mixin _$RewardOverviewResponse {
  bool get success => throw _privateConstructorUsedError;
  RewardOverview get data => throw _privateConstructorUsedError;

  /// Serializes this RewardOverviewResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardOverviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardOverviewResponseCopyWith<RewardOverviewResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardOverviewResponseCopyWith<$Res> {
  factory $RewardOverviewResponseCopyWith(
    RewardOverviewResponse value,
    $Res Function(RewardOverviewResponse) then,
  ) = _$RewardOverviewResponseCopyWithImpl<$Res, RewardOverviewResponse>;
  @useResult
  $Res call({bool success, RewardOverview data});

  $RewardOverviewCopyWith<$Res> get data;
}

/// @nodoc
class _$RewardOverviewResponseCopyWithImpl<
  $Res,
  $Val extends RewardOverviewResponse
>
    implements $RewardOverviewResponseCopyWith<$Res> {
  _$RewardOverviewResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardOverviewResponse
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
                      as RewardOverview,
          )
          as $Val,
    );
  }

  /// Create a copy of RewardOverviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardOverviewCopyWith<$Res> get data {
    return $RewardOverviewCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RewardOverviewResponseImplCopyWith<$Res>
    implements $RewardOverviewResponseCopyWith<$Res> {
  factory _$$RewardOverviewResponseImplCopyWith(
    _$RewardOverviewResponseImpl value,
    $Res Function(_$RewardOverviewResponseImpl) then,
  ) = __$$RewardOverviewResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, RewardOverview data});

  @override
  $RewardOverviewCopyWith<$Res> get data;
}

/// @nodoc
class __$$RewardOverviewResponseImplCopyWithImpl<$Res>
    extends
        _$RewardOverviewResponseCopyWithImpl<$Res, _$RewardOverviewResponseImpl>
    implements _$$RewardOverviewResponseImplCopyWith<$Res> {
  __$$RewardOverviewResponseImplCopyWithImpl(
    _$RewardOverviewResponseImpl _value,
    $Res Function(_$RewardOverviewResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RewardOverviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$RewardOverviewResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as RewardOverview,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardOverviewResponseImpl implements _RewardOverviewResponse {
  const _$RewardOverviewResponseImpl({
    required this.success,
    required this.data,
  });

  factory _$RewardOverviewResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardOverviewResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final RewardOverview data;

  @override
  String toString() {
    return 'RewardOverviewResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardOverviewResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of RewardOverviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardOverviewResponseImplCopyWith<_$RewardOverviewResponseImpl>
  get copyWith =>
      __$$RewardOverviewResponseImplCopyWithImpl<_$RewardOverviewResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardOverviewResponseImplToJson(this);
  }
}

abstract class _RewardOverviewResponse implements RewardOverviewResponse {
  const factory _RewardOverviewResponse({
    required final bool success,
    required final RewardOverview data,
  }) = _$RewardOverviewResponseImpl;

  factory _RewardOverviewResponse.fromJson(Map<String, dynamic> json) =
      _$RewardOverviewResponseImpl.fromJson;

  @override
  bool get success;
  @override
  RewardOverview get data;

  /// Create a copy of RewardOverviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardOverviewResponseImplCopyWith<_$RewardOverviewResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
