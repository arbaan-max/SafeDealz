// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_tick_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuctionTickResponse _$AuctionTickResponseFromJson(Map<String, dynamic> json) {
  return _AuctionTickResponse.fromJson(json);
}

/// @nodoc
mixin _$AuctionTickResponse {
  bool get success => throw _privateConstructorUsedError;
  Data6 get data => throw _privateConstructorUsedError;

  /// Serializes this AuctionTickResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionTickResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionTickResponseCopyWith<AuctionTickResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionTickResponseCopyWith<$Res> {
  factory $AuctionTickResponseCopyWith(
    AuctionTickResponse value,
    $Res Function(AuctionTickResponse) then,
  ) = _$AuctionTickResponseCopyWithImpl<$Res, AuctionTickResponse>;
  @useResult
  $Res call({bool success, Data6 data});

  $Data6CopyWith<$Res> get data;
}

/// @nodoc
class _$AuctionTickResponseCopyWithImpl<$Res, $Val extends AuctionTickResponse>
    implements $AuctionTickResponseCopyWith<$Res> {
  _$AuctionTickResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionTickResponse
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
                      as Data6,
          )
          as $Val,
    );
  }

  /// Create a copy of AuctionTickResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Data6CopyWith<$Res> get data {
    return $Data6CopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuctionTickResponseImplCopyWith<$Res>
    implements $AuctionTickResponseCopyWith<$Res> {
  factory _$$AuctionTickResponseImplCopyWith(
    _$AuctionTickResponseImpl value,
    $Res Function(_$AuctionTickResponseImpl) then,
  ) = __$$AuctionTickResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Data6 data});

  @override
  $Data6CopyWith<$Res> get data;
}

/// @nodoc
class __$$AuctionTickResponseImplCopyWithImpl<$Res>
    extends _$AuctionTickResponseCopyWithImpl<$Res, _$AuctionTickResponseImpl>
    implements _$$AuctionTickResponseImplCopyWith<$Res> {
  __$$AuctionTickResponseImplCopyWithImpl(
    _$AuctionTickResponseImpl _value,
    $Res Function(_$AuctionTickResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionTickResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$AuctionTickResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Data6,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionTickResponseImpl implements _AuctionTickResponse {
  const _$AuctionTickResponseImpl({required this.success, required this.data});

  factory _$AuctionTickResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionTickResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Data6 data;

  @override
  String toString() {
    return 'AuctionTickResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionTickResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of AuctionTickResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionTickResponseImplCopyWith<_$AuctionTickResponseImpl> get copyWith =>
      __$$AuctionTickResponseImplCopyWithImpl<_$AuctionTickResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionTickResponseImplToJson(this);
  }
}

abstract class _AuctionTickResponse implements AuctionTickResponse {
  const factory _AuctionTickResponse({
    required final bool success,
    required final Data6 data,
  }) = _$AuctionTickResponseImpl;

  factory _AuctionTickResponse.fromJson(Map<String, dynamic> json) =
      _$AuctionTickResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Data6 get data;

  /// Create a copy of AuctionTickResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionTickResponseImplCopyWith<_$AuctionTickResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
