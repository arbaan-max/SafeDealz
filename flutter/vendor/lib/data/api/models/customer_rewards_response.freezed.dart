// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_rewards_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerRewardsResponse _$CustomerRewardsResponseFromJson(
  Map<String, dynamic> json,
) {
  return _CustomerRewardsResponse.fromJson(json);
}

/// @nodoc
mixin _$CustomerRewardsResponse {
  bool get success => throw _privateConstructorUsedError;
  CustomerRewards get data => throw _privateConstructorUsedError;

  /// Serializes this CustomerRewardsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerRewardsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerRewardsResponseCopyWith<CustomerRewardsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerRewardsResponseCopyWith<$Res> {
  factory $CustomerRewardsResponseCopyWith(
    CustomerRewardsResponse value,
    $Res Function(CustomerRewardsResponse) then,
  ) = _$CustomerRewardsResponseCopyWithImpl<$Res, CustomerRewardsResponse>;
  @useResult
  $Res call({bool success, CustomerRewards data});

  $CustomerRewardsCopyWith<$Res> get data;
}

/// @nodoc
class _$CustomerRewardsResponseCopyWithImpl<
  $Res,
  $Val extends CustomerRewardsResponse
>
    implements $CustomerRewardsResponseCopyWith<$Res> {
  _$CustomerRewardsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerRewardsResponse
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
                      as CustomerRewards,
          )
          as $Val,
    );
  }

  /// Create a copy of CustomerRewardsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerRewardsCopyWith<$Res> get data {
    return $CustomerRewardsCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerRewardsResponseImplCopyWith<$Res>
    implements $CustomerRewardsResponseCopyWith<$Res> {
  factory _$$CustomerRewardsResponseImplCopyWith(
    _$CustomerRewardsResponseImpl value,
    $Res Function(_$CustomerRewardsResponseImpl) then,
  ) = __$$CustomerRewardsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, CustomerRewards data});

  @override
  $CustomerRewardsCopyWith<$Res> get data;
}

/// @nodoc
class __$$CustomerRewardsResponseImplCopyWithImpl<$Res>
    extends
        _$CustomerRewardsResponseCopyWithImpl<
          $Res,
          _$CustomerRewardsResponseImpl
        >
    implements _$$CustomerRewardsResponseImplCopyWith<$Res> {
  __$$CustomerRewardsResponseImplCopyWithImpl(
    _$CustomerRewardsResponseImpl _value,
    $Res Function(_$CustomerRewardsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerRewardsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$CustomerRewardsResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as CustomerRewards,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerRewardsResponseImpl implements _CustomerRewardsResponse {
  const _$CustomerRewardsResponseImpl({
    required this.success,
    required this.data,
  });

  factory _$CustomerRewardsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerRewardsResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final CustomerRewards data;

  @override
  String toString() {
    return 'CustomerRewardsResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerRewardsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of CustomerRewardsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerRewardsResponseImplCopyWith<_$CustomerRewardsResponseImpl>
  get copyWith =>
      __$$CustomerRewardsResponseImplCopyWithImpl<
        _$CustomerRewardsResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerRewardsResponseImplToJson(this);
  }
}

abstract class _CustomerRewardsResponse implements CustomerRewardsResponse {
  const factory _CustomerRewardsResponse({
    required final bool success,
    required final CustomerRewards data,
  }) = _$CustomerRewardsResponseImpl;

  factory _CustomerRewardsResponse.fromJson(Map<String, dynamic> json) =
      _$CustomerRewardsResponseImpl.fromJson;

  @override
  bool get success;
  @override
  CustomerRewards get data;

  /// Create a copy of CustomerRewardsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerRewardsResponseImplCopyWith<_$CustomerRewardsResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
