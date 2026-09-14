// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuctionListResponse _$AuctionListResponseFromJson(Map<String, dynamic> json) {
  return _AuctionListResponse.fromJson(json);
}

/// @nodoc
mixin _$AuctionListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<AuctionRound> get data => throw _privateConstructorUsedError;

  /// Serializes this AuctionListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionListResponseCopyWith<AuctionListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionListResponseCopyWith<$Res> {
  factory $AuctionListResponseCopyWith(
    AuctionListResponse value,
    $Res Function(AuctionListResponse) then,
  ) = _$AuctionListResponseCopyWithImpl<$Res, AuctionListResponse>;
  @useResult
  $Res call({bool success, List<AuctionRound> data});
}

/// @nodoc
class _$AuctionListResponseCopyWithImpl<$Res, $Val extends AuctionListResponse>
    implements $AuctionListResponseCopyWith<$Res> {
  _$AuctionListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionListResponse
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
                      as List<AuctionRound>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuctionListResponseImplCopyWith<$Res>
    implements $AuctionListResponseCopyWith<$Res> {
  factory _$$AuctionListResponseImplCopyWith(
    _$AuctionListResponseImpl value,
    $Res Function(_$AuctionListResponseImpl) then,
  ) = __$$AuctionListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<AuctionRound> data});
}

/// @nodoc
class __$$AuctionListResponseImplCopyWithImpl<$Res>
    extends _$AuctionListResponseCopyWithImpl<$Res, _$AuctionListResponseImpl>
    implements _$$AuctionListResponseImplCopyWith<$Res> {
  __$$AuctionListResponseImplCopyWithImpl(
    _$AuctionListResponseImpl _value,
    $Res Function(_$AuctionListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$AuctionListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<AuctionRound>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionListResponseImpl implements _AuctionListResponse {
  const _$AuctionListResponseImpl({
    required this.success,
    required final List<AuctionRound> data,
  }) : _data = data;

  factory _$AuctionListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionListResponseImplFromJson(json);

  @override
  final bool success;
  final List<AuctionRound> _data;
  @override
  List<AuctionRound> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AuctionListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionListResponseImpl &&
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

  /// Create a copy of AuctionListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionListResponseImplCopyWith<_$AuctionListResponseImpl> get copyWith =>
      __$$AuctionListResponseImplCopyWithImpl<_$AuctionListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionListResponseImplToJson(this);
  }
}

abstract class _AuctionListResponse implements AuctionListResponse {
  const factory _AuctionListResponse({
    required final bool success,
    required final List<AuctionRound> data,
  }) = _$AuctionListResponseImpl;

  factory _AuctionListResponse.fromJson(Map<String, dynamic> json) =
      _$AuctionListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<AuctionRound> get data;

  /// Create a copy of AuctionListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionListResponseImplCopyWith<_$AuctionListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
