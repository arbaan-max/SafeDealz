// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_export_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReportExportResponse _$ReportExportResponseFromJson(Map<String, dynamic> json) {
  return _ReportExportResponse.fromJson(json);
}

/// @nodoc
mixin _$ReportExportResponse {
  bool get success => throw _privateConstructorUsedError;
  ReportExport get data => throw _privateConstructorUsedError;

  /// Serializes this ReportExportResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportExportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportExportResponseCopyWith<ReportExportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportExportResponseCopyWith<$Res> {
  factory $ReportExportResponseCopyWith(
    ReportExportResponse value,
    $Res Function(ReportExportResponse) then,
  ) = _$ReportExportResponseCopyWithImpl<$Res, ReportExportResponse>;
  @useResult
  $Res call({bool success, ReportExport data});

  $ReportExportCopyWith<$Res> get data;
}

/// @nodoc
class _$ReportExportResponseCopyWithImpl<
  $Res,
  $Val extends ReportExportResponse
>
    implements $ReportExportResponseCopyWith<$Res> {
  _$ReportExportResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportExportResponse
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
                      as ReportExport,
          )
          as $Val,
    );
  }

  /// Create a copy of ReportExportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReportExportCopyWith<$Res> get data {
    return $ReportExportCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReportExportResponseImplCopyWith<$Res>
    implements $ReportExportResponseCopyWith<$Res> {
  factory _$$ReportExportResponseImplCopyWith(
    _$ReportExportResponseImpl value,
    $Res Function(_$ReportExportResponseImpl) then,
  ) = __$$ReportExportResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, ReportExport data});

  @override
  $ReportExportCopyWith<$Res> get data;
}

/// @nodoc
class __$$ReportExportResponseImplCopyWithImpl<$Res>
    extends _$ReportExportResponseCopyWithImpl<$Res, _$ReportExportResponseImpl>
    implements _$$ReportExportResponseImplCopyWith<$Res> {
  __$$ReportExportResponseImplCopyWithImpl(
    _$ReportExportResponseImpl _value,
    $Res Function(_$ReportExportResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportExportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$ReportExportResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as ReportExport,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportExportResponseImpl implements _ReportExportResponse {
  const _$ReportExportResponseImpl({required this.success, required this.data});

  factory _$ReportExportResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportExportResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final ReportExport data;

  @override
  String toString() {
    return 'ReportExportResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportExportResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of ReportExportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportExportResponseImplCopyWith<_$ReportExportResponseImpl>
  get copyWith =>
      __$$ReportExportResponseImplCopyWithImpl<_$ReportExportResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportExportResponseImplToJson(this);
  }
}

abstract class _ReportExportResponse implements ReportExportResponse {
  const factory _ReportExportResponse({
    required final bool success,
    required final ReportExport data,
  }) = _$ReportExportResponseImpl;

  factory _ReportExportResponse.fromJson(Map<String, dynamic> json) =
      _$ReportExportResponseImpl.fromJson;

  @override
  bool get success;
  @override
  ReportExport get data;

  /// Create a copy of ReportExportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportExportResponseImplCopyWith<_$ReportExportResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
