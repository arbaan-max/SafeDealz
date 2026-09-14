// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redemption_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RedemptionListResponse _$RedemptionListResponseFromJson(
  Map<String, dynamic> json,
) {
  return _RedemptionListResponse.fromJson(json);
}

/// @nodoc
mixin _$RedemptionListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<Redemption> get data => throw _privateConstructorUsedError;

  /// Serializes this RedemptionListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RedemptionListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RedemptionListResponseCopyWith<RedemptionListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedemptionListResponseCopyWith<$Res> {
  factory $RedemptionListResponseCopyWith(
    RedemptionListResponse value,
    $Res Function(RedemptionListResponse) then,
  ) = _$RedemptionListResponseCopyWithImpl<$Res, RedemptionListResponse>;
  @useResult
  $Res call({bool success, List<Redemption> data});
}

/// @nodoc
class _$RedemptionListResponseCopyWithImpl<
  $Res,
  $Val extends RedemptionListResponse
>
    implements $RedemptionListResponseCopyWith<$Res> {
  _$RedemptionListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RedemptionListResponse
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
                      as List<Redemption>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RedemptionListResponseImplCopyWith<$Res>
    implements $RedemptionListResponseCopyWith<$Res> {
  factory _$$RedemptionListResponseImplCopyWith(
    _$RedemptionListResponseImpl value,
    $Res Function(_$RedemptionListResponseImpl) then,
  ) = __$$RedemptionListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<Redemption> data});
}

/// @nodoc
class __$$RedemptionListResponseImplCopyWithImpl<$Res>
    extends
        _$RedemptionListResponseCopyWithImpl<$Res, _$RedemptionListResponseImpl>
    implements _$$RedemptionListResponseImplCopyWith<$Res> {
  __$$RedemptionListResponseImplCopyWithImpl(
    _$RedemptionListResponseImpl _value,
    $Res Function(_$RedemptionListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RedemptionListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$RedemptionListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<Redemption>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RedemptionListResponseImpl implements _RedemptionListResponse {
  const _$RedemptionListResponseImpl({
    required this.success,
    required final List<Redemption> data,
  }) : _data = data;

  factory _$RedemptionListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedemptionListResponseImplFromJson(json);

  @override
  final bool success;
  final List<Redemption> _data;
  @override
  List<Redemption> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'RedemptionListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedemptionListResponseImpl &&
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

  /// Create a copy of RedemptionListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedemptionListResponseImplCopyWith<_$RedemptionListResponseImpl>
  get copyWith =>
      __$$RedemptionListResponseImplCopyWithImpl<_$RedemptionListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RedemptionListResponseImplToJson(this);
  }
}

abstract class _RedemptionListResponse implements RedemptionListResponse {
  const factory _RedemptionListResponse({
    required final bool success,
    required final List<Redemption> data,
  }) = _$RedemptionListResponseImpl;

  factory _RedemptionListResponse.fromJson(Map<String, dynamic> json) =
      _$RedemptionListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<Redemption> get data;

  /// Create a copy of RedemptionListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedemptionListResponseImplCopyWith<_$RedemptionListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
