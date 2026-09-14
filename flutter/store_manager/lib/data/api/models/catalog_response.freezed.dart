// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CatalogResponse _$CatalogResponseFromJson(Map<String, dynamic> json) {
  return _CatalogResponse.fromJson(json);
}

/// @nodoc
mixin _$CatalogResponse {
  bool get success => throw _privateConstructorUsedError;
  Catalog get data => throw _privateConstructorUsedError;

  /// Serializes this CatalogResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogResponseCopyWith<CatalogResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogResponseCopyWith<$Res> {
  factory $CatalogResponseCopyWith(
    CatalogResponse value,
    $Res Function(CatalogResponse) then,
  ) = _$CatalogResponseCopyWithImpl<$Res, CatalogResponse>;
  @useResult
  $Res call({bool success, Catalog data});

  $CatalogCopyWith<$Res> get data;
}

/// @nodoc
class _$CatalogResponseCopyWithImpl<$Res, $Val extends CatalogResponse>
    implements $CatalogResponseCopyWith<$Res> {
  _$CatalogResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogResponse
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
                      as Catalog,
          )
          as $Val,
    );
  }

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatalogCopyWith<$Res> get data {
    return $CatalogCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CatalogResponseImplCopyWith<$Res>
    implements $CatalogResponseCopyWith<$Res> {
  factory _$$CatalogResponseImplCopyWith(
    _$CatalogResponseImpl value,
    $Res Function(_$CatalogResponseImpl) then,
  ) = __$$CatalogResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Catalog data});

  @override
  $CatalogCopyWith<$Res> get data;
}

/// @nodoc
class __$$CatalogResponseImplCopyWithImpl<$Res>
    extends _$CatalogResponseCopyWithImpl<$Res, _$CatalogResponseImpl>
    implements _$$CatalogResponseImplCopyWith<$Res> {
  __$$CatalogResponseImplCopyWithImpl(
    _$CatalogResponseImpl _value,
    $Res Function(_$CatalogResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$CatalogResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Catalog,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogResponseImpl implements _CatalogResponse {
  const _$CatalogResponseImpl({required this.success, required this.data});

  factory _$CatalogResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Catalog data;

  @override
  String toString() {
    return 'CatalogResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogResponseImplCopyWith<_$CatalogResponseImpl> get copyWith =>
      __$$CatalogResponseImplCopyWithImpl<_$CatalogResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogResponseImplToJson(this);
  }
}

abstract class _CatalogResponse implements CatalogResponse {
  const factory _CatalogResponse({
    required final bool success,
    required final Catalog data,
  }) = _$CatalogResponseImpl;

  factory _CatalogResponse.fromJson(Map<String, dynamic> json) =
      _$CatalogResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Catalog get data;

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogResponseImplCopyWith<_$CatalogResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
