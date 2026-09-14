// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_policy_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RewardPolicyResponse _$RewardPolicyResponseFromJson(Map<String, dynamic> json) {
  return _RewardPolicyResponse.fromJson(json);
}

/// @nodoc
mixin _$RewardPolicyResponse {
  bool get success => throw _privateConstructorUsedError;
  Data4 get data => throw _privateConstructorUsedError;

  /// Serializes this RewardPolicyResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardPolicyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardPolicyResponseCopyWith<RewardPolicyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardPolicyResponseCopyWith<$Res> {
  factory $RewardPolicyResponseCopyWith(
    RewardPolicyResponse value,
    $Res Function(RewardPolicyResponse) then,
  ) = _$RewardPolicyResponseCopyWithImpl<$Res, RewardPolicyResponse>;
  @useResult
  $Res call({bool success, Data4 data});

  $Data4CopyWith<$Res> get data;
}

/// @nodoc
class _$RewardPolicyResponseCopyWithImpl<
  $Res,
  $Val extends RewardPolicyResponse
>
    implements $RewardPolicyResponseCopyWith<$Res> {
  _$RewardPolicyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardPolicyResponse
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
                      as Data4,
          )
          as $Val,
    );
  }

  /// Create a copy of RewardPolicyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Data4CopyWith<$Res> get data {
    return $Data4CopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RewardPolicyResponseImplCopyWith<$Res>
    implements $RewardPolicyResponseCopyWith<$Res> {
  factory _$$RewardPolicyResponseImplCopyWith(
    _$RewardPolicyResponseImpl value,
    $Res Function(_$RewardPolicyResponseImpl) then,
  ) = __$$RewardPolicyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Data4 data});

  @override
  $Data4CopyWith<$Res> get data;
}

/// @nodoc
class __$$RewardPolicyResponseImplCopyWithImpl<$Res>
    extends _$RewardPolicyResponseCopyWithImpl<$Res, _$RewardPolicyResponseImpl>
    implements _$$RewardPolicyResponseImplCopyWith<$Res> {
  __$$RewardPolicyResponseImplCopyWithImpl(
    _$RewardPolicyResponseImpl _value,
    $Res Function(_$RewardPolicyResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RewardPolicyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$RewardPolicyResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Data4,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardPolicyResponseImpl implements _RewardPolicyResponse {
  const _$RewardPolicyResponseImpl({required this.success, required this.data});

  factory _$RewardPolicyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardPolicyResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Data4 data;

  @override
  String toString() {
    return 'RewardPolicyResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardPolicyResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of RewardPolicyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardPolicyResponseImplCopyWith<_$RewardPolicyResponseImpl>
  get copyWith =>
      __$$RewardPolicyResponseImplCopyWithImpl<_$RewardPolicyResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardPolicyResponseImplToJson(this);
  }
}

abstract class _RewardPolicyResponse implements RewardPolicyResponse {
  const factory _RewardPolicyResponse({
    required final bool success,
    required final Data4 data,
  }) = _$RewardPolicyResponseImpl;

  factory _RewardPolicyResponse.fromJson(Map<String, dynamic> json) =
      _$RewardPolicyResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Data4 get data;

  /// Create a copy of RewardPolicyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardPolicyResponseImplCopyWith<_$RewardPolicyResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
