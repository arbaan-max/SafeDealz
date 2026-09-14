// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuctionResponse _$AuctionResponseFromJson(Map<String, dynamic> json) {
  return _AuctionResponse.fromJson(json);
}

/// @nodoc
mixin _$AuctionResponse {
  bool get success => throw _privateConstructorUsedError;
  AuctionRound get data => throw _privateConstructorUsedError;

  /// Serializes this AuctionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionResponseCopyWith<AuctionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionResponseCopyWith<$Res> {
  factory $AuctionResponseCopyWith(
    AuctionResponse value,
    $Res Function(AuctionResponse) then,
  ) = _$AuctionResponseCopyWithImpl<$Res, AuctionResponse>;
  @useResult
  $Res call({bool success, AuctionRound data});

  $AuctionRoundCopyWith<$Res> get data;
}

/// @nodoc
class _$AuctionResponseCopyWithImpl<$Res, $Val extends AuctionResponse>
    implements $AuctionResponseCopyWith<$Res> {
  _$AuctionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionResponse
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
                      as AuctionRound,
          )
          as $Val,
    );
  }

  /// Create a copy of AuctionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuctionRoundCopyWith<$Res> get data {
    return $AuctionRoundCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuctionResponseImplCopyWith<$Res>
    implements $AuctionResponseCopyWith<$Res> {
  factory _$$AuctionResponseImplCopyWith(
    _$AuctionResponseImpl value,
    $Res Function(_$AuctionResponseImpl) then,
  ) = __$$AuctionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, AuctionRound data});

  @override
  $AuctionRoundCopyWith<$Res> get data;
}

/// @nodoc
class __$$AuctionResponseImplCopyWithImpl<$Res>
    extends _$AuctionResponseCopyWithImpl<$Res, _$AuctionResponseImpl>
    implements _$$AuctionResponseImplCopyWith<$Res> {
  __$$AuctionResponseImplCopyWithImpl(
    _$AuctionResponseImpl _value,
    $Res Function(_$AuctionResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$AuctionResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as AuctionRound,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionResponseImpl implements _AuctionResponse {
  const _$AuctionResponseImpl({required this.success, required this.data});

  factory _$AuctionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final AuctionRound data;

  @override
  String toString() {
    return 'AuctionResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of AuctionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionResponseImplCopyWith<_$AuctionResponseImpl> get copyWith =>
      __$$AuctionResponseImplCopyWithImpl<_$AuctionResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionResponseImplToJson(this);
  }
}

abstract class _AuctionResponse implements AuctionResponse {
  const factory _AuctionResponse({
    required final bool success,
    required final AuctionRound data,
  }) = _$AuctionResponseImpl;

  factory _AuctionResponse.fromJson(Map<String, dynamic> json) =
      _$AuctionResponseImpl.fromJson;

  @override
  bool get success;
  @override
  AuctionRound get data;

  /// Create a copy of AuctionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionResponseImplCopyWith<_$AuctionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
