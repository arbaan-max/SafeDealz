// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_move_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WalletMoveResponse _$WalletMoveResponseFromJson(Map<String, dynamic> json) {
  return _WalletMoveResponse.fromJson(json);
}

/// @nodoc
mixin _$WalletMoveResponse {
  bool get success => throw _privateConstructorUsedError;
  Data2 get data => throw _privateConstructorUsedError;

  /// Serializes this WalletMoveResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletMoveResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletMoveResponseCopyWith<WalletMoveResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletMoveResponseCopyWith<$Res> {
  factory $WalletMoveResponseCopyWith(
    WalletMoveResponse value,
    $Res Function(WalletMoveResponse) then,
  ) = _$WalletMoveResponseCopyWithImpl<$Res, WalletMoveResponse>;
  @useResult
  $Res call({bool success, Data2 data});

  $Data2CopyWith<$Res> get data;
}

/// @nodoc
class _$WalletMoveResponseCopyWithImpl<$Res, $Val extends WalletMoveResponse>
    implements $WalletMoveResponseCopyWith<$Res> {
  _$WalletMoveResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletMoveResponse
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
                      as Data2,
          )
          as $Val,
    );
  }

  /// Create a copy of WalletMoveResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Data2CopyWith<$Res> get data {
    return $Data2CopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletMoveResponseImplCopyWith<$Res>
    implements $WalletMoveResponseCopyWith<$Res> {
  factory _$$WalletMoveResponseImplCopyWith(
    _$WalletMoveResponseImpl value,
    $Res Function(_$WalletMoveResponseImpl) then,
  ) = __$$WalletMoveResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Data2 data});

  @override
  $Data2CopyWith<$Res> get data;
}

/// @nodoc
class __$$WalletMoveResponseImplCopyWithImpl<$Res>
    extends _$WalletMoveResponseCopyWithImpl<$Res, _$WalletMoveResponseImpl>
    implements _$$WalletMoveResponseImplCopyWith<$Res> {
  __$$WalletMoveResponseImplCopyWithImpl(
    _$WalletMoveResponseImpl _value,
    $Res Function(_$WalletMoveResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalletMoveResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$WalletMoveResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Data2,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletMoveResponseImpl implements _WalletMoveResponse {
  const _$WalletMoveResponseImpl({required this.success, required this.data});

  factory _$WalletMoveResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletMoveResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Data2 data;

  @override
  String toString() {
    return 'WalletMoveResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletMoveResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of WalletMoveResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletMoveResponseImplCopyWith<_$WalletMoveResponseImpl> get copyWith =>
      __$$WalletMoveResponseImplCopyWithImpl<_$WalletMoveResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletMoveResponseImplToJson(this);
  }
}

abstract class _WalletMoveResponse implements WalletMoveResponse {
  const factory _WalletMoveResponse({
    required final bool success,
    required final Data2 data,
  }) = _$WalletMoveResponseImpl;

  factory _WalletMoveResponse.fromJson(Map<String, dynamic> json) =
      _$WalletMoveResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Data2 get data;

  /// Create a copy of WalletMoveResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletMoveResponseImplCopyWith<_$WalletMoveResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
