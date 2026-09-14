// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnostic_import_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DiagnosticImportResponse _$DiagnosticImportResponseFromJson(
  Map<String, dynamic> json,
) {
  return _DiagnosticImportResponse.fromJson(json);
}

/// @nodoc
mixin _$DiagnosticImportResponse {
  bool get success => throw _privateConstructorUsedError;
  Data10 get data => throw _privateConstructorUsedError;

  /// Serializes this DiagnosticImportResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiagnosticImportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiagnosticImportResponseCopyWith<DiagnosticImportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosticImportResponseCopyWith<$Res> {
  factory $DiagnosticImportResponseCopyWith(
    DiagnosticImportResponse value,
    $Res Function(DiagnosticImportResponse) then,
  ) = _$DiagnosticImportResponseCopyWithImpl<$Res, DiagnosticImportResponse>;
  @useResult
  $Res call({bool success, Data10 data});

  $Data10CopyWith<$Res> get data;
}

/// @nodoc
class _$DiagnosticImportResponseCopyWithImpl<
  $Res,
  $Val extends DiagnosticImportResponse
>
    implements $DiagnosticImportResponseCopyWith<$Res> {
  _$DiagnosticImportResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiagnosticImportResponse
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
                      as Data10,
          )
          as $Val,
    );
  }

  /// Create a copy of DiagnosticImportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Data10CopyWith<$Res> get data {
    return $Data10CopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DiagnosticImportResponseImplCopyWith<$Res>
    implements $DiagnosticImportResponseCopyWith<$Res> {
  factory _$$DiagnosticImportResponseImplCopyWith(
    _$DiagnosticImportResponseImpl value,
    $Res Function(_$DiagnosticImportResponseImpl) then,
  ) = __$$DiagnosticImportResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Data10 data});

  @override
  $Data10CopyWith<$Res> get data;
}

/// @nodoc
class __$$DiagnosticImportResponseImplCopyWithImpl<$Res>
    extends
        _$DiagnosticImportResponseCopyWithImpl<
          $Res,
          _$DiagnosticImportResponseImpl
        >
    implements _$$DiagnosticImportResponseImplCopyWith<$Res> {
  __$$DiagnosticImportResponseImplCopyWithImpl(
    _$DiagnosticImportResponseImpl _value,
    $Res Function(_$DiagnosticImportResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DiagnosticImportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$DiagnosticImportResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Data10,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DiagnosticImportResponseImpl implements _DiagnosticImportResponse {
  const _$DiagnosticImportResponseImpl({
    required this.success,
    required this.data,
  });

  factory _$DiagnosticImportResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiagnosticImportResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Data10 data;

  @override
  String toString() {
    return 'DiagnosticImportResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiagnosticImportResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of DiagnosticImportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiagnosticImportResponseImplCopyWith<_$DiagnosticImportResponseImpl>
  get copyWith =>
      __$$DiagnosticImportResponseImplCopyWithImpl<
        _$DiagnosticImportResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiagnosticImportResponseImplToJson(this);
  }
}

abstract class _DiagnosticImportResponse implements DiagnosticImportResponse {
  const factory _DiagnosticImportResponse({
    required final bool success,
    required final Data10 data,
  }) = _$DiagnosticImportResponseImpl;

  factory _DiagnosticImportResponse.fromJson(Map<String, dynamic> json) =
      _$DiagnosticImportResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Data10 get data;

  /// Create a copy of DiagnosticImportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiagnosticImportResponseImplCopyWith<_$DiagnosticImportResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
