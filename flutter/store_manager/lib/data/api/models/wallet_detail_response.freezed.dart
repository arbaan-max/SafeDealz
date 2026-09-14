// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WalletDetailResponse _$WalletDetailResponseFromJson(Map<String, dynamic> json) {
  return _WalletDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$WalletDetailResponse {
  bool get success => throw _privateConstructorUsedError;
  WalletDetail get data => throw _privateConstructorUsedError;

  /// Serializes this WalletDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletDetailResponseCopyWith<WalletDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDetailResponseCopyWith<$Res> {
  factory $WalletDetailResponseCopyWith(
    WalletDetailResponse value,
    $Res Function(WalletDetailResponse) then,
  ) = _$WalletDetailResponseCopyWithImpl<$Res, WalletDetailResponse>;
  @useResult
  $Res call({bool success, WalletDetail data});

  $WalletDetailCopyWith<$Res> get data;
}

/// @nodoc
class _$WalletDetailResponseCopyWithImpl<
  $Res,
  $Val extends WalletDetailResponse
>
    implements $WalletDetailResponseCopyWith<$Res> {
  _$WalletDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletDetailResponse
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
                      as WalletDetail,
          )
          as $Val,
    );
  }

  /// Create a copy of WalletDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletDetailCopyWith<$Res> get data {
    return $WalletDetailCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletDetailResponseImplCopyWith<$Res>
    implements $WalletDetailResponseCopyWith<$Res> {
  factory _$$WalletDetailResponseImplCopyWith(
    _$WalletDetailResponseImpl value,
    $Res Function(_$WalletDetailResponseImpl) then,
  ) = __$$WalletDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, WalletDetail data});

  @override
  $WalletDetailCopyWith<$Res> get data;
}

/// @nodoc
class __$$WalletDetailResponseImplCopyWithImpl<$Res>
    extends _$WalletDetailResponseCopyWithImpl<$Res, _$WalletDetailResponseImpl>
    implements _$$WalletDetailResponseImplCopyWith<$Res> {
  __$$WalletDetailResponseImplCopyWithImpl(
    _$WalletDetailResponseImpl _value,
    $Res Function(_$WalletDetailResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalletDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$WalletDetailResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as WalletDetail,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletDetailResponseImpl implements _WalletDetailResponse {
  const _$WalletDetailResponseImpl({required this.success, required this.data});

  factory _$WalletDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletDetailResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final WalletDetail data;

  @override
  String toString() {
    return 'WalletDetailResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletDetailResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of WalletDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletDetailResponseImplCopyWith<_$WalletDetailResponseImpl>
  get copyWith =>
      __$$WalletDetailResponseImplCopyWithImpl<_$WalletDetailResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletDetailResponseImplToJson(this);
  }
}

abstract class _WalletDetailResponse implements WalletDetailResponse {
  const factory _WalletDetailResponse({
    required final bool success,
    required final WalletDetail data,
  }) = _$WalletDetailResponseImpl;

  factory _WalletDetailResponse.fromJson(Map<String, dynamic> json) =
      _$WalletDetailResponseImpl.fromJson;

  @override
  bool get success;
  @override
  WalletDetail get data;

  /// Create a copy of WalletDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletDetailResponseImplCopyWith<_$WalletDetailResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
