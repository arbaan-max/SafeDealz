// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chain_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChainResponse _$ChainResponseFromJson(Map<String, dynamic> json) {
  return _ChainResponse.fromJson(json);
}

/// @nodoc
mixin _$ChainResponse {
  bool get success => throw _privateConstructorUsedError;
  Chain get data => throw _privateConstructorUsedError;

  /// Serializes this ChainResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChainResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChainResponseCopyWith<ChainResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainResponseCopyWith<$Res> {
  factory $ChainResponseCopyWith(
    ChainResponse value,
    $Res Function(ChainResponse) then,
  ) = _$ChainResponseCopyWithImpl<$Res, ChainResponse>;
  @useResult
  $Res call({bool success, Chain data});

  $ChainCopyWith<$Res> get data;
}

/// @nodoc
class _$ChainResponseCopyWithImpl<$Res, $Val extends ChainResponse>
    implements $ChainResponseCopyWith<$Res> {
  _$ChainResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChainResponse
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
                      as Chain,
          )
          as $Val,
    );
  }

  /// Create a copy of ChainResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChainCopyWith<$Res> get data {
    return $ChainCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChainResponseImplCopyWith<$Res>
    implements $ChainResponseCopyWith<$Res> {
  factory _$$ChainResponseImplCopyWith(
    _$ChainResponseImpl value,
    $Res Function(_$ChainResponseImpl) then,
  ) = __$$ChainResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Chain data});

  @override
  $ChainCopyWith<$Res> get data;
}

/// @nodoc
class __$$ChainResponseImplCopyWithImpl<$Res>
    extends _$ChainResponseCopyWithImpl<$Res, _$ChainResponseImpl>
    implements _$$ChainResponseImplCopyWith<$Res> {
  __$$ChainResponseImplCopyWithImpl(
    _$ChainResponseImpl _value,
    $Res Function(_$ChainResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChainResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$ChainResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Chain,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChainResponseImpl implements _ChainResponse {
  const _$ChainResponseImpl({required this.success, required this.data});

  factory _$ChainResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChainResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Chain data;

  @override
  String toString() {
    return 'ChainResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of ChainResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainResponseImplCopyWith<_$ChainResponseImpl> get copyWith =>
      __$$ChainResponseImplCopyWithImpl<_$ChainResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChainResponseImplToJson(this);
  }
}

abstract class _ChainResponse implements ChainResponse {
  const factory _ChainResponse({
    required final bool success,
    required final Chain data,
  }) = _$ChainResponseImpl;

  factory _ChainResponse.fromJson(Map<String, dynamic> json) =
      _$ChainResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Chain get data;

  /// Create a copy of ChainResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChainResponseImplCopyWith<_$ChainResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
