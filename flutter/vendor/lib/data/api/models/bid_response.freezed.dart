// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BidResponse _$BidResponseFromJson(Map<String, dynamic> json) {
  return _BidResponse.fromJson(json);
}

/// @nodoc
mixin _$BidResponse {
  bool get success => throw _privateConstructorUsedError;
  Bid get data => throw _privateConstructorUsedError;

  /// Serializes this BidResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidResponseCopyWith<BidResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidResponseCopyWith<$Res> {
  factory $BidResponseCopyWith(
    BidResponse value,
    $Res Function(BidResponse) then,
  ) = _$BidResponseCopyWithImpl<$Res, BidResponse>;
  @useResult
  $Res call({bool success, Bid data});

  $BidCopyWith<$Res> get data;
}

/// @nodoc
class _$BidResponseCopyWithImpl<$Res, $Val extends BidResponse>
    implements $BidResponseCopyWith<$Res> {
  _$BidResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidResponse
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
                      as Bid,
          )
          as $Val,
    );
  }

  /// Create a copy of BidResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BidCopyWith<$Res> get data {
    return $BidCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BidResponseImplCopyWith<$Res>
    implements $BidResponseCopyWith<$Res> {
  factory _$$BidResponseImplCopyWith(
    _$BidResponseImpl value,
    $Res Function(_$BidResponseImpl) then,
  ) = __$$BidResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Bid data});

  @override
  $BidCopyWith<$Res> get data;
}

/// @nodoc
class __$$BidResponseImplCopyWithImpl<$Res>
    extends _$BidResponseCopyWithImpl<$Res, _$BidResponseImpl>
    implements _$$BidResponseImplCopyWith<$Res> {
  __$$BidResponseImplCopyWithImpl(
    _$BidResponseImpl _value,
    $Res Function(_$BidResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BidResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$BidResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Bid,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BidResponseImpl implements _BidResponse {
  const _$BidResponseImpl({required this.success, required this.data});

  factory _$BidResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Bid data;

  @override
  String toString() {
    return 'BidResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of BidResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidResponseImplCopyWith<_$BidResponseImpl> get copyWith =>
      __$$BidResponseImplCopyWithImpl<_$BidResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidResponseImplToJson(this);
  }
}

abstract class _BidResponse implements BidResponse {
  const factory _BidResponse({
    required final bool success,
    required final Bid data,
  }) = _$BidResponseImpl;

  factory _BidResponse.fromJson(Map<String, dynamic> json) =
      _$BidResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Bid get data;

  /// Create a copy of BidResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidResponseImplCopyWith<_$BidResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
