// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chain_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChainListResponse _$ChainListResponseFromJson(Map<String, dynamic> json) {
  return _ChainListResponse.fromJson(json);
}

/// @nodoc
mixin _$ChainListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<Chain> get data => throw _privateConstructorUsedError;

  /// Serializes this ChainListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChainListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChainListResponseCopyWith<ChainListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainListResponseCopyWith<$Res> {
  factory $ChainListResponseCopyWith(
    ChainListResponse value,
    $Res Function(ChainListResponse) then,
  ) = _$ChainListResponseCopyWithImpl<$Res, ChainListResponse>;
  @useResult
  $Res call({bool success, List<Chain> data});
}

/// @nodoc
class _$ChainListResponseCopyWithImpl<$Res, $Val extends ChainListResponse>
    implements $ChainListResponseCopyWith<$Res> {
  _$ChainListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChainListResponse
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
                      as List<Chain>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChainListResponseImplCopyWith<$Res>
    implements $ChainListResponseCopyWith<$Res> {
  factory _$$ChainListResponseImplCopyWith(
    _$ChainListResponseImpl value,
    $Res Function(_$ChainListResponseImpl) then,
  ) = __$$ChainListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<Chain> data});
}

/// @nodoc
class __$$ChainListResponseImplCopyWithImpl<$Res>
    extends _$ChainListResponseCopyWithImpl<$Res, _$ChainListResponseImpl>
    implements _$$ChainListResponseImplCopyWith<$Res> {
  __$$ChainListResponseImplCopyWithImpl(
    _$ChainListResponseImpl _value,
    $Res Function(_$ChainListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChainListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$ChainListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<Chain>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChainListResponseImpl implements _ChainListResponse {
  const _$ChainListResponseImpl({
    required this.success,
    required final List<Chain> data,
  }) : _data = data;

  factory _$ChainListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChainListResponseImplFromJson(json);

  @override
  final bool success;
  final List<Chain> _data;
  @override
  List<Chain> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ChainListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainListResponseImpl &&
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

  /// Create a copy of ChainListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainListResponseImplCopyWith<_$ChainListResponseImpl> get copyWith =>
      __$$ChainListResponseImplCopyWithImpl<_$ChainListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChainListResponseImplToJson(this);
  }
}

abstract class _ChainListResponse implements ChainListResponse {
  const factory _ChainListResponse({
    required final bool success,
    required final List<Chain> data,
  }) = _$ChainListResponseImpl;

  factory _ChainListResponse.fromJson(Map<String, dynamic> json) =
      _$ChainListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<Chain> get data;

  /// Create a copy of ChainListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChainListResponseImplCopyWith<_$ChainListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
