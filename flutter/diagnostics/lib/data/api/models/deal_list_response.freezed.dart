// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DealListResponse _$DealListResponseFromJson(Map<String, dynamic> json) {
  return _DealListResponse.fromJson(json);
}

/// @nodoc
mixin _$DealListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<Deal> get data => throw _privateConstructorUsedError;

  /// Serializes this DealListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DealListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DealListResponseCopyWith<DealListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealListResponseCopyWith<$Res> {
  factory $DealListResponseCopyWith(
    DealListResponse value,
    $Res Function(DealListResponse) then,
  ) = _$DealListResponseCopyWithImpl<$Res, DealListResponse>;
  @useResult
  $Res call({bool success, List<Deal> data});
}

/// @nodoc
class _$DealListResponseCopyWithImpl<$Res, $Val extends DealListResponse>
    implements $DealListResponseCopyWith<$Res> {
  _$DealListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DealListResponse
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
                      as List<Deal>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DealListResponseImplCopyWith<$Res>
    implements $DealListResponseCopyWith<$Res> {
  factory _$$DealListResponseImplCopyWith(
    _$DealListResponseImpl value,
    $Res Function(_$DealListResponseImpl) then,
  ) = __$$DealListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<Deal> data});
}

/// @nodoc
class __$$DealListResponseImplCopyWithImpl<$Res>
    extends _$DealListResponseCopyWithImpl<$Res, _$DealListResponseImpl>
    implements _$$DealListResponseImplCopyWith<$Res> {
  __$$DealListResponseImplCopyWithImpl(
    _$DealListResponseImpl _value,
    $Res Function(_$DealListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DealListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$DealListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<Deal>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DealListResponseImpl implements _DealListResponse {
  const _$DealListResponseImpl({
    required this.success,
    required final List<Deal> data,
  }) : _data = data;

  factory _$DealListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DealListResponseImplFromJson(json);

  @override
  final bool success;
  final List<Deal> _data;
  @override
  List<Deal> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DealListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DealListResponseImpl &&
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

  /// Create a copy of DealListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DealListResponseImplCopyWith<_$DealListResponseImpl> get copyWith =>
      __$$DealListResponseImplCopyWithImpl<_$DealListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DealListResponseImplToJson(this);
  }
}

abstract class _DealListResponse implements DealListResponse {
  const factory _DealListResponse({
    required final bool success,
    required final List<Deal> data,
  }) = _$DealListResponseImpl;

  factory _DealListResponse.fromJson(Map<String, dynamic> json) =
      _$DealListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<Deal> get data;

  /// Create a copy of DealListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DealListResponseImplCopyWith<_$DealListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
