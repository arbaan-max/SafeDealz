// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'performance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PerformanceResponse _$PerformanceResponseFromJson(Map<String, dynamic> json) {
  return _PerformanceResponse.fromJson(json);
}

/// @nodoc
mixin _$PerformanceResponse {
  bool get success => throw _privateConstructorUsedError;
  Performance get data => throw _privateConstructorUsedError;

  /// Serializes this PerformanceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PerformanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PerformanceResponseCopyWith<PerformanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformanceResponseCopyWith<$Res> {
  factory $PerformanceResponseCopyWith(
    PerformanceResponse value,
    $Res Function(PerformanceResponse) then,
  ) = _$PerformanceResponseCopyWithImpl<$Res, PerformanceResponse>;
  @useResult
  $Res call({bool success, Performance data});

  $PerformanceCopyWith<$Res> get data;
}

/// @nodoc
class _$PerformanceResponseCopyWithImpl<$Res, $Val extends PerformanceResponse>
    implements $PerformanceResponseCopyWith<$Res> {
  _$PerformanceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PerformanceResponse
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
                      as Performance,
          )
          as $Val,
    );
  }

  /// Create a copy of PerformanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PerformanceCopyWith<$Res> get data {
    return $PerformanceCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PerformanceResponseImplCopyWith<$Res>
    implements $PerformanceResponseCopyWith<$Res> {
  factory _$$PerformanceResponseImplCopyWith(
    _$PerformanceResponseImpl value,
    $Res Function(_$PerformanceResponseImpl) then,
  ) = __$$PerformanceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Performance data});

  @override
  $PerformanceCopyWith<$Res> get data;
}

/// @nodoc
class __$$PerformanceResponseImplCopyWithImpl<$Res>
    extends _$PerformanceResponseCopyWithImpl<$Res, _$PerformanceResponseImpl>
    implements _$$PerformanceResponseImplCopyWith<$Res> {
  __$$PerformanceResponseImplCopyWithImpl(
    _$PerformanceResponseImpl _value,
    $Res Function(_$PerformanceResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PerformanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$PerformanceResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Performance,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformanceResponseImpl implements _PerformanceResponse {
  const _$PerformanceResponseImpl({required this.success, required this.data});

  factory _$PerformanceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformanceResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Performance data;

  @override
  String toString() {
    return 'PerformanceResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformanceResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of PerformanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformanceResponseImplCopyWith<_$PerformanceResponseImpl> get copyWith =>
      __$$PerformanceResponseImplCopyWithImpl<_$PerformanceResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformanceResponseImplToJson(this);
  }
}

abstract class _PerformanceResponse implements PerformanceResponse {
  const factory _PerformanceResponse({
    required final bool success,
    required final Performance data,
  }) = _$PerformanceResponseImpl;

  factory _PerformanceResponse.fromJson(Map<String, dynamic> json) =
      _$PerformanceResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Performance get data;

  /// Create a copy of PerformanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PerformanceResponseImplCopyWith<_$PerformanceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
