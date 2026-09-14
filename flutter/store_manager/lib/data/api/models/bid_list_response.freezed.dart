// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BidListResponse _$BidListResponseFromJson(Map<String, dynamic> json) {
  return _BidListResponse.fromJson(json);
}

/// @nodoc
mixin _$BidListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<Bid> get data => throw _privateConstructorUsedError;

  /// Serializes this BidListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidListResponseCopyWith<BidListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidListResponseCopyWith<$Res> {
  factory $BidListResponseCopyWith(
    BidListResponse value,
    $Res Function(BidListResponse) then,
  ) = _$BidListResponseCopyWithImpl<$Res, BidListResponse>;
  @useResult
  $Res call({bool success, List<Bid> data});
}

/// @nodoc
class _$BidListResponseCopyWithImpl<$Res, $Val extends BidListResponse>
    implements $BidListResponseCopyWith<$Res> {
  _$BidListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidListResponse
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
                      as List<Bid>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BidListResponseImplCopyWith<$Res>
    implements $BidListResponseCopyWith<$Res> {
  factory _$$BidListResponseImplCopyWith(
    _$BidListResponseImpl value,
    $Res Function(_$BidListResponseImpl) then,
  ) = __$$BidListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<Bid> data});
}

/// @nodoc
class __$$BidListResponseImplCopyWithImpl<$Res>
    extends _$BidListResponseCopyWithImpl<$Res, _$BidListResponseImpl>
    implements _$$BidListResponseImplCopyWith<$Res> {
  __$$BidListResponseImplCopyWithImpl(
    _$BidListResponseImpl _value,
    $Res Function(_$BidListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BidListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$BidListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<Bid>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BidListResponseImpl implements _BidListResponse {
  const _$BidListResponseImpl({
    required this.success,
    required final List<Bid> data,
  }) : _data = data;

  factory _$BidListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidListResponseImplFromJson(json);

  @override
  final bool success;
  final List<Bid> _data;
  @override
  List<Bid> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BidListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidListResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of BidListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidListResponseImplCopyWith<_$BidListResponseImpl> get copyWith =>
      __$$BidListResponseImplCopyWithImpl<_$BidListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BidListResponseImplToJson(this);
  }
}

abstract class _BidListResponse implements BidListResponse {
  const factory _BidListResponse({
    required final bool success,
    required final List<Bid> data,
  }) = _$BidListResponseImpl;

  factory _BidListResponse.fromJson(Map<String, dynamic> json) =
      _$BidListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<Bid> get data;

  /// Create a copy of BidListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidListResponseImplCopyWith<_$BidListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
