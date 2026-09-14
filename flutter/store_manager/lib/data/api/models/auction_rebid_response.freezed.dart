// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_rebid_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuctionRebidResponse _$AuctionRebidResponseFromJson(Map<String, dynamic> json) {
  return _AuctionRebidResponse.fromJson(json);
}

/// @nodoc
mixin _$AuctionRebidResponse {
  bool get success => throw _privateConstructorUsedError;
  Data3 get data => throw _privateConstructorUsedError;

  /// Serializes this AuctionRebidResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionRebidResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionRebidResponseCopyWith<AuctionRebidResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionRebidResponseCopyWith<$Res> {
  factory $AuctionRebidResponseCopyWith(
    AuctionRebidResponse value,
    $Res Function(AuctionRebidResponse) then,
  ) = _$AuctionRebidResponseCopyWithImpl<$Res, AuctionRebidResponse>;
  @useResult
  $Res call({bool success, Data3 data});

  $Data3CopyWith<$Res> get data;
}

/// @nodoc
class _$AuctionRebidResponseCopyWithImpl<
  $Res,
  $Val extends AuctionRebidResponse
>
    implements $AuctionRebidResponseCopyWith<$Res> {
  _$AuctionRebidResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionRebidResponse
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
                      as Data3,
          )
          as $Val,
    );
  }

  /// Create a copy of AuctionRebidResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Data3CopyWith<$Res> get data {
    return $Data3CopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuctionRebidResponseImplCopyWith<$Res>
    implements $AuctionRebidResponseCopyWith<$Res> {
  factory _$$AuctionRebidResponseImplCopyWith(
    _$AuctionRebidResponseImpl value,
    $Res Function(_$AuctionRebidResponseImpl) then,
  ) = __$$AuctionRebidResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Data3 data});

  @override
  $Data3CopyWith<$Res> get data;
}

/// @nodoc
class __$$AuctionRebidResponseImplCopyWithImpl<$Res>
    extends _$AuctionRebidResponseCopyWithImpl<$Res, _$AuctionRebidResponseImpl>
    implements _$$AuctionRebidResponseImplCopyWith<$Res> {
  __$$AuctionRebidResponseImplCopyWithImpl(
    _$AuctionRebidResponseImpl _value,
    $Res Function(_$AuctionRebidResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionRebidResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$AuctionRebidResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Data3,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionRebidResponseImpl implements _AuctionRebidResponse {
  const _$AuctionRebidResponseImpl({required this.success, required this.data});

  factory _$AuctionRebidResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionRebidResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Data3 data;

  @override
  String toString() {
    return 'AuctionRebidResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionRebidResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of AuctionRebidResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionRebidResponseImplCopyWith<_$AuctionRebidResponseImpl>
  get copyWith =>
      __$$AuctionRebidResponseImplCopyWithImpl<_$AuctionRebidResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionRebidResponseImplToJson(this);
  }
}

abstract class _AuctionRebidResponse implements AuctionRebidResponse {
  const factory _AuctionRebidResponse({
    required final bool success,
    required final Data3 data,
  }) = _$AuctionRebidResponseImpl;

  factory _AuctionRebidResponse.fromJson(Map<String, dynamic> json) =
      _$AuctionRebidResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Data3 get data;

  /// Create a copy of AuctionRebidResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionRebidResponseImplCopyWith<_$AuctionRebidResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
