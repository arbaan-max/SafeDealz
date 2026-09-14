// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReportResponse _$ReportResponseFromJson(Map<String, dynamic> json) {
  return _ReportResponse.fromJson(json);
}

/// @nodoc
mixin _$ReportResponse {
  bool get success => throw _privateConstructorUsedError;
  Report get data => throw _privateConstructorUsedError;

  /// Serializes this ReportResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportResponseCopyWith<ReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportResponseCopyWith<$Res> {
  factory $ReportResponseCopyWith(
    ReportResponse value,
    $Res Function(ReportResponse) then,
  ) = _$ReportResponseCopyWithImpl<$Res, ReportResponse>;
  @useResult
  $Res call({bool success, Report data});

  $ReportCopyWith<$Res> get data;
}

/// @nodoc
class _$ReportResponseCopyWithImpl<$Res, $Val extends ReportResponse>
    implements $ReportResponseCopyWith<$Res> {
  _$ReportResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportResponse
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
                      as Report,
          )
          as $Val,
    );
  }

  /// Create a copy of ReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReportCopyWith<$Res> get data {
    return $ReportCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReportResponseImplCopyWith<$Res>
    implements $ReportResponseCopyWith<$Res> {
  factory _$$ReportResponseImplCopyWith(
    _$ReportResponseImpl value,
    $Res Function(_$ReportResponseImpl) then,
  ) = __$$ReportResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Report data});

  @override
  $ReportCopyWith<$Res> get data;
}

/// @nodoc
class __$$ReportResponseImplCopyWithImpl<$Res>
    extends _$ReportResponseCopyWithImpl<$Res, _$ReportResponseImpl>
    implements _$$ReportResponseImplCopyWith<$Res> {
  __$$ReportResponseImplCopyWithImpl(
    _$ReportResponseImpl _value,
    $Res Function(_$ReportResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$ReportResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Report,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportResponseImpl implements _ReportResponse {
  const _$ReportResponseImpl({required this.success, required this.data});

  factory _$ReportResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Report data;

  @override
  String toString() {
    return 'ReportResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of ReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportResponseImplCopyWith<_$ReportResponseImpl> get copyWith =>
      __$$ReportResponseImplCopyWithImpl<_$ReportResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportResponseImplToJson(this);
  }
}

abstract class _ReportResponse implements ReportResponse {
  const factory _ReportResponse({
    required final bool success,
    required final Report data,
  }) = _$ReportResponseImpl;

  factory _ReportResponse.fromJson(Map<String, dynamic> json) =
      _$ReportResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Report get data;

  /// Create a copy of ReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportResponseImplCopyWith<_$ReportResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
