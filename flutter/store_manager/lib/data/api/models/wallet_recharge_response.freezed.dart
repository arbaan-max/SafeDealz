// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_recharge_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WalletRechargeResponse _$WalletRechargeResponseFromJson(
  Map<String, dynamic> json,
) {
  return _WalletRechargeResponse.fromJson(json);
}

/// @nodoc
mixin _$WalletRechargeResponse {
  bool get success => throw _privateConstructorUsedError;
  WalletRecharge get data => throw _privateConstructorUsedError;

  /// Serializes this WalletRechargeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletRechargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletRechargeResponseCopyWith<WalletRechargeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletRechargeResponseCopyWith<$Res> {
  factory $WalletRechargeResponseCopyWith(
    WalletRechargeResponse value,
    $Res Function(WalletRechargeResponse) then,
  ) = _$WalletRechargeResponseCopyWithImpl<$Res, WalletRechargeResponse>;
  @useResult
  $Res call({bool success, WalletRecharge data});

  $WalletRechargeCopyWith<$Res> get data;
}

/// @nodoc
class _$WalletRechargeResponseCopyWithImpl<
  $Res,
  $Val extends WalletRechargeResponse
>
    implements $WalletRechargeResponseCopyWith<$Res> {
  _$WalletRechargeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletRechargeResponse
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
                      as WalletRecharge,
          )
          as $Val,
    );
  }

  /// Create a copy of WalletRechargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletRechargeCopyWith<$Res> get data {
    return $WalletRechargeCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletRechargeResponseImplCopyWith<$Res>
    implements $WalletRechargeResponseCopyWith<$Res> {
  factory _$$WalletRechargeResponseImplCopyWith(
    _$WalletRechargeResponseImpl value,
    $Res Function(_$WalletRechargeResponseImpl) then,
  ) = __$$WalletRechargeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, WalletRecharge data});

  @override
  $WalletRechargeCopyWith<$Res> get data;
}

/// @nodoc
class __$$WalletRechargeResponseImplCopyWithImpl<$Res>
    extends
        _$WalletRechargeResponseCopyWithImpl<$Res, _$WalletRechargeResponseImpl>
    implements _$$WalletRechargeResponseImplCopyWith<$Res> {
  __$$WalletRechargeResponseImplCopyWithImpl(
    _$WalletRechargeResponseImpl _value,
    $Res Function(_$WalletRechargeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalletRechargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$WalletRechargeResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as WalletRecharge,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletRechargeResponseImpl implements _WalletRechargeResponse {
  const _$WalletRechargeResponseImpl({
    required this.success,
    required this.data,
  });

  factory _$WalletRechargeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletRechargeResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final WalletRecharge data;

  @override
  String toString() {
    return 'WalletRechargeResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletRechargeResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of WalletRechargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletRechargeResponseImplCopyWith<_$WalletRechargeResponseImpl>
  get copyWith =>
      __$$WalletRechargeResponseImplCopyWithImpl<_$WalletRechargeResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletRechargeResponseImplToJson(this);
  }
}

abstract class _WalletRechargeResponse implements WalletRechargeResponse {
  const factory _WalletRechargeResponse({
    required final bool success,
    required final WalletRecharge data,
  }) = _$WalletRechargeResponseImpl;

  factory _WalletRechargeResponse.fromJson(Map<String, dynamic> json) =
      _$WalletRechargeResponseImpl.fromJson;

  @override
  bool get success;
  @override
  WalletRecharge get data;

  /// Create a copy of WalletRechargeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletRechargeResponseImplCopyWith<_$WalletRechargeResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
